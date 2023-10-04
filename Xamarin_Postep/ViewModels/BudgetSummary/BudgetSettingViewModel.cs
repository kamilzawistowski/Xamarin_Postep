using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using Xamarin.Forms;
using SkiaSharp;
using Microcharts;
using Xamarin_Postep.Models;
using Xamarin_Postep.Interfaces;
using System.Linq;

namespace Xamarin_Postep.ViewModels.BudgetSummary
{
    
    public class BudgetSettingViewModel : BaseViewModel
    {

        public Command DeleteSelectedCategoryCommand { get; set; }
        public string NewCategoryWydatekText { get; set; }
        public string NewCategoryPrzychodText { get; set; }
        public BudgetCategory SelectedOption { get; set; }

        public Command AddNewCategoryWydatekCommand { get; set; }
        public Command AddNewCategoryPrzychodCommand { get; set; }

        private ObservableCollection<BudgetCategory> options;
        public ObservableCollection<BudgetCategory> Options
        {
            get { return options = new ObservableCollection<BudgetCategory>(dataStore.GetItemsAsync().Result); }
            set
            {
                if (options != value)
                {
                    SetProperty(ref options, value);

                }
            }
        }

         IDataStore<BudgetCategory> dataStore;

        public BudgetSettingViewModel()
        {
            dataStore = DependencyService.Get<IDataStore<BudgetCategory>>();

            DeleteSelectedCategoryCommand = new Command(DeleteCategory);
            AddNewCategoryWydatekCommand = new Command(AddNewWydatekCategory);
            AddNewCategoryPrzychodCommand = new Command(AddNewPrzychodCategory);
        }
        public void AddNewWydatekCategory()
        {
            BudgetCategory category = new BudgetCategory();
            category.Name = NewCategoryWydatekText;
            category.Type = "Wydatek";
            dataStore.AddItemAsync(category);
        }
        public void AddNewPrzychodCategory()
        {
            BudgetCategory category = new BudgetCategory();
            category.Name = NewCategoryPrzychodText;
            category.Type = "Przychod";
            dataStore.AddItemAsync(category);
        }


        public void DeleteCategory()
        {
            BudgetCategory category = new BudgetCategory();
            category = SelectedOption;
            dataStore.DeleteItemAsync(category.ID);

        }
    }
    
    
}
