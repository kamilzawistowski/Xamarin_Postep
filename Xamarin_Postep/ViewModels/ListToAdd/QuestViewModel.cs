using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;

namespace Xamarin_Postep.ViewModels.ListToAdd
{
    class QuestViewModel : BaseViewModel
    {
        public Command OnQuestAdd { get; set; }
        private TimeSpan timeContent;
        public TimeSpan TimeContent
        {
            get => timeContent;
            set
            {
                SetProperty(ref timeContent, value);
            }
        }
        private string questContent;

        public string QuestContent
        {
            get => questContent
;
            set
            {
                SetProperty(ref questContent, value);
            }
        }

        private string dayStartSelectedItem;

        public string DayStartSelectedItem
        {
            get => dayStartSelectedItem
;
            set
            {
                SetProperty(ref dayStartSelectedItem, value);
            }
        }

        private string repeatSelectedItem;

        public string RepeatSelectedItem
        {
            get => repeatSelectedItem
;
            set
            {
                SetProperty(ref repeatSelectedItem, value);
            }
        }


        private DateTime date;

        public DateTime Date
        { 
            get => date;
            set
            {
                SetProperty(ref date, value);
            }
        }
        
            
        private ObservableCollection<string> repeatCategory = new ObservableCollection<string>() { "Brak", "Codziennie", "Co 2 dni", "Co 3 dni", "Raz na tydzień", "Raz na 2 tyg.", "Raz na miesiąc"};
        public ObservableCollection<string> RepeatCategory
        {
            get => repeatCategory;
            set
            {
                SetProperty(ref repeatCategory, value);
            }
        }


        private ObservableCollection<string> dayStart = new ObservableCollection<string>() {"Dziś","Poniedziałek", "Wtorek", "Środa", "Czwartek", "Piątek", "Sobota", "Niedziela" };
        public ObservableCollection<string> DayStart
        {
            get => dayStart;
            set
            {
                SetProperty(ref dayStart, value);
            }
        }



        IDataStore<Quest> dataStore;

        public QuestViewModel(DateTime date)
        {
            dataStore = DependencyService.Get<IDataStore<Quest>>();
            OnQuestAdd = new Command(OnBtnQuestAdd);
            this.date = date;
        }

        public void OnBtnQuestAdd()
        {
           

            switch (dayStartSelectedItem)
            {
                case "Dziś":
                    break;
                case "Poniedziałek":
                    break;
                case "Wtorek":
                    break;
                case "Środa":
                    break;
                case "Czwartek":
                    break;
                case "Piątek":
                    break;
                case "Sobota":
                    break;
                case "Niedziela":
                    break;
                default:
                    break;
            }

            switch (repeatSelectedItem)
            {
                case "Brak":
                    break;
                case "Codziennie":
                    break;
                case "Co 2 dni":
                    break;
                case "Co 3 dni":
                    break;
                case "Raz na tydzień":
                    break;
                case "Raz na 2 tyg.":
                    break;
                case "Raz na miesiąc":
                    break;

            }

            DateTime dateToPushNotify = new DateTime(date.Year, date.Month, date.Day, TimeContent.Hours, TimeContent.Minutes, TimeContent.Seconds);
            Quest quest = new Quest() { Date = Date,Content = QuestContent,DateToPushNotify = dateToPushNotify, };
            dataStore.AddItemAsync(quest);
        }


    }
}
