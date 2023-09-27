using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace Xamarin_Postep.Models
{
    public class Habit
    {
        public int ID { get; set; }
        public int IdGroup { get; set; }
        public string Name { get; set; }
        public ImageSource ImageIcon { get; set; }
        public string ImagePath { get; set; }
        public DateTime DateTime { get; set; }
        public bool IsComplete { get; set; }
        
    }
}
