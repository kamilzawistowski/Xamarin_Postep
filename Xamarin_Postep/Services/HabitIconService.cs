using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Models;

namespace Xamarin_Postep.Services
{
    public static class HabitIconService
    {
        public static ObservableCollection<HabitIcon> HabitIcons(ObservableCollection<HabitIcon> habitIcons)
        {
            ObservableCollection<HabitIcon> imageSources = new ObservableCollection<HabitIcon>();
            imageSources.Add(new HabitIcon { IconHabit = ImageSource.FromFile("ciezarki.png") });
            imageSources.Add(new HabitIcon { IconHabit = ImageSource.FromFile("ksiazka.png") });
            imageSources.Add(new HabitIcon { IconHabit = ImageSource.FromFile("las.png") });
            imageSources.Add(new HabitIcon { IconHabit = ImageSource.FromFile("lotos.png") });
            imageSources.Add(new HabitIcon { IconHabit = ImageSource.FromFile("marchewka.png") });
            imageSources.Add(new HabitIcon { IconHabit = ImageSource.FromFile("stopy.png") });
            imageSources.Add(new HabitIcon { IconHabit = ImageSource.FromFile("weganizm.png") });
            return imageSources;
        }
     
    }
}
