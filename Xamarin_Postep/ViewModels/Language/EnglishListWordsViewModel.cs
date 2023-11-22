using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
        public Command LoadProductCommand { get; set; }
        public Command SelectionChangedCommand { get; set; }
        public Command DeleteSelectedCommand { get; set; }
        
        public Command<EnglishWord> GoToEditPageCommand { get; set; }

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
        private ObservableCollection<EnglishWord> allWords = new ObservableCollection<EnglishWord>();
        public ObservableCollection<EnglishWord> AllWords
        {
            get {
                return allWords;
            }
            set
            {
                SetProperty(ref allWords, value);
            }
        }



        public IDataStore<EnglishWord> dataStoreWords;
        public IDataStore<EnglishCategory> dataStoreCategory;

        public EnglishListWordsViewModel(INavigation navigation)
        {
            SelectionChangedCommand = new Command(SelectionChanged);
            dataStoreWords = DependencyService.Get<IDataStore<EnglishWord>>();
            dataStoreCategory = DependencyService.Get<IDataStore<EnglishCategory>>();
            DeleteSelectedCommand = new Command<EnglishWord>(DeleteAllChecked);
            GoToEditPageCommand = new Command<EnglishWord>(GoToEditPage);
            ItemTapped = new Command<EnglishWord>(GoToEditPage);
            LoadProductCommand = new Command(async () => await ExecuteLoadCollection());
            NavigationService = navigation;
            allWords = new ObservableCollection<EnglishWord>(dataStoreWords.GetItemsAsync().Result.ToList());
        }

        public void OnAppearing()
        {
            IsBusy = true;
            ExecuteLoadCollection();
        }

        async Task ExecuteLoadCollection()
        {

            try
            {
                IsBusy = true;
                AllWords.Clear();

                var Words = App.Database.EnglishWord.Where(X => X.ID > 0);
                foreach (var item in Words)
                {
                    AllWords.Add(item);
                }
            }
            catch (Exception)
            {

                throw;
            }
            finally 
            { 
                IsBusy = false;
            }
           
        }
        public async void DeleteAllChecked(EnglishWord word)
        {
            if (word != null)
                await dataStoreWords.DeleteItemAsync(word.ID);

            ExecuteLoadCollection();
        }

        public async void GoToEditPage(EnglishWord Word)
        {
            if(Word != null)
            await NavigationService.PushAsync(new EnglishNewWordPage(Word));

        }

        public async void SelectionChanged()
        {
            
        }

    }
}
