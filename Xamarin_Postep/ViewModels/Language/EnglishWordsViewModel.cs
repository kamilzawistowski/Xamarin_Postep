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
    class EnglishWordsViewModel : BaseViewModel
    {
        public string EnglishWord { get; set; }
        public string PolishWord { get; set; }
        public Command<EnglishWord> AddWordCommand { get; set; }
        public Command BackButton { get; set; }

        private EnglishWord wordEnglish;
        public EnglishWord WordEnglish
        {
            get
            {
                return wordEnglish;
            }
            set
            {
                SetProperty(ref wordEnglish, value);
            }
        }

        private ObservableCollection<string> options;
        public ObservableCollection<string> Options
        {
            get {
                return options = new ObservableCollection<string>(dataStoreEnglishCategory.GetItemsAsync().Result.Select(x => x.Name).ToList()); 

            }
            set
            {
                if (options != value)
                {
                    SetProperty(ref options, value);
                }
            }
        }

        private string selectedOption;
        public string SelectedOption
        {
            get { return selectedOption; }
            set
            {
                if (selectedOption != value)
                {
                    SetProperty(ref selectedOption, value);

                }
            }
        }

        public IDataStore<EnglishWord> dataStoreEnglishWord;
        public IDataStore<EnglishCategory> dataStoreEnglishCategory;

        public EnglishWordsViewModel()
        {
            dataStoreEnglishWord = DependencyService.Get<IDataStore<EnglishWord>>();
            dataStoreEnglishCategory = DependencyService.Get<IDataStore<EnglishCategory>>();
            //options = new List<string>(dataStoreEnglishCategory.GetItemsAsync().Result.Select(x => x.Name));
            BackButton = new Command(BackToPreviousPage);
            AddWordCommand = new Command<EnglishWord>(OnAddItem);
            WordEnglish = new EnglishWord();
        }
        public EnglishWordsViewModel(EnglishWord word) : base()
        {
            
        }
        public async void OnAddItem(EnglishWord word)
        {
            if (word.ID < 0)
            {
                dataStoreEnglishWord.UpdateItemAsync(word);
                await Shell.Current.GoToAsync("..");
            }
            else
            {
                dataStoreEnglishWord.AddItemAsync(new Models.EnglishWord() { DateTime = DateTime.Today, WordEnglish = WordEnglish.WordEnglish, WordPolish = WordEnglish.WordPolish, Category = WordEnglish.Category });
            }
        }

        public List<string> GenerateListOfTheme()
        {
            var listCategory = new List<string>(dataStoreEnglishCategory.GetItemsAsync().Result.Select(x=>x.Name));
            return listCategory;
        }
        public async void BackToPreviousPage()
        {
            await Shell.Current.GoToAsync("..");
        }

    }
}
 