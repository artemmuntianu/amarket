using AMarket.Data;
using AMarket.WebAPI.Models;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http;

namespace AMarket.WebAPI.Controllers
{
    public class CategoryController : ApiController
    {
        public class ListRequest
        {
            public string Guid;
        }

        public class ListResponse
        {
            public List<CategoryModel> Categories;
        }

        public class CategoryModel
        {
            public int Id;
            public string Name;
            public List<CategoryModel> Children;
        }

        private void AddSubCategories(DatabaseEntities db, int? parentId, out List<CategoryModel> list)
        {
            list = db.Categories
                .Where(c => c.ParentId == parentId)
                .Select(c => new CategoryModel
                {
                    Id = c.Id,
                    Name = c.Name
                })
                .ToList();
            foreach (var cat in list)
            {
                AddSubCategories(db, cat.Id, out cat.Children);
            }
        }

        [HttpPost]
        public async Task<ApiResponse> List(ListRequest req)
        {
            return await Db.OpenAsync(async db =>
            {
                var foundUser = await db.Users.FirstOrDefaultAsync(u => u.Guid == req.Guid);
                if (foundUser != null)
                {
                    var response = new ListResponse();
                    AddSubCategories(db, null, out response.Categories);
                    return new ApiResponse(response);
                }
                else
                {
                    return new ApiResponse(0, "user not found");
                }
            });
        }
    }
}
