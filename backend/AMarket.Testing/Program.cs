using AMarket.Data;
using AMarket.Data.Enums;
using AMarket.Testing.DummyData;
using System;
using System.Linq;

namespace AMarket.Testing
{
    class Program
    {
        static void Main(string[] args)
        {
            var dummyData = new Reader();
            Db.Open(db =>
            {
                //AppendRetailers(db, dummyData);
                //AppendCustomers(db, dummyData);
                //AppendInquiries(db, dummyData);
            });
        }

        static void AppendInquiries(DatabaseEntities db, Reader dummyData)
        {
            var customers = db.Users.Where(u => u.RoleId == (int)RoleType.Customer).ToArray();
            foreach (var user in customers)
            {
                var inquiriesAmount = new Random().Next(5, 16);
                for (int i = 0; i < inquiriesAmount; i++)
                {
                    var inquiry = new Inquiry
                    {
                        CustomerId = user.Id,
                        CategoryId = new Random().Next(2, 1921),
                        Name = string.Format("{0} {1}", dummyData.RandomWord, dummyData.RandomWord),
                        Text = string.Format("{0} {1} {2}", dummyData.RandomWord, dummyData.RandomWord, dummyData.RandomWord),
                        IsClosed = (new Random().Next(10) == 1),
                        Created = DateTime.UtcNow
                    };
                    db.Inquiries.Add(inquiry);
                }
            }
            db.SaveChanges();
        }

        static void AppendRetailers(DatabaseEntities db, Reader dummyData)
        {
            for (int i = 0; i < 200; i++)
            {
                var u = new User()
                {
                    RoleId = (int)RoleType.Retailer,
                    Username = dummyData.RandomFirstName + " " + dummyData.RandomLastName,
                    Email = dummyData.RandomEmail,
                    CompanyName = dummyData.RandomCompanyName,
                    Address = dummyData.RandomStreetAddress,
                    WebSiteUrl = dummyData.RandomUrl,
                    UniqueId = "0",
                    SecretWord = dummyData.RandomWord,
                    Password = "p",
                    LogoPath = @"images/logos/1-2017-02-18t14-41-02.jpg",
                    Created = DateTime.UtcNow
                };
                db.Users.Add(u);
            }
            db.SaveChanges();
        }

        static void AppendCustomers(DatabaseEntities db, Reader dummyData)
        {
            for (int i = 0; i < 800; i++)
            {
                var u = new User()
                {
                    RoleId = (int)RoleType.Customer,
                    Username = dummyData.RandomFirstName + " " + dummyData.RandomLastName,
                    Email = dummyData.RandomEmail,
                    CompanyName = dummyData.RandomCompanyName,
                    Address = dummyData.RandomStreetAddress,
                    WebSiteUrl = dummyData.RandomUrl,
                    UniqueId = "0",
                    SecretWord = dummyData.RandomWord,
                    Password = "p",
                    LogoPath = @"images/logos/1-2017-02-18T14-35-19.jpg",
                    Created = DateTime.UtcNow
                };
                db.Users.Add(u);
            }
            db.SaveChanges();
        }
    }
}
