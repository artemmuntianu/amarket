using System;
using System.Globalization;

namespace AMarket.WebAPI
{
    public static class Extensions
    {
        private const string WEB_API_DATETIME_FORMAT = "yyyy-MM-ddTHH:mm:ss.fff"; /*e.g. 2009-06-15T13:45:30.617*/
        private const string FILE_NAME_DATETIME_FORMAT = "yyyy-MM-ddTHH-mm-ss"; /*e.g. 2009-06-15T13-45-30*/
        public static DateTime DateFromStringWebApi(this string s)
        {
            return DateTime.ParseExact(s, WEB_API_DATETIME_FORMAT, CultureInfo.InvariantCulture, DateTimeStyles.AssumeUniversal | DateTimeStyles.AdjustToUniversal);
        }
        public static string StringWebApiFromDate(this DateTime d)
        {
            return d.ToString(WEB_API_DATETIME_FORMAT);
        }

        public static string StringFileNameFromDate(this DateTime d)
        {
            return d.ToString(FILE_NAME_DATETIME_FORMAT);
        }
    }
}