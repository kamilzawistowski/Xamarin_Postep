using System;
using System.Collections.Generic;
using System.Text;

namespace Xamarin_Postep.Models.Meals
{
    public class Ingredient
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Price { get; set; }
        public string Kcal { get; set; }
        public int Protein { get; set; }
        public int Carbohydrates { get; set; }
        public int Fat { get; set; }
    }
}
