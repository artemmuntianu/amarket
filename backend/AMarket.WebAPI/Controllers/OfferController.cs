using AMarket.Data;
using AMarket.Data.Enums;
using AMarket.WebAPI.Models;
using System;
using System.Data.Entity;
using System.Threading.Tasks;
using System.Web.Http;

namespace AMarket.WebAPI.Controllers
{
    public class OfferController : ApiController
    {
        public class CreateRequest
        {
            public string Guid;
            public int InquiryId;
            public double Price;
            public string Created;
        }

        public class CreateResponse
        {
            public int Id;
        }

        public class GetRequest
        {
            public string Guid;
            public int InquiryId;
            public int RetailerId;
            public int CustomerId;
        }

        public class GetResponse
        {
            public int Id;
            public int InquiryId;
            public int RetailerId;
            public int CustomerId;
            public double Price;
            public bool IsRejected;
            public string Created;
        }

        [HttpPost]
        public async Task<ApiResponse> Create(CreateRequest req)
        {
            return await Db.OpenAsync(async db =>
            {
                var foundUser = await db.Users.FirstOrDefaultAsync(u => u.Guid == req.Guid);
                if (foundUser != null)
                {
                    var foundInquiry = await db.Inquiries.FirstAsync(i => i.Id == req.InquiryId);
                    var customerId = foundInquiry.CustomerId;
                    var offer = new Offer()
                    {
                        RetailerId = foundUser.Id,
                        InquiryId = req.InquiryId,
                        Price = req.Price,
                        CustomerId = customerId,
                        Messages = new[] {
                            new Message()
                            {
                                Type = (int)MessageType.Text,
                                SenderId = foundUser.Id,
                                Text = string.Format("У нас есть то, что Вы ищете. Цена {0} грн.", req.Price),
                                Created = req.Created.DateFromStringWebApi()
                            }
                        },
                        Created = req.Created.DateFromStringWebApi()
                    };
                    db.Offers.Add(offer);
                    foundInquiry.Updated = DateTime.UtcNow;
                    await db.SaveChangesAsync();
                    return new ApiResponse(new CreateResponse() { Id = offer.Id });
                }
                else
                {
                    return new ApiResponse(0, "user not found");
                }
            });
        }

        [HttpPost]
        public async Task<ApiResponse> Get(GetRequest req)
        {
            return await Db.OpenAsync(async db =>
            {
                var foundUser = await db.Users.FirstOrDefaultAsync(u => u.Guid == req.Guid);
                if (foundUser != null)
                {
                    var offer = await db.Offers.FirstOrDefaultAsync(o => req.RetailerId == o.RetailerId && req.CustomerId == o.CustomerId && req.InquiryId == o.InquiryId);
                    if (offer != null)
                    {
                        return new ApiResponse(new GetResponse()
                        {
                            Id = offer.Id,
                            RetailerId = offer.RetailerId,
                            CustomerId = offer.CustomerId,
                            InquiryId = offer.InquiryId,
                            IsRejected = offer.IsRejected,
                            Price = offer.Price,
                            Created = offer.Created.StringWebApiFromDate()
                        });
                    }
                    else
                    {
                        return new ApiResponse(null);
                    }
                }
                else
                {
                    return new ApiResponse(0, "user not found");
                }
            });
        }
    }
}
