using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Services;
using static System.Net.Mime.MediaTypeNames;

namespace Xamarin_Postep.ViewModels.Habit
{
    public class NewHabitViewModel : BaseViewModel
    {
        public Command NewHabitCommand { get; set; }

        private ObservableCollection<string> kategoria = new ObservableCollection<string>() { "Zakupy", "Mieszkanie", "Ivy", "Abonamenty", "Pielegnacje", "Zdrowie", "Ubrania", "Podroze", "Ksiazki", "Rozliczenia i dlugi" };
        public ObservableCollection<string> Kategoria
        {
            get => kategoria;
            set
            {
                SetProperty(ref kategoria, value);
            }
        }

        private IEnumerable<Models.HabitRepository> habitstest;
        

        private HabitIcon selectedIcon;
        public HabitIcon SelectedIcon
        {
            get => selectedIcon;
            set 
            {
                SetProperty(ref selectedIcon, value);
            }
        }
        
        private string selectedCategory;
        public string SelectedCategory
        {
            get => selectedCategory;
            set
            {
                SetProperty(ref selectedCategory, value);
            }
        }

        private ObservableCollection<HabitIcon> habits;
        public ObservableCollection<HabitIcon> Habits
        {
            get => HabitIconService.HabitIcons(habits);
            set
            {
                SetProperty(ref habits, value);
            }
        }
        private string habitName;
        public string HabitName
        {
            get => habitName;
            set
            {
                SetProperty(ref habitName, value);
            }
        }

        IDataStore<Models.HabitRepository> dataStore;

        private bool ValidateSave()
        {
            return !String.IsNullOrWhiteSpace(HabitName) && !habitstest.Any(x => x.Name == habitName) && selectedIcon != null;
        }

        public NewHabitViewModel()
        {
            dataStore = DependencyService.Get<IDataStore<Models.HabitRepository>>();
            NewHabitCommand = new Command(AddNewHabit, ValidateSave);
            habits = new ObservableCollection<HabitIcon>();
            habitstest = dataStore.GetItemsAsync().Result;

            this.PropertyChanged +=
                (_, __) => NewHabitCommand.ChangeCanExecute();
        }
        public void AddNewHabit()
        {
            var name = HabitName;
            var icon = selectedIcon;
            var category = selectedCategory;
            var icon2 = selectedIcon.IconHabit.ToString();
            

            //var result = Convert.ToByte(selectedIcon.IconHabit);
            //string imageBase64 = Convert.ToBase64String(result);
            ////Convert Base64string to Stream.  

            //byte[] bytes = System.Convert.FromBase64String(imageBase64);
            //testImage.Source = ImageSource.FromStream(() => new MemoryStream(bytes));

            //Models.Habit habit = new Models.Habit() { ImagePath = selectedIcon.IconHabit.ToString().Substring(6),Name = HabitName, DateTime = DateTime.Now};
            //dataStore.AddItemAsync(habit);
            dataStore.GetItemsAsync();

            PopulateDateList();
            MessagingCenter.Send(this, "DisplayAlert", $"Pomyslnie Dodano {HabitName}");

            HabitName = string.Empty;
            Shell.Current.GoToAsync("..");

        }

        private ObservableCollection<DateTime> dateList;
        public ObservableCollection<DateTime> DateList
        {
            get { return dateList; }
            set
            {
                dateList = value;
                OnPropertyChanged(nameof(DateList));
            }
        }

        private void PopulateDateList()
        {
            int idForLast = 0;
            DateList = new ObservableCollection<DateTime>();
            DateTime today = DateTime.Today;
            DateTime lastDayOfYear = new DateTime(today.Year, 12, 31);

            // Calculate the number of days remaining in the current year
            int daysRemaining = (int)(lastDayOfYear - today).TotalDays;
            var countHabits = dataStore.GetItemsAsync().Result.Count();
            if (countHabits > 0)
            {
                idForLast = dataStore.GetItemsAsync().Result.Last().IdGroup;
                idForLast += 1;
            }
            for (int i = 0; i <= daysRemaining; i++)
            {
                dataStore.AddItemAsync(new Models.HabitRepository() { ImagePath = selectedIcon.IconHabit.ToString().Substring(6), Name = HabitName, DateTime = today.AddDays(i),IdGroup = idForLast });
            }
        }



    }
}
