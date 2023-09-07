using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace ProgramPostep.Services.EmailNotifyService
{
    internal interface IEmailConfig
    {
        string Host { get; set; }
        int Port { get; set; }
        bool EnableSsl { get; set; }
        string FromAddress { get; set; }
        string Password { get; set; }


    }
}
