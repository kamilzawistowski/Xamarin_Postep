using System;
using System.Collections.Generic;
using System.Text;

namespace Xamarin_Postep.Models.Meals
{
    public class Meal
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public List<Ingredient> Ingredients { get; set; }
    }
}
