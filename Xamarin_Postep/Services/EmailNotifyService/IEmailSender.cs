using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Spire.Email;

namespace ProgramPostep.Services.EmailNotifyService
{
    internal interface IEmailSender
    {
        void SendEmail(IEmailConfig smtpConfig, IEmailMessage message);
        void GetMailBoxInfo(IEmailConfig pop3Config);
    }
}
