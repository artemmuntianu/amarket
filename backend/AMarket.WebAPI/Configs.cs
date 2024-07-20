using System.Configuration;

namespace AMarket.WebAPI
{
    public static class Configs
    {
        public static string ResourcesBasePath = ConfigurationManager.AppSettings["ResourcesBasePath"];
        public static string NoProfileImageName = ConfigurationManager.AppSettings["NoProfileImageName"];
    }
}