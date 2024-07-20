namespace AMarket.WebAPI.Models
{
    public class ApiResponse
    {
        public class ApiError
        {
            public int Code;
            public string Message;
        }

        public object Data;
        public ApiError Error;

        public ApiResponse(object data)
        {
            Data = data;
        }

        public ApiResponse(int errorCode, string errorMsg)
        {
            Error = new ApiError() { Code = errorCode, Message = errorMsg };
        }
    }
}