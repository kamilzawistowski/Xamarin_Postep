using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Windows.Input;
using Microsoft.Extensions.DependencyModel;
using Plugin.CloudFirestore;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Services;

namespace Xamarin_Postep.ViewModels.Habit
{
    public class HabitMainViewModel : BaseViewModel
    {

        private ObservableCollection<Models.HabitResult> habits;
        public ObservableCollection<Models.HabitResult> Habits
        {
            get => GroupHabits(new ObservableCollection<Models.Habit>(dataStore.GetItemsAsync().Result));
            set
            {
                SetProperty(ref habits, value);
            }
        }

        private HabitResult selectedItem;
        public HabitResult SelectedItem
        {
            get => selectedItem;
            set
            {
                SetProperty(ref selectedItem, value);
            }
        }
        public Command DeleteTask { get;set; }

        private bool ValidateSave()
        {
            return selectedItem != null;
        }

        IDataStore<Models.Habit> dataStore;
        public HabitMainViewModel()
        {
            DeleteTask = new Command(OnDeleteBtnClick, ValidateSave);
            dataStore = DependencyService.Get<IDataStore<Models.Habit>>();
            var abc = dataStore.GetItemsAsync();

            this.PropertyChanged +=
                (_, __) => DeleteTask.ChangeCanExecute();
   
        }

        public void OnDeleteBtnClick()
        {
            var idGroup = dataStore.GetItemsAsync().Result.Where(x => x.Name == SelectedItem.Name).Select(x => x.IdGroup).FirstOrDefault();
            dataStore.DeleteItemAsync(idGroup);
            MessagingCenter.Send(this, "DisplayAlert", $"Pomyslnie usunięto nawyk {SelectedItem.Name}");
            Shell.Current.GoToAsync("..");

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
            int HabitPass = 0;
            int HabitPassToToday = 0;
            int CountForGroup = 0;
            int CountForGroupToToday = 0;
            string ImageIcon = "";
            string Name = "";
            ObservableCollection<Models.HabitResult> HabitsResult = new ObservableCollection<Models.HabitResult>();
            List<IGrouping<int,Models.Habit>> HabitsResult2 = new List<IGrouping<int, Models.Habit>>(dataStore.GetItemsAsync().Result.GroupBy(x => x.IdGroup).ToList());
            foreach (var group in HabitsResult2)
            {
                foreach (var item in group)
                {
                    CountForGroup++;
                    if (item.IsComplete == true)
                        {
                            HabitPass++;
                        }
                        if (item.DateTime.DayOfYear <= DateTime.Now.DayOfYear)
                        {
                            if (item.IsComplete == true)
                            {
                                HabitPassToToday++;
                            }
                            CountForGroupToToday++;
                        }
                    ImageIcon = item.ImagePath;
                    Name = item.Name;
                }
                HabitsResult.Add(new Models.HabitResult { ImageIcon = new FileImageSource().File = ImageIcon, Name = Name, PassToToday = $"{HabitPassToToday}" + "/" + $"{CountForGroupToToday}", PassToTheEnd = $"{HabitPass}" + "/" + $"{CountForGroup}" });
                HabitPass = 0;
                CountForGroup = 0;
                HabitPassToToday = 0;
                CountForGroupToToday = 0;
            }
            return HabitsResult;

        }
    }
}
