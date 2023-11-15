using System;
using System.Collections.Generic;
using System.Text;

namespace Xamarin_Postep.Models
{
    public class Exercise
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Category { get; set; }
        public string Series { get; set; }
        public string Repeat { get; set; }
    }
}
