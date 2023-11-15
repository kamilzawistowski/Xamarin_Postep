using System;
using System.Collections.Generic;
using System.Text;

namespace Xamarin_Postep.Models
{
    public class Workout
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime DateTime { get; set; }
        public string Minutes { get; set; }
        public List<Exercise> Exercise { get; set; }

    }
}
