using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Models;

namespace Xamarin_Postep.ViewModels.Language
{
    [QueryProperty(nameof(EnglishWord), nameof(EnglishWord))]

    class EnglishEditWordViewModel : BaseViewModel
    {

        public Command<EnglishWord> ItemTapped { get; }

        private EnglishWord englishWord;
        public EnglishWord EnglishWord
        {
            get
            {
                return englishWord;
            }
            set
            {
                englishWord = value;
            }
        }

        private string wordEnglish;
        private string WordPolish;
        public string WordEnglish
        {
            get { return wordEnglish; }
            set
            {
                SetProperty(ref wordEnglish, value);
            }

        }

        public EnglishEditWordViewModel(EnglishWord model)
        {
            EnglishWord = model;
            WordEnglish = model.WordEnglish;
        }
        public EnglishEditWordViewModel()
        {
            ItemTapped = new Command<EnglishWord>(GetItem);
        }
        public void GetItem(EnglishWord e)
        {

        }

    }
}
