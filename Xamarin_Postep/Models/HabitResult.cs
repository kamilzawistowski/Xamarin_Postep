using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace Xamarin_Postep.Models
{
    public class HabitResult
    {
        public int ID { get; set; }
        public ImageSource ImageIcon { get; set; }
        public string Name { get; set; }
        public string PassToToday { get; set; }
        public string PassToTheEnd { get; set; }
    }
}
