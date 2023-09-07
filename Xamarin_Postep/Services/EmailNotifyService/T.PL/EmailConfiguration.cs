using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Spire.Email;
using System.Net.Mail;
using Spire.Email.Pop3;
using System.Globalization;
using System.Security.Cryptography.X509Certificates;

namespace ProgramPostep.Services.EmailNotifyService.T.PL
{
    internal class EmailConfigurationSMTP : IEmailConfig
    {
        public EmailConfigurationSMTP(string name, bool enableSsl, string fromAddress, string password)
        {
            Name = name;
            Host = "t.pl";
            EnableSsl = enableSsl;
            FromAddress = fromAddress;
            Password = password;
        }
        public string Name { get; set; }
        public string Host { get; set; }
        public int Port { get; set; }
        public bool EnableSsl { get; set; }
        public string FromAddress { get; set; }
        public string Password { get; set; }


    }
}
