using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace Xamarin_Postep.Models
{
    public class Habit
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public ImageSource Image { get; set; }
        public DateTime DateTime { get; set; }
        public bool IsComplete { get; set; }
    }
}
