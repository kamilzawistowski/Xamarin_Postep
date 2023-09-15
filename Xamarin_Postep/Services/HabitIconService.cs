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
        public static ObservableCollection<HabitIcons> HabitIcons(ObservableCollection<HabitIcons> habitIcons)
        {
            ObservableCollection<HabitIcons> imageSources = new ObservableCollection<HabitIcons>();
            imageSources.Add(new HabitIcons { IconHabit = ImageSource.FromFile("icon_plus.png") });
            imageSources.Add(new HabitIcons { IconHabit = ImageSource.FromFile("icon_plus.png") });
            imageSources.Add(new HabitIcons { IconHabit = ImageSource.FromFile("icon_plus.png") });
            imageSources.Add(new HabitIcons { IconHabit = ImageSource.FromFile("icon_plus.png") });
            imageSources.Add(new HabitIcons { IconHabit = ImageSource.FromFile("icon_plus.png") });
            return imageSources;
        }
    }
}
