using System;
using System.Collections.Generic;
using System.Text;

namespace Xamarin_Postep.Models
{
    public class Quest
    {
        
        public int ID { get; set; }
        public string Content { get; set; }
        public DateTime Date { get; set; }
        public DateTime DateToPushNotify { get; set; }
        public bool IsComplete { get; set; }

    }
}
