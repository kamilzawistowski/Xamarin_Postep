using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Models.Meals;

namespace Xamarin_Postep.ViewModels.Meals
{
    public class MealsSettingsViewModel : BaseViewModel
    {
        public Command AddNewIngredientBtn { get; set; }

        
        private int newIngredientPriceEntry;
        public int NewIngredientPriceEntry
        {
            get { return newIngredientPriceEntry; }
            set
            {
                SetProperty(ref newIngredientPriceEntry, value);
            }
        }
        private string newMealEntry;
        public string NewMealEntry
        {
            get { return newMealEntry; }
            set
            {
                SetProperty(ref newMealEntry, value);
            }
        }


        private ObservableCollection<Ingredient> ingediants;
        public ObservableCollection<Ingredient> Ingediants
        {
            get => GetIngredients();
            set
            {
                SetProperty(ref ingediants, value);
            }
        }

        private string newIngredientNameEntry;
        public string NewIngredientNameEntry
        {
            get { return newIngredientNameEntry; }
            set
            {
                SetProperty(ref newIngredientNameEntry, value);
            }
        }

        IDataStore<Ingredient> dataStore;


        public MealsSettingsViewModel()
        {
            dataStore = DependencyService.Get<IDataStore<Ingredient>>();
            AddNewIngredientBtn = new Command(AddIngredient);    
        }

        public async void AddIngredient()
        {
            Ingredient ingredient = new Ingredient() { Name = NewIngredientNameEntry, Price = NewIngredientPriceEntry };
            dataStore.AddItemAsync(ingredient); 
        }

        private ObservableCollection<Ingredient> GetIngredients()
            {
            ObservableCollection<Ingredient> result = new ObservableCollection<Ingredient>(dataStore.GetItemsAsync().Result);

           
            return result;
        }
    }
}
