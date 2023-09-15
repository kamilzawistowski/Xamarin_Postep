using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using Microsoft.Extensions.DependencyModel;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Services;

namespace Xamarin_Postep.ViewModels.Habit
{
    public class HabitMainViewModel : BaseViewModel
    {
        private ObservableCollection<Models.Habit> habits;
        public ObservableCollection<Models.Habit> Habits
        {
            get => habits;
            set
            {
                SetProperty(ref habits, value);
            }
        }


        IDataStore<Models.Habit> dataStore;
        public HabitMainViewModel()
        {
            dataStore = DependencyService.Get<IDataStore<Models.Habit>>();
            var abc = dataStore.GetItemsAsync();
            Habits = new ObservableCollection<Models.Habit>(abc.Result);
        }
    }
}
