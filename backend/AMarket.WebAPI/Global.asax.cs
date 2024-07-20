using System;
using System.Web;
using System.Web.Http;
using System.Web.Management;
using System.Web.Mvc;

namespace AMarket.WebAPI
{
    public class WebApiApplication : HttpApplication
    {
        protected void Application_Start()
        {
            GlobalConfiguration.Configure(WebApiConfig.Register);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
        }

        private void Application_Error(object sender, EventArgs e)
        {
            var ex = Server.GetLastError();
            var httpException = ex as HttpException ?? ex.InnerException as HttpException;
            if (httpException != null && httpException.WebEventCode == WebEventCodes.RuntimeErrorPostTooLarge)
            {
                Response.Write("Too big request length");
            }
        }
    }
}
