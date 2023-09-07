using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using Spire.Email;

namespace ProgramPostep.Services.EmailNotifyService.T.PL
{
    internal class EmailMessage : IEmailMessage
    {
        public string Body { get; set; }
        public string Subject { get; set; }
        public string Name { get; set; }
        public DateTime DateTimeToSend { get; set; }
        public string AddressFrom { get; set; }
        public string AddressTo { get; set; }

        public EmailMessage(string name, string subject, string body, DateTime dateTime, string addressFrom, string addressTo)
        {
            Name = name;
            Body = body;
            Subject = subject;
            DateTimeToSend = dateTime;
            AddressFrom = addressFrom;
            AddressTo = addressTo;
        }

    }
}
