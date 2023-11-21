using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace Xamarin_Postep.Models
{
    public class Exercise
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Category { get; set; }
        public string Series { get; set; }
        public string Repeat { get; set; }
        public string Weight { get; set; }
        public int Workout { get; set; }

    }
}
