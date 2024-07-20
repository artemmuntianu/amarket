using AMarket.Data;
using AMarket.Data.FileStorage;
using AMarket.WebAPI.Infrastructure;
using AMarket.WebAPI.Models;
using System;
using System.Collections.Concurrent;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;

namespace AMarket.WebAPI.Controllers
{
    public class UserController : ApiController
    {
        private static ConcurrentDictionary<string, string> notConfirmedEmails = new ConcurrentDictionary<string, string>();

        public class ConfirmEmailRequest
        {
            public string Email;
        }

        public class ConfirmEmailResponse
        {
            public string Code;
        }

        public class SignupRequest
        {
            public string UniqueId;
            public string Email;
            public string SecurityCode;
            public string Password;
            public string RoleName;
            public string SecretWord;
            public string Username;
            public string CompanyName;
        }

        public class LoginRequest
        {
            public string UniqueId;
            public string Email;
            public string Password;
            public string RoleName;
        }

        public class LoginResponse
        {
            public string Guid;
            public UserModel User;
        }

        public class GetRequest
        {
            public string Guid;
            public int UserId;
        }

        public class UpdateRequest
        {
            public string Guid { get; set; }
            public string Username { get; set; }
            public string Address { get; set; }
            public string WebSiteUrl { get; set; }
            public HttpPostedFileBase Image { get; set; }
        }

        public class UpdateResponse
        {
            public UserModel User;
        }

        public class UserModel
        {
            public int Id;
            public string Username;
            public string CompanyName;
            public string Address;
            public string WebSiteUrl;
            public string LogoPath;
            public UserModel(User dbUser)
            {
                Id = dbUser.Id;
                Username = dbUser.Username;
                CompanyName = dbUser.CompanyName;
                Address = dbUser.Address;
                WebSiteUrl = dbUser.WebSiteUrl;
                LogoPath = string.Format("{0}/{1}", Configs.ResourcesBasePath, dbUser.LogoPath);
            }
        }

        [HttpPost]
        public async Task<ApiResponse> Signup(SignupRequest req)
        {
            var code = string.Empty;
            notConfirmedEmails.TryRemove(req.Email, out code);
            if (code == req.SecurityCode)
            {
                return await Db.OpenAsync(async db =>
                {
                    var foundRole = db.Roles.First(r => r.Name == req.RoleName);
                    var foundUser = db.Users.FirstOrDefault(u =>
                        u.Email == req.Email &&
                        u.RoleId == foundRole.Id
                    );
                    if (foundUser != null)
                    {
                        return new ApiResponse(0, "user already signed up");
                    }
                    db.Users.Add(new User
                    {
                        UniqueId = req.UniqueId,
                        SecretWord = req.SecretWord,
                        Role = foundRole,
                        Username = req.Username,
                        CompanyName = req.CompanyName,
                        Email = req.Email,
                        Password = req.Password,
                        LogoPath = new FileSystemStorageProvider().GetResourceRelativeUrl("System", Configs.NoProfileImageName),
                        Created = DateTime.UtcNow
                    });
                    await db.SaveChangesAsync();
                    return new ApiResponse(null);
                });
            }
            return new ApiResponse(0, "security codes do not match");
        }

        [HttpPost]
        public ApiResponse ConfirmEmail(ConfirmEmailRequest req)
        {
            var code = new Random().Next(10000).ToString("0000");
            notConfirmedEmails.AddOrUpdate(req.Email, code, (a, b) => { return code; });
            new EmailSender().Send(new EmailSender.Email
            {
                ToRecipients = req.Email,
                Body = "Код безопасности: <b>" + code + "</b>",
                Subject = "Регистрация",
                IsHtml = true
            });
            return new ApiResponse(new ConfirmEmailResponse()
            {
                Code = code
            });
        }

        [HttpPost]
        public async Task<ApiResponse> Login(LoginRequest req)
        {
            return await Db.OpenAsync(async db =>
            {
                var foundRole = db.Roles.First(r => r.Name == req.RoleName);
                var foundUser = db.Users.FirstOrDefault(u =>
                    u.Email == req.Email &&
                    u.Password == req.Password &&
                    u.RoleId == foundRole.Id
                );
                if (foundUser != null)
                {
                    var guid = Guid.NewGuid().ToString();
                    foundUser.Guid = guid;
                    await db.SaveChangesAsync();
                    return new ApiResponse(new LoginResponse()
                    {
                        Guid = guid,
                        User = new UserModel(foundUser)
                    });
                }
                return new ApiResponse(0, "user not found");
            });
        }

        [HttpPost]
        public async Task<ApiResponse> Get(GetRequest req)
        {
            return await Db.OpenAsync(async db =>
            {
                var isRequestingUserAuthorized = await db.Users.AnyAsync(u => u.Guid == req.Guid);
                if (isRequestingUserAuthorized)
                {
                    var foundUser = await db.Users.FirstOrDefaultAsync(u => u.Id == req.UserId);
                    if (foundUser != null)
                    {
                        return new ApiResponse(new UserModel(foundUser));
                    }
                }
                return new ApiResponse(0, "user not found");
            });
        }

        [HttpPost]
        public async Task<ApiResponse> Update(UpdateRequest req)
        {
            if (!Request.Content.IsMimeMultipartContent())
            {
                return new ApiResponse(0, "Content-Type is not 'multipart/form-data'");
            }
            return await Db.OpenAsync(async db =>
            {
                var foundUser = await db.Users.FirstOrDefaultAsync(u => u.Guid == req.Guid);
                if (foundUser == null)
                {
                    return new ApiResponse(0, "user not found");
                }
                foundUser.Username = req.Username;
                foundUser.Address = req.Address;
                foundUser.WebSiteUrl = req.WebSiteUrl;
                if (req.Image != null)
                {
                    try
                    {
                        var imageName = foundUser.Id + "-" + DateTime.UtcNow.StringFileNameFromDate();
                        var imageFilename = imageName + Path.GetExtension(req.Image.FileName);
                        var thumbnailFilename = imageName + "_200_200" + Path.GetExtension(req.Image.FileName);
                        var isImageUploaded = new ImagesUploadHandler().Upload("Logos", imageFilename, req.Image.ContentType, req.Image.InputStream);
                        var isThumbnailUploaded = new ImagesUploadHandler().Upload("Logos", thumbnailFilename, req.Image.ContentType, req.Image.InputStream, 200, 200);
                        if (!isImageUploaded || !isThumbnailUploaded)
                        {
                            throw new Exception();
                        }
                        foundUser.LogoPath = new FileSystemStorageProvider().GetResourceRelativeUrl("Logos", imageFilename);
                        await db.SaveChangesAsync();
                        return new ApiResponse(new UpdateResponse {
                            User = new UserModel(foundUser)
                        });
                    }
                    catch
                    {
                        await db.SaveChangesAsync();
                        return new ApiResponse(0, "image upload failed");
                    }
                }
                await db.SaveChangesAsync();
                return new ApiResponse(new UpdateResponse
                {
                    User = new UserModel(foundUser)
                });
            });
        }
    }
}
