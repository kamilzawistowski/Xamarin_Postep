using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Windows.Input;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Prism.Navigation;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Views;
using Xamarin_Postep.Views.ListToGO.Language.English;

namespace Xamarin_Postep.ViewModels.Language
{
    class EnglishListWordsViewModel : BaseViewModel
    {

        private string categorySelected;
        public Command<EnglishWord> ItemTapped { get; }

        public Command SelectionChangedCommand { get; set; }
        public Command DeleteSelectedCommand { get; set; }
        
        public Command GoToEditPageCommand { get; set; }

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


        private EnglishWord selectedListItem;
        public EnglishWord SelectedListItem
        {
            get { return selectedListItem; }
            set
            {
                SetProperty(ref selectedListItem, value);
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
            SelectionChangedCommand = new Command(SelectionChanged);
            dataStoreWords = DependencyService.Get<IDataStore<EnglishWord>>();
            dataStoreCategory = DependencyService.Get<IDataStore<EnglishCategory>>();
            DeleteSelectedCommand = new Command<EnglishWord>(DeleteAllChecked);
            GoToEditPageCommand = new Command<EnglishWord>(GoToEditPage);
            ItemTapped = new Command<EnglishWord>(GoToEditPage);

        }

        public async void DeleteAllChecked(EnglishWord word)
        {
            await dataStoreWords.DeleteItemAsync(word.ID);
        }

        public async void GoToEditPage(EnglishWord Word)
        {
            await Shell.Current.GoToAsync($"{nameof(EnglishEditWordPage)}?{nameof(EnglishEditWordViewModel.EnglishWord)}={Word}");

        }
        public async void SelectionChanged()
        {
            
        }

    }
}
