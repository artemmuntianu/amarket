using AMarket.Data;
using System;
using System.IO;

namespace AMarket.Utils
{
    class CategoriesParser
    {
        public string FilePath { get; set; }
        public CategoriesParser(string filePath)
        {
            FilePath = filePath;
        }
        public void Parse()
        {
            var cat1 = default(Category);
            var cat2 = default(Category);
            var cat3 = default(Category);
            using (var db = new DatabaseEntities())
            using (var sr = new StreamReader(FilePath))
            {
                while (!sr.EndOfStream)
                {
                    var catName = sr.ReadLine();
                    if (string.IsNullOrWhiteSpace(catName)) continue;
                    var wsCount = Math.Min(16, catName.Length - catName.TrimStart(new[] { ' ' }).Length);
                    var newCat = new Category { Name = catName.Trim() };
                    switch (wsCount)
                    {
                        case 2:
                            if (cat2 == null && cat3 == null)
                            {
                                cat1 = newCat;
                            }
                            else
                            {
                                db.Categories.Add(cat1);
                                cat1 = newCat;
                                cat2 = null;
                                cat3 = null;
                            }
                            break;
                        case 12:
                            cat2 = newCat;
                            cat1.Children.Add(cat2);
                            break;
                        case 16:
                        default:
                            cat3 = newCat;
                            cat2.Children.Add(cat3);
                            break;
                    }
                }
                db.SaveChanges();
            }
        }
    }
}
