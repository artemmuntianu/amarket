using System;
using System.Net;
using System.Net.Mail;

namespace AMarket.WebAPI.Infrastructure
{
    public class EmailSender
    {
        public class Email
        {
            public string ToRecipients { get; set; }
            public string Subject { get; set; }
            public string Body { get; set; }
            public bool IsHtml { get; set; }
        }

        public void Send(Email email)
        {
            var account = "amarket.noanswer@gmail.com";
            var password = "amarket32";
            using (var smtp = new SmtpClient("smtp.gmail.com", 587))
            {
                var mail = new MailMessage()
                {
                    From = new MailAddress(account),
                    Subject = email.Subject,
                    Body = email.Body,
                    IsBodyHtml = email.IsHtml
                };
                mail.To.Add(email.ToRecipients);
                mail.ReplyToList.Add(account);
                smtp.Credentials = new NetworkCredential(account, password);
                smtp.EnableSsl = true;
                smtp.Send(mail);
            }
        }

        private static string Encode(string text)
        {
            var bytes = System.Text.Encoding.UTF8.GetBytes(text);
            return Convert.ToBase64String(bytes)
                .Replace('+', '-')
                .Replace('/', '_')
                .Replace("=", "");
        }
    }
}