using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using Microcharts;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Views.ListToGO.Language.English;

namespace Xamarin_Postep.ViewModels.Language
{
    class EnglishTestViewModel : BaseViewModel
    {
        private string polishWordForm;
        private string englishWordForCheck;
        private string englishWordTimeTest;
        private int pass;
        public Command BackButton { get; set; }
        public Command CheckWordCommand { get; set; }
        public Command KnowAnswerCommand { get; set; }
        public Command DontKnowAnswerCommand { get; set; }

        private List<string> options;
        public List<string> Options
        {
            get { return options = new List<string>(dataStoreEnglishCategory.GetItemsAsync().Result.Select(x => x.Name)); }
            set
            {
                if (options != value)
                {
                    SetProperty(ref options, value);
                }
            }
        }
        public int Pass
        {
            get { return pass; }
            set
            {
                    SetProperty(ref pass, value);
            }
        }
        public string EnglishWordTimeTest
        {
            get { return englishWordForCheck; }
            set
            {
                if (englishWordForCheck != value)
                {
                    SetProperty(ref englishWordForCheck, value);
                }
            }
        }
        public string EnglishWordForCheck
        {
            get { return englishWordForCheck; }
            set
            {
                if (englishWordForCheck != value)
                {
                    SetProperty(ref englishWordForCheck, value);
                }
            }
        }
        public string PolishWordForm
        {
            get { return polishWordForm; }
            set
            {
                if (polishWordForm != value)
                {
                    SetProperty(ref polishWordForm, value);

                }
            }
        }

        private bool ValidateSave()
        {
            return EnglishWordForCheck != null;
        }

        public IDataStore<EnglishWord> dataStoreEnglishWord;
        public IDataStore<EnglishCategory> dataStoreEnglishCategory;
        public List<EnglishWord> AllWords { get; set; }

        public int numberOfIteration = 0;


        public EnglishTestViewModel(string category)
        {
            dataStoreEnglishWord = DependencyService.Get<IDataStore<EnglishWord>>();
            dataStoreEnglishCategory = DependencyService.Get<IDataStore<EnglishCategory>>();
            BackButton = new Command(BackToPreviousPage);
            CheckWordCommand = new Command(NextWordAndCheck, ValidateSave);
            CheckWordCommand = new Command(NextWordAndCheck);
            KnowAnswerCommand = new Command(TimeTestKnowAnswer);
            DontKnowAnswerCommand = new Command(TimeTestDONTKnowAnswer);

            this.PropertyChanged +=
               (_, __) => CheckWordCommand.ChangeCanExecute();
            if (category == null)
            {
                AllWords = Shuffle(dataStoreEnglishWord.GetItemsAsync().Result.ToList());
            }
            else
            {
                AllWords = Shuffle(dataStoreEnglishWord.GetItemsAsync().Result.Where(x => x.Category == category).ToList());

            }

            if (AllWords.Count > 0)

            PolishWordForm = AllWords[numberOfIteration].WordPolish;
            EnglishWordTimeTest = AllWords[numberOfIteration].WordEnglish;
            Pass = AllWords[numberOfIteration].Pass;
        }

        public void TimeTestKnowAnswer()
        {
            
                AllWords[numberOfIteration].Pass += 1;
                dataStoreEnglishWord.UpdateItemAsync(AllWords[numberOfIteration]);
            
            var abc = dataStoreEnglishWord.GetItemsAsync().Result.ToList();

            numberOfIteration++;

            if (numberOfIteration == AllWords.Count)
            {
                Shell.Current.GoToAsync(nameof(EnglishMainPage));
                numberOfIteration = 0;
                return;
            }
            this.PolishWordForm = AllWords[numberOfIteration].WordPolish;
            this.EnglishWordTimeTest = AllWords[numberOfIteration].WordEnglish;
            this.Pass = AllWords[numberOfIteration].Pass;
        }

        public void TimeTestDONTKnowAnswer()
        {
            var abc = dataStoreEnglishWord.GetItemsAsync().Result.ToList();

            numberOfIteration++;

            if (numberOfIteration == AllWords.Count)
            {
                Shell.Current.GoToAsync(nameof(EnglishMainPage));
                numberOfIteration = 0;
                return;
            }
            this.PolishWordForm = AllWords[numberOfIteration].WordPolish;
            this.EnglishWordTimeTest = AllWords[numberOfIteration].WordEnglish;
            this.Pass = AllWords[numberOfIteration].Pass;
        }


        public void NextWordAndCheck()
        {
            if (EnglishWordForCheck.ToLower() == AllWords[numberOfIteration].WordEnglish.ToLower())
            {
                AllWords[numberOfIteration].Pass += 1;
                dataStoreEnglishWord.UpdateItemAsync(AllWords[numberOfIteration]);
            }
            var abc = dataStoreEnglishWord.GetItemsAsync().Result.ToList();

            numberOfIteration++;
           
            if (numberOfIteration == AllWords.Count)
            {
                Shell.Current.GoToAsync(nameof(EnglishMainPage));
                numberOfIteration = 0;
                return;
            }
            this.PolishWordForm = AllWords[numberOfIteration].WordPolish;
            this.EnglishWordTimeTest = AllWords[numberOfIteration].WordEnglish;
            this.Pass = AllWords[numberOfIteration].Pass;
        }

        public async void BackToPreviousPage()
        {
            await Shell.Current.GoToAsync("..");
        }

        public static List<T> Shuffle<T>(List<T> list)
        {

            Random rng = new Random();
            int n = list.Count;
            while (n > 1)
            {
                n--;
                int k = rng.Next(n + 1);
                T value = list[k];
                list[k] = list[n];
                list[n] = value;
            }
            return list;
        }
    }
}
