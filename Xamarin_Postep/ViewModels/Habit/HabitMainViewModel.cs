using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
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
        //private ObservableCollection<Models.Habit> habits;
        //public ObservableCollection<Models.Habit> Habits
        //{
        //    get => GetPhotosFromIconPath(habits);
        //    set
        //    {
        //        SetProperty(ref habits, value);
        //    }
        //}

        private ObservableCollection<Models.HabitResult> habits;
        public ObservableCollection<Models.HabitResult> Habits
        {
            get => GroupHabits(new ObservableCollection<Models.Habit>(dataStore.GetItemsAsync().Result));
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
            //Habits = new ObservableCollection<Models.Habit>(abc.Result);
        }

        public ObservableCollection<Models.Habit> GetPhotosFromIconPath(ObservableCollection<Models.Habit> Habits)
        {
            foreach (var item in Habits)
            {
                item.ImageIcon = new FileImageSource().File = item.ImagePath;
            }
            return Habits;
        }



        public ObservableCollection<Models.HabitResult> GroupHabits(ObservableCollection<Models.Habit> Habits)
        {
            int IdForGroup = 0;
            ObservableCollection<Models.HabitResult> HabitsResult = new ObservableCollection<Models.HabitResult>();
            int HabitPass = 0;
            int HabitPassToToday = 0;
            int CountForGroup = 0;
            int CountForGroupToToday = 0;

            if (Habits.Count > 0)
            {
                for (int i = 0; i < Habits.Count; i++)
                {
                    if (Habits[i].IdGroup == IdForGroup)
                    {
                        CountForGroup++;
                        if (Habits[i].IsComplete == true)
                        {
                            
                            HabitPass++;
                        }
                        if (Habits[i].DateTime.DayOfYear <= DateTime.Now.DayOfYear)
                        {

                            if (Habits[i].IsComplete == true)
                            {

                                HabitPassToToday++;
                            }
                            CountForGroupToToday++;

                        }

                    }
                    else
                    {
                        HabitsResult.Add(new Models.HabitResult { ImageIcon = new FileImageSource().File = Habits[i - 1].ImagePath, Name = Habits[i - 1].Name, PassToToday = $"{HabitPassToToday}" + "/" + $"{CountForGroupToToday}", PassToTheEnd = $"{HabitPass}" + "/" + $"{CountForGroup}" });
                        IdForGroup++;
                        HabitPass = 0;
                        CountForGroup = 0;
                        HabitPassToToday = 0;
                        CountForGroupToToday = 0;
                        i -= 1;
                    }

                    if(i == Habits.Count-1)
                    {
                        HabitsResult.Add(new Models.HabitResult { ImageIcon = new FileImageSource().File = Habits[i - 1].ImagePath, Name = Habits[i - 1].Name, PassToToday = $"{HabitPassToToday}" + "/" + $"{CountForGroupToToday}", PassToTheEnd = $"{HabitPass}" + "/" + $"{CountForGroup}" });
                    }
                }
            }
            return HabitsResult;
        }
    }
}
