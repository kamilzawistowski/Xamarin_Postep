using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;

namespace Xamarin_Postep.ViewModels.Language
{
    class EnglishEditWordViewModel : BaseViewModel
    {

        public Command<EnglishWord> ItemTapped { get; }


        public Command EditCommand { get; set; }

        private EnglishWord englishWord;
        public EnglishWord EnglishWord
        {
            get
            {
                return englishWord;
            }
            set
            {
                SetProperty(ref englishWord, value);
            }
        }

        private ObservableCollection<string> options;
        public ObservableCollection<string> Options
        {
            get
            {
                return options = new ObservableCollection<string>(dataStore.GetItemsAsync().Result.Select(x => x.Name).ToList());

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

        private string wordPolish;
        public string WordPolish
        {
            get { return wordPolish; }
            set
            {
                SetProperty(ref wordPolish, value);
            }
        }

        private string wordEnglish;
        public string WordEnglish
        {
            get { return wordEnglish; }
            set
            {
                SetProperty(ref wordEnglish, value);
            }

        }
        IDataStore<EnglishCategory> dataStore;
        IDataStore<EnglishWord> dataStoreEnglishWord;
        public EnglishEditWordViewModel(EnglishWord model)
        {
            
            dataStore = DependencyService.Get<IDataStore<EnglishCategory>>();
            dataStoreEnglishWord = DependencyService.Get<IDataStore<EnglishWord>>();
            
            EditCommand = new Command(OnAddItem);
        }

        public EnglishEditWordViewModel()
        {
            
        }
        public void OnAddItem()
        {
           // dataStoreEnglishWord.UpdateItemAsync();
        }

    }
}
