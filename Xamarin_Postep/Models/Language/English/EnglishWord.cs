using System;
using System.Collections.Generic;
using System.Text;

namespace Xamarin_Postep.Models
{
    public class EnglishWord
    {
        public int ID { get; set; }
        public DateTime DateTime { get; set; }
        public string WordEnglish { get; set; }
        public string WordPolish { get; set; }
        public int Pass { get; set; }
        public string Category { get; set; }
    }
}
