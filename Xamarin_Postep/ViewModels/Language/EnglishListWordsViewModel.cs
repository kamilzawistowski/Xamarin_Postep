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
    class EnglishListWordsViewModel : BaseViewModel
    {

        private string categorySelected;

        public Command DeleteSelectedCommand { get; set; }
        public string CategorySelected
        {
            get { return categorySelected; }
            set
            {
                if (categorySelected != value)
                {
                    SetProperty(ref categorySelected, value);
                    AllWords = new ObservableCollection<EnglishWord>(dataStoreWords.GetItemsAsync().Result.Where(x => x.Category == categorySelected));

                }
            }
        }

        private List<string> options;
        public List<string> Options
        {
            get { return options = new List<string>(dataStoreCategory.GetItemsAsync().Result.Select(x => x.Name)); }
            set
            {
                if (options != value)
                {
                    SetProperty(ref options, value);

                }
            }
        }
        private ObservableCollection<EnglishWord> allWords { get; set; }

        public ObservableCollection<EnglishWord> AllWords
        {
            get {
                return allWords == null ? new ObservableCollection<EnglishWord>(dataStoreWords.GetItemsAsync().Result.ToList()) : new ObservableCollection<EnglishWord>(dataStoreWords.GetItemsAsync().Result.Where(x=> x.Category == categorySelected).ToList()); 
            }
            set
            {
                if (allWords != value)
                {
                    allWords = value;
                    OnPropertyChanged(nameof(AllWords));
                }
            }
        }

        public IDataStore<EnglishWord> dataStoreWords;
        public IDataStore<EnglishCategory> dataStoreCategory;

        public EnglishListWordsViewModel()
        {
            dataStoreWords = DependencyService.Get<IDataStore<EnglishWord>>();
            dataStoreCategory = DependencyService.Get<IDataStore<EnglishCategory>>();
            DeleteSelectedCommand = new Command(DeleteAllChecked);
        }

        public async void DeleteAllChecked()
        {
            var a = AllWords.ToList();
        }
    }
}
