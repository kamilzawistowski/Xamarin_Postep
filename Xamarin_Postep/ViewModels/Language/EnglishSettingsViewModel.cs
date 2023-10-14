using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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
        public Command DeleteSelectedCategoryCommand { get; set; }
        public string NewCategoryText { get; set; }
        public EnglishCategory SelectedOption { get; set; }

        public Command AddNewCategoryCommand { get; set; }

        private ObservableCollection<EnglishCategory> options;
        public ObservableCollection<EnglishCategory> Options
        {
            get { return options = new ObservableCollection<EnglishCategory>(dataStoreEnglishCategory.GetItemsAsync().Result); }
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
            category = SelectedOption;
            dataStoreEnglishCategory.DeleteItemAsync(category.ID);

        }
    }
}
