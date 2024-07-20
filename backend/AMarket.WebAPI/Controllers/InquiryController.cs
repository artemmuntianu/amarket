using AMarket.Data;
using AMarket.WebAPI.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http;

namespace AMarket.WebAPI.Controllers
{
    public class InquiryController : ApiController
    {
        public class CreateRequest
        {
            public string Guid;
            public string Name;
            public string Text;
            public string CategoryName;
            public string Created;
        }

        public class ListReqest
        {
            public string Guid;
            public int[] InquiriesIdxs;
            public string CreatedBefore;
            public string CreatedAfter;
            public string UpdatedAfter;
            public RetailerInquiriesFilterModel Filter;
        }

        public class ListResponse<T>
        {
            public List<T> Created;
            public List<T> Updated;
            public ListResponse(List<T> created, List<T> updated)
            {
                Created = created;
                Updated = updated;
            }
        }

        public class CloseRequest
        {
            public string Guid;
            public int InquiryId;
        }

        public class GetRequest
        {
            public string Guid;
            public int InquiryId;
        }

        public class CustomerInquiryModel
        {
            public int Id;
            public string Name;
            public string Text;
            public string CategoryName;
            public int OffersAmount;
            public bool IsClosed;
            public string Updated;
            public string Created;
        }

        public class RetailerInquiryModel
        {
            public int Id;
            public string CustomerName;
            public int CustomerId;
            public string Text;
            public string CategoryName;
            public int OffersAmount;
            public bool IsClosed;
            public bool IsOffered;
            public bool IsOfferRejected;
            public string Updated;
            public string Created;
        }

        public class OfferModel
        {
            public int Id;
            public int RetailerId;
            public string RetailerUsername;
            public string RetailerCompanyName;
            public double Price;
            public bool IsImageAttached;
            public bool IsRejected;
            public string Created;
        }

        public class InquiryDetailedModel
        {
            public string Name;
            public string Text;
            public string CategoryName;
            public OfferModel[] Offers;
            public bool IsClosed;
            public string Created;
        }

        public class RetailerInquiriesFilterModel
        {
            public Member? HasOffersFrom;
            public Member? HasNoOffersFrom;
            public bool? IsClosed;

            public enum Member
            {
                Me, NotMe, Anybody
            }
        }

        private IQueryable<Inquiry> QueryInquiriesUsingFilter(IQueryable<Inquiry> query, RetailerInquiriesFilterModel filter, int userId)
        {
            switch (filter.HasOffersFrom)
            {
                case RetailerInquiriesFilterModel.Member.Me:
                    query = query.Where(i => i.Offers.Count > 0 && i.Offers.Any(o => o.RetailerId == userId));
                    break;
                case RetailerInquiriesFilterModel.Member.NotMe:
                    query = query.Where(i => i.Offers.Count > 0 && i.Offers.Any(o => o.RetailerId != userId));
                    break;
                case RetailerInquiriesFilterModel.Member.Anybody:
                    query = query.Where(i => i.Offers.Count > 0);
                    break;
            }
            switch (filter.HasNoOffersFrom)
            {
                case RetailerInquiriesFilterModel.Member.Me:
                    query = query.Where(i => i.Offers.All(o => o.RetailerId != userId));
                    break;
                case RetailerInquiriesFilterModel.Member.NotMe:
                    query = query.Where(i => i.Offers.All(o => o.RetailerId == userId));
                    break;
                case RetailerInquiriesFilterModel.Member.Anybody:
                    query = query.Where(i => i.Offers.Count == 0);
                    break;
            }
            if (filter.IsClosed.HasValue)
            {
                query = query.Where(i => i.IsClosed == filter.IsClosed.Value);
            }
            return query;
        }

        private IQueryable<Inquiry> QueryInquiriesCreatedDuringDates(IQueryable<Inquiry> query, DateTime date1, DateTime date2, int[] inquiriesIdxs)
        {
            return query.Where(i => i.Created > date1 && i.Created < date2 && !inquiriesIdxs.Contains(i.Id));
        }

        private IQueryable<Inquiry> QueryInquiriesCreatedAfterDate(IQueryable<Inquiry> query, DateTime date)
        {
            return query.Where(i => i.Created > date).OrderBy(i => i.Created);
        }

        private IQueryable<Inquiry> QueryInquiriesCreatedBeforeDate(IQueryable<Inquiry> query, DateTime date)
        {
            return query.Where(i => i.Created < date).OrderByDescending(i => i.Created);
        }

        private IQueryable<Inquiry> QueryInquiriesUpdatedAfterDate(IQueryable<Inquiry> query, DateTime date, int[] inquiriesIdxs)
        {
            return query.Where(i => i.Updated > date && inquiriesIdxs.Contains(i.Id));
        }

        private IQueryable<Inquiry> QueryRetailerInquiries(DatabaseEntities db)
        {
            return db.Inquiries.Include(i => i.Category).Include(i => i.Offers).Include(i => i.Customer);
        }

        private IQueryable<Inquiry> QueryCustomerInquiries(DatabaseEntities db, int userId)
        {
            return db.Inquiries.Include(i => i.Category).Include(i => i.Offers).Where(i => i.CustomerId == userId);
        }

        private Task<CustomerInquiryModel[]> SelectCustomerInquiriesAsync(IQueryable<Inquiry> dbRequest, int? limit = null)
        {
            if (limit.HasValue)
                dbRequest = dbRequest.Take(limit.Value);
            return dbRequest
            .Select(i => new CustomerInquiryModel()
            {
                Id = i.Id,
                CategoryName = i.Category.Name,
                Name = i.Name,
                Text = i.Text,
                IsClosed = i.IsClosed,
                OffersAmount = i.Offers.Count,
                Updated = i.Updated == null ? null : i.Updated.ToString(),
                Created = i.Created.ToString()
            })
            .ToArrayAsync();
        }

        private Task<RetailerInquiryModel[]> SelectRetailerInquiriesAsync(IQueryable<Inquiry> dbRequest, int userId, int? limit = null)
        {
            if (limit.HasValue)
                dbRequest = dbRequest.Take(limit.Value);
            return dbRequest
            .Select(i => new RetailerInquiryModel()
            {
                Id = i.Id,
                CustomerName = i.Customer.Username,
                CustomerId = i.Customer.Id,
                Text = i.Text,
                CategoryName = i.Category.Name,
                OffersAmount = i.Offers.Count,
                IsClosed = i.IsClosed,
                IsOffered = i.Offers.Any(o => o.RetailerId == userId),
                IsOfferRejected = i.Offers.Any(o => o.RetailerId == userId && o.IsRejected),
                Updated = i.Updated == null ? null : i.Updated.ToString(),
                Created = i.Created.ToString()
            })
            .ToArrayAsync();
        }

        [HttpPost]
        public async Task<ApiResponse> Create(CreateRequest req)
        {
            return await Db.OpenAsync(async db =>
            {
                var foundCategory = db.Categories.First(c => c.Name == req.CategoryName);
                var foundUser = db.Users.FirstOrDefault(u => u.Guid == req.Guid);
                if (foundUser != null)
                {
                    db.Inquiries.Add(new Inquiry
                    {
                        Customer = foundUser,
                        Name = req.Name,
                        Text = req.Text,
                        Category = foundCategory,
                        Created = req.Created.DateFromStringWebApi()
                    });
                    await db.SaveChangesAsync();
                    return new ApiResponse(null);
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
                var foundUser = db.Users.FirstOrDefault(u => u.Guid == req.Guid);
                if (foundUser != null)
                {
                    var foundInquiry = await db.Inquiries
                        .Include(i => i.Category)
                        .Include(i => i.Offers)
                        .Include("Offers.Retailer")
                        .FirstAsync(i => i.Id == req.InquiryId && i.CustomerId == foundUser.Id);
                    var foundOffers = foundInquiry.Offers.Select(o => new OfferModel()
                    {
                        Id = o.Id,
                        RetailerId = o.Retailer.Id,
                        RetailerUsername = o.Retailer.Username,
                        RetailerCompanyName = o.Retailer.CompanyName,
                        Price = o.Price,
                        IsRejected = o.IsRejected,
                        IsImageAttached = o.IsImageAttached,
                        Created = o.Created.StringWebApiFromDate()
                    })
                    .ToArray();
                    return new ApiResponse(new InquiryDetailedModel()
                    {
                        Name = foundInquiry.Name,
                        Text = foundInquiry.Text,
                        CategoryName = foundInquiry.Category.Name,
                        Offers = foundOffers,
                        IsClosed = foundInquiry.IsClosed,
                        Created = foundInquiry.Created.StringWebApiFromDate()
                    });
                }
                else
                {
                    return new ApiResponse(0, "user not found");
                }
            });
        }

        [HttpPost]
        public async Task<ApiResponse> Close(CloseRequest req)
        {
            return await Db.OpenAsync(async db =>
            {
                var foundUser = db.Users.FirstOrDefault(u => u.Guid == req.Guid);
                if (foundUser != null)
                {
                    var foundInquiry = await db.Inquiries
                        .FirstAsync(i => i.Id == req.InquiryId && i.CustomerId == foundUser.Id);
                    foundInquiry.IsClosed = true;
                    foundInquiry.Updated = DateTime.UtcNow;
                    await db.SaveChangesAsync();
                    return new ApiResponse(null);
                }
                else
                {
                    return new ApiResponse(0, "user not found");
                }
            });
        }

        [HttpPost]
        public async Task<ApiResponse> List(ListReqest req)
        {
            return await Db.OpenAsync(async db =>
            {
                var foundUser = db.Users.Include(u => u.Role).FirstOrDefault(u => u.Guid == req.Guid);
                if (foundUser != null)
                {
                    var roleName = foundUser.Role.Name;
                    if (roleName == "Customer")
                    {
                        var created = new List<CustomerInquiryModel>(10);
                        var updated = new List<CustomerInquiryModel>(10);
                        if (req.InquiriesIdxs != null && !string.IsNullOrEmpty(req.CreatedBefore) && !string.IsNullOrEmpty(req.CreatedAfter))
                        {
                            var createdBefore = req.CreatedBefore.DateFromStringWebApi();
                            var createdAfter = req.CreatedAfter.DateFromStringWebApi();
                            var updatedAfter = req.UpdatedAfter.DateFromStringWebApi();
                            // todo(artem): would be better to perform these requests in parallel
                            created = created.Concat(await SelectCustomerInquiriesAsync(QueryInquiriesCreatedDuringDates(QueryCustomerInquiries(db, foundUser.Id), createdAfter, createdBefore, req.InquiriesIdxs))).ToList();
                            created = created.Concat(await SelectCustomerInquiriesAsync(QueryInquiriesCreatedAfterDate(QueryCustomerInquiries(db, foundUser.Id), createdBefore), 10)).ToList();
                            updated = updated.Concat(await SelectCustomerInquiriesAsync(QueryInquiriesUpdatedAfterDate(QueryCustomerInquiries(db, foundUser.Id), updatedAfter, req.InquiriesIdxs))).ToList();
                        }
                        else if (!string.IsNullOrEmpty(req.CreatedBefore))
                        {
                            var createdBefore = req.CreatedBefore.DateFromStringWebApi();
                            created = created.Concat(await SelectCustomerInquiriesAsync(QueryInquiriesCreatedBeforeDate(QueryCustomerInquiries(db, foundUser.Id), createdBefore), 10)).ToList();
                        }
                        created = created.OrderBy(m => m.Created).ToList();
                        updated = updated.OrderBy(m => m.Updated).ToList();
                        foreach (var item in created)
                        {
                            item.Created = DateTime.Parse(item.Created).StringWebApiFromDate();
                            item.Updated = item.Updated == null ? null : DateTime.Parse(item.Updated).StringWebApiFromDate();
                        }
                        foreach (var item in updated)
                        {
                            item.Created = DateTime.Parse(item.Created).StringWebApiFromDate();
                            item.Updated = item.Updated == null ? null : DateTime.Parse(item.Updated).StringWebApiFromDate();
                        }
                        return new ApiResponse(new ListResponse<CustomerInquiryModel>(created, updated));
                    }
                    else
                    {
                        var created = new List<RetailerInquiryModel>(10);
                        var updated = new List<RetailerInquiryModel>(10);
                        if (req.InquiriesIdxs != null && !string.IsNullOrEmpty(req.CreatedBefore) && !string.IsNullOrEmpty(req.CreatedAfter))
                        {
                            var createdBefore = req.CreatedBefore.DateFromStringWebApi();
                            var createdAfter = req.CreatedAfter.DateFromStringWebApi();
                            var updatedAfter = req.UpdatedAfter.DateFromStringWebApi();
                            var queryInquiriesCreatedDuringDates = QueryInquiriesCreatedDuringDates(QueryRetailerInquiries(db), createdAfter, createdBefore, req.InquiriesIdxs);
                            var queryInquiriesCreatedAfterDate = QueryInquiriesCreatedAfterDate(QueryRetailerInquiries(db), createdBefore);
                            var queryInquiriesUpdatedAfterDate = QueryInquiriesUpdatedAfterDate(QueryRetailerInquiries(db), updatedAfter, req.InquiriesIdxs);
                            // todo(artem): would be better to perform these requests in parallel
                            created = created.Concat(await SelectRetailerInquiriesAsync(QueryInquiriesUsingFilter(queryInquiriesCreatedDuringDates, req.Filter, foundUser.Id), foundUser.Id)).ToList();
                            created = created.Concat(await SelectRetailerInquiriesAsync(QueryInquiriesUsingFilter(queryInquiriesCreatedAfterDate, req.Filter, foundUser.Id), foundUser.Id, 10)).ToList();
                            updated = updated.Concat(await SelectRetailerInquiriesAsync(QueryInquiriesUsingFilter(queryInquiriesUpdatedAfterDate, req.Filter, foundUser.Id), foundUser.Id)).ToList();
                        }
                        else if (!string.IsNullOrEmpty(req.CreatedBefore))
                        {
                            var createdBefore = req.CreatedBefore.DateFromStringWebApi();
                            var queryInquiriesCreatedBeforeDate = QueryInquiriesCreatedBeforeDate(QueryRetailerInquiries(db), createdBefore);
                            created = created.Concat(await SelectRetailerInquiriesAsync(QueryInquiriesUsingFilter(queryInquiriesCreatedBeforeDate, req.Filter, foundUser.Id), foundUser.Id, 10)).ToList();
                        }
                        created = created.OrderBy(m => m.Created).ToList();
                        updated = updated.OrderBy(m => m.Updated).ToList();
                        foreach (var item in created)
                        {
                            item.Created = DateTime.Parse(item.Created).StringWebApiFromDate();
                            item.Updated = item.Updated == null ? null : DateTime.Parse(item.Updated).StringWebApiFromDate();
                        }
                        foreach (var item in updated)
                        {
                            item.Created = DateTime.Parse(item.Created).StringWebApiFromDate();
                            item.Updated = item.Updated == null ? null : DateTime.Parse(item.Updated).StringWebApiFromDate();
                        }
                        return new ApiResponse(new ListResponse<RetailerInquiryModel>(created, updated));
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
