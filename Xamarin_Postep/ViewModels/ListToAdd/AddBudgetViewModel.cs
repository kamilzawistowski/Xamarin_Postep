using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Views;
using Xamarin_Postep.Views.ListToGO.Budget;

namespace Xamarin_Postep.ViewModels.ListToAdd
{
    class AddBudgetViewModel : BaseViewModel
    {
        public Command SettingCommand { get; set; }
        public Command AddNewSummary { get; set; }
        public Command PrzychodBtn { get; set; }
        public Command WydatekBtn { get; set; }

        public string Type { get; set; }

        private string kategoria;
        public string Kategoria
        {
            get => kategoria;
            set
            {
                SetProperty(ref kategoria, value);
            }
        }

        private decimal price;
        public decimal Price
        {
            get => price;
            set
            {
                SetProperty(ref price, value);
            }
        }


        private string text;
        public string Text
        {
            get => text;
            set
            {
                SetProperty(ref text, value);
            }
        }


        private DateTime datePicker;
        public DateTime DatePicker
        {
            get => datePicker;
            set
            {
                SetProperty(ref datePicker, value);
            }
        }

        
        private DateTime minDate;
        public DateTime MinDate
        {
            get => DateTime.Now.AddDays(-7);
            set
            {
                SetProperty(ref minDate, value);
            }
        }


        private ObservableCollection<string> categories;
        public ObservableCollection<string> Categories
        {
            get => categories;
            set
            {
                SetProperty(ref categories, value);
            }
        }

        public DateTime DateTimeForSpecifyDay { get; set; }


        IDataStore<Summary> dataStoreSummary;
        IDataStore<BudgetCategory> dataStoreBudgetCategory;

        private bool ValidateSave()
        {
            return !String.IsNullOrWhiteSpace(text) & !String.IsNullOrWhiteSpace(kategoria);
        }

        public AddBudgetViewModel(DateTime date)
        {

            DateTimeForSpecifyDay = date;
            dataStoreBudgetCategory = DependencyService.Get<IDataStore<BudgetCategory>>();
            dataStoreSummary = DependencyService.Get<IDataStore<Summary>>();


            PrzychodBtn = new Command(TypeIsPrzychod);
            WydatekBtn = new Command(TypeIsWydatek);
            SettingCommand = new Command(AddCategoryBudget);
            AddNewSummary = new Command(AddNewBudgetToDb, ValidateSave);

            this.PropertyChanged +=
                (_, __) => AddNewSummary.ChangeCanExecute();
        }

        public async void AddCategoryBudget()
        {
            await Shell.Current.GoToAsync(nameof(BudgetSettingsPage));
        }

        public async void AddNewBudgetToDb()
        {
           Summary summary = new Summary() { Category = Kategoria, Date = DatePicker, Description = $"{Char.ToUpper(Text[0]) + Text.Substring(1)}", Price = Price, Type = Type };
           await dataStoreSummary.AddItemAsync(summary);
            MessagingCenter.Send(this, "DisplayAlert", $"Pomyslnie Dodano \n {Type} - {text} - {price} ");
            Text = string.Empty;
            Price = 0;
        }


        public void TypeIsPrzychod()
        {
            Type = "Przychod";
            Categories = new ObservableCollection<string>(dataStoreBudgetCategory.GetItemsAsync().Result.Where(x => x.Type == Type).Select(x => x.Name).ToList());

        }
        public void TypeIsWydatek()
        {
            Type = "Wydatek";
            Categories = new ObservableCollection<string>(dataStoreBudgetCategory.GetItemsAsync().Result.Where(x => x.Type == Type).Select(x => x.Name).ToList());

        }
    }
}
