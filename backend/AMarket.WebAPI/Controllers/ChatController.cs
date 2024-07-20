using AMarket.Data;
using AMarket.Data.Enums;
using AMarket.Data.FileStorage;
using AMarket.WebAPI.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;

namespace AMarket.WebAPI.Controllers
{
    public class ChatController : ApiController
    {
        public class SendMessageRequest
        {
            /* should be properties because FormMultipartEncodedMediaTypeFormatter's binder requires it*/
            public string Guid { get; set; }
            public int OfferId { get; set; }
            public string Text { get; set; }
            public HttpPostedFileBase Image { get; set; }
            public MessageType Type { get; set; }
            public string Created { get; set; }
        }

        public class SendMessageResponse
        {
            public int Id;
        }

        public class GetMessagesRequest
        {
            public string Guid;
            public int OfferId;
            public int[] MessagesIdxs;
            public string CreatedBefore;
            public string CreatedAfter;
        }

        public class MessageModel
        {
            public int Id;
            public int SenderId;
            public int Type;
            public string Text;
            public bool IsIncoming;
            public string Created;
        }

        private Task<MessageModel[]> RequestMessagesAsync(IQueryable<Message> dbRequest, int userId)
        {
            return dbRequest
            .Select(m => new MessageModel()
            {
                Id = m.Id,
                SenderId = m.SenderId,
                Type = m.Type,
                /*do not use string.Format. this is a LINQ expression*/
                Text = ((MessageType)m.Type == MessageType.Text) ? m.Text : Configs.ResourcesBasePath + m.Text,
                IsIncoming = (m.SenderId != userId),
                Created = m.Created.ToString()
            })
            .ToArrayAsync();
        }

        [HttpPost]
        public async Task<ApiResponse> SendMessage(SendMessageRequest req)
        {
            return await Db.OpenAsync(async db =>
            {
                var foundUser = await db.Users.FirstOrDefaultAsync(u => u.Guid == req.Guid);
                if (foundUser == null)
                {
                    return new ApiResponse(0, "user not found");
                }
                var newMessage = new Message()
                {
                    OfferId = req.OfferId,
                    SenderId = foundUser.Id,
                    Type = (int)req.Type,
                    Text = string.Empty,
                    Created = req.Created.DateFromStringWebApi()
                };
                switch (req.Type)
                {
                    case MessageType.Text:
                        newMessage.Text = req.Text;
                        db.Messages.Add(newMessage);
                        await db.SaveChangesAsync();
                        return new ApiResponse(new SendMessageResponse() { Id = newMessage.Id });
                    case MessageType.Image:
                    default:
                        if (!Request.Content.IsMimeMultipartContent())
                        {
                            return new ApiResponse(0, "Content-Type is not 'multipart/form-data'");
                        }
                        db.Messages.Add(newMessage);
                        await db.SaveChangesAsync();
                        try
                        {
                            var imageFilename = newMessage.Id + Path.GetExtension(req.Image.FileName);
                            var thumbnailFilename = newMessage.Id + "_600_600" + Path.GetExtension(req.Image.FileName);
                            var isImageUploaded = new ImagesUploadHandler().Upload("Messages", imageFilename, req.Image.ContentType, req.Image.InputStream);
                            var isThumbnailUploaded = new ImagesUploadHandler().Upload("Messages", thumbnailFilename, req.Image.ContentType, req.Image.InputStream, 600, 600);
                            if (!isImageUploaded || !isThumbnailUploaded)
                            {
                                throw new Exception();
                            }
                            newMessage.Text = new FileSystemStorageProvider().GetResourceRelativeUrl("Messages", imageFilename);
                            var offer = await db.Offers.FindAsync(newMessage.OfferId);
                            offer.IsImageAttached = true;
                            await db.SaveChangesAsync();
                            return new ApiResponse(new SendMessageResponse() { Id = newMessage.Id });
                        }
                        catch
                        {
                            db.Messages.Remove(newMessage);
                            await db.SaveChangesAsync();
                            return new ApiResponse(0, "image upload failed");
                        }
                }
            });
        }

        [HttpPost]
        public async Task<ApiResponse> GetMessages(GetMessagesRequest req)
        {
            return await Db.OpenAsync(async db =>
            {
                var foundUser = await db.Users.FirstOrDefaultAsync(u => u.Guid == req.Guid);
                if (foundUser == null)
                {
                    return new ApiResponse(0, "user not found");
                }
                var data = new List<MessageModel>(10);
                if (req.MessagesIdxs != null && !string.IsNullOrEmpty(req.CreatedBefore) && !string.IsNullOrEmpty(req.CreatedAfter))
                {
                    var createdBefore = req.CreatedBefore.DateFromStringWebApi();
                    var createdAfter = req.CreatedAfter.DateFromStringWebApi();
                    // todo(artem): would be better to perform these 2 requests in parallel
                    var dbRequest1 = db.Messages
                        .Where(m => m.OfferId == req.OfferId && m.Created > createdAfter && m.Created < createdBefore && !req.MessagesIdxs.Contains(m.Id));
                    var dbRequest2 = db.Messages
                        .Where(m => m.OfferId == req.OfferId && m.Created > createdBefore)
                        .OrderBy(m => m.Created)
                        .Take(10);
                    data = data.Concat(await RequestMessagesAsync(dbRequest1, foundUser.Id)).ToList();
                    data = data.Concat(await RequestMessagesAsync(dbRequest2, foundUser.Id)).ToList();
                }
                else if (!string.IsNullOrEmpty(req.CreatedBefore))
                {
                    var createdBefore = req.CreatedBefore.DateFromStringWebApi();
                    var dbRequest = db.Messages
                        .Where(m => m.OfferId == req.OfferId && m.Created < createdBefore)
                        .OrderByDescending(m => m.Created)
                        .Take(10);
                    data = data.Concat(await RequestMessagesAsync(dbRequest, foundUser.Id)).ToList();
                }
                data = data.OrderBy(m => m.Created).ToList();
                foreach (var item in data)
                {
                    item.Created = DateTime.Parse(item.Created).StringWebApiFromDate();
                }
                return new ApiResponse(data);
            });
        }
    }
}