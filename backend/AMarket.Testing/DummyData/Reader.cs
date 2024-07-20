using Newtonsoft.Json.Linq;
using System;
using System.IO;

namespace AMarket.Testing.DummyData
{
    class Reader
    {
        public string RandomWord => lazyWords.Value[random.Next(lazyWords.Value.Length)].word;
        public string RandomUrl => lazyUrls.Value[random.Next(lazyUrls.Value.Length)].url;
        public string RandomStreetAddress => lazyStreetAddresses.Value[random.Next(lazyStreetAddresses.Value.Length)].street_address;
        public string RandomLastName => lazyLastNames.Value[random.Next(lazyLastNames.Value.Length)].last_name;
        public string RandomFirstName => lazyFirstNames.Value[random.Next(lazyFirstNames.Value.Length)].first_name;
        public string RandomEmail => lazyEmails.Value[random.Next(lazyEmails.Value.Length)].email;
        public string RandomCompanyName => lazyCompanyNames.Value[random.Next(lazyCompanyNames.Value.Length)].company_name;
        private Random random = new Random();
        private Lazy<dynamic[]> lazyWords = new Lazy<dynamic[]>(() => { return ReadKeyValueFromFile("word.json"); });
        private Lazy<dynamic[]> lazyUrls = new Lazy<dynamic[]>(() => { return ReadKeyValueFromFile("url.json"); });
        private Lazy<dynamic[]> lazyStreetAddresses = new Lazy<dynamic[]>(() => { return ReadKeyValueFromFile("street_address.json"); });
        private Lazy<dynamic[]> lazyLastNames = new Lazy<dynamic[]>(() => { return ReadKeyValueFromFile("last_name.json"); });
        private Lazy<dynamic[]> lazyFirstNames = new Lazy<dynamic[]>(() => { return ReadKeyValueFromFile("first_name.json"); });
        private Lazy<dynamic[]> lazyEmails = new Lazy<dynamic[]>(() => { return ReadKeyValueFromFile("email.json"); });
        private Lazy<dynamic[]> lazyCompanyNames = new Lazy<dynamic[]>(() => { return ReadKeyValueFromFile("company_name.json"); });
        private static dynamic[] ReadKeyValueFromFile(string fileName)
        {
            return JArray
                .Parse(File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + @"..\..\DummyData\" + fileName))
                .ToObject<dynamic[]>();
        }
    }
}
