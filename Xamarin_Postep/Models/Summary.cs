using System;
using System.Collections.Generic;
using System.Text;

namespace Xamarin_Postep.Models
{
    public class Summary
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string Type { get; set; }
        public string Category { get; set; }
        public string Price { get; set; }
        public DateTime Date { get; set; }
    }
}
