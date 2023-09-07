using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Spire.Email;

namespace ProgramPostep.Services.EmailNotifyService
{
    internal interface IEmailMessage
    {
        string Body { get; set; }
        string Subject { get; set; }
        string Name { get; set; }
        DateTime DateTimeToSend { get; set; }
        string AddressFrom { get; set; }
        string AddressTo { get; set; }
    }
}
