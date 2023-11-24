using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;

namespace Xamarin_Postep.Services
{
    public static class StaticDataService
    {
        public static ObservableCollection<string> BodyParts = new ObservableCollection<string>() { "Klata", "Biceps", "Triceps", "Barki", "Plecy", "Dwugłowe Ud", "Czworogłowe Nóg", "Łydki", "Pośladki", "Brzuch" };
    }
}
