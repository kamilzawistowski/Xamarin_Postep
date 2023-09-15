using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Views.ListToGO.Language.English;

namespace Xamarin_Postep.ViewModels.Language
{
    class EnglishSettingsViewModel : BaseViewModel
    {
        public Command BackButton { get; set; }
        public Command DeleteSelectedCategoryCommand { get; set; }
        public string NewCategoryText { get; set; }
        public string SelectedOption { get; set; }

        public Command AddNewCategoryCommand { get; set; }

        private List<string> options;
        public List<string> Options
        {
            get { return options = new List<String>(dataStoreEnglishCategory.GetItemsAsync().Result.Select(x => x.Name)); }
            set
            {
                if (options != value)
                {
                    SetProperty(ref options, value);

                }
            }
        }

        public IDataStore<EnglishCategory> dataStoreEnglishCategory;


        public EnglishSettingsViewModel()
        {
            dataStoreEnglishCategory = DependencyService.Get<IDataStore<EnglishCategory>>();
            DeleteSelectedCategoryCommand = new Command(DeleteCategory);
            BackButton = new Command(BackToPreviousPage);
            AddNewCategoryCommand = new Command(AddNewCategory);
        }

        public async void BackToPreviousPage()
        {
            await Shell.Current.GoToAsync(nameof(EnglishMainPage));
        }

        public void AddNewCategory()
        {
            EnglishCategory category = new EnglishCategory();
            category.Name = NewCategoryText;
            dataStoreEnglishCategory.AddItemAsync(category);
        }

        public void DeleteCategory()
        {
            EnglishCategory category = new EnglishCategory();
            category.Name = SelectedOption;
            dataStoreEnglishCategory.DeleteItemAsync(category.ID);

        }
    }
}
