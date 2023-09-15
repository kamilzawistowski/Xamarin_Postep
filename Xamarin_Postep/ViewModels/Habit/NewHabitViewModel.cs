using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
        public ICommand NewHabitCommand { get; set; }

        private ObservableCollection<string> kategoria = new ObservableCollection<string>() { "Zakupy", "Mieszkanie", "Ivy", "Abonamenty", "Pielegnacje", "Zdrowie", "Ubrania", "Podroze", "Ksiazki", "Rozliczenia i dlugi" };
        public ObservableCollection<string> Kategoria
        {
            get => kategoria;
            set
            {
                SetProperty(ref kategoria, value);
            }
        }

        private HabitIcons selectedIcon;
        public HabitIcons SelectedIcon
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


        private ObservableCollection<HabitIcons> habits;
        public ObservableCollection<HabitIcons> Habits
        {
            get => HabitIconService.HabitIcons(habits);
            set
            {
                SetProperty(ref habits, value);
            }
        }
        public string HabitName { get; set; }

        IDataStore<Models.Habit> dataStore;

        public NewHabitViewModel()
        {
            dataStore = DependencyService.Get<IDataStore<Models.Habit>>();
            NewHabitCommand = new Command(AddNewHabit);
            habits = new ObservableCollection<HabitIcons>();
        }
        public void AddNewHabit()
        {
            var name = HabitName;
            var icon = selectedIcon;
            var category = selectedCategory;
            Models.Habit habit = new Models.Habit() {Image = icon.IconHabit, Name = name,DateTime = DateTime.Now};
            dataStore.AddItemAsync(habit);
        }
    }
}
