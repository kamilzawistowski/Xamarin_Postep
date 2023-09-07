using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using Spire.Email;
using Spire.Email.IMap;
using Spire.Email.Pop3;
using Spire.Email.Smtp;

namespace ProgramPostep.Services.EmailNotifyService.T.PL
{
    internal class EmailSender : IEmailSender
    {
        public MailMessage CreateMessage(IEmailMessage email)
        {
            MailAddress addressFrom = new MailAddress(email.AddressFrom, email.Name);
            MailAddress addressTo = new MailAddress(email.AddressTo);
            MailMessage message = new MailMessage(addressFrom, addressTo);
            message.Date = email.DateTimeToSend;
            message.Subject = email.Subject;
            message.BodyText = email.Body;

            return message;
        }


        public void SendEmail(IEmailConfig smtpConfig, IEmailMessage message)
        {
            try
            {
                SmtpClient SmtpClient = new SmtpClient();
                SmtpClient.Username = message.AddressFrom;
                SmtpClient.Host = smtpConfig.Host;
                SmtpClient.Password = smtpConfig.Password;
                SmtpClient.Port = 587;
                SmtpClient.SendOne(CreateMessage(message));
                Console.WriteLine("Wiadomosc ");
                Console.WriteLine($"Z Tematem {message.Subject}! ");
                Console.WriteLine($"Dla {message.AddressTo}! ");
                Console.WriteLine("Zostala wyslana! ");
            }
            catch (Exception ex)
            {
                ex.ToString();
                throw;
            }
        }

        public void GetMailBoxInfo(IEmailConfig imapConfig)
        {
            try
            {
                Pop3Client pop3Client = new Pop3Client();
                pop3Client.Host = "t.pl";
                pop3Client.Password = imapConfig.Password;
                pop3Client.Port = 995;
                pop3Client.Username = imapConfig.FromAddress;
                pop3Client.EnableSsl = true;

                pop3Client.Connect();
                Console.WriteLine("Liczba wiadomosci: " + pop3Client.GetMessageCount());

                Console.WriteLine("Wielkosc skrzynki: " + pop3Client.GetSize() + " bytes");

            }
            catch (Exception ex)
            {
                ex.ToString();
                throw;
            }




        }

    }
}
