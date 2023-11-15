using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using Plugin.Messaging;
using ProgramPostep.Services.EmailNotifyService.T.PL;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Services.NotificationService;
using static System.Net.Mime.MediaTypeNames;

namespace Xamarin_Postep.ViewModels.ListToAdd
{
    public class QuestViewModel : BaseViewModel
    {
        public Command OnQuestAdd { get; }
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

        private string dayStartSelectedItem = "Dziś";

        public string DayStartSelectedItem
        {
            get => dayStartSelectedItem
;
            set
            {
                SetProperty(ref dayStartSelectedItem, value);
            }
        }

        private string repeatSelectedItem = "Brak";

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

        public DateTime DatePicker
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
        private bool ValidateSave()
        {
            return !String.IsNullOrWhiteSpace(questContent);
        }


        IDataStore<Models.Quest> dataStore;

        public QuestViewModel(DateTime date)
        {
            dataStore = DependencyService.Get<IDataStore<Models.Quest>>();
            OnQuestAdd = new Command(OnBtnQuestAdd, ValidateSave);
            this.PropertyChanged +=
                (_, __) => OnQuestAdd.ChangeCanExecute();
            DatePicker = date;
        }

        public void OnBtnQuestAdd()
        {
            DateTime dateTime = date;
            switch (dayStartSelectedItem)
            {
                case "Dziś":
                    break;
                case "Poniedziałek":
                    getDayInWeek(ref dateTime, "Monday");
                    break;
                case "Wtorek":
                    getDayInWeek(ref dateTime, "Tuesday");
                    break;
                case "Środa":
                    getDayInWeek(ref dateTime, "Wednesday");

                    break;
                case "Czwartek":
                    getDayInWeek(ref dateTime, "Thursday");

                    break;
                case "Piątek":
                    getDayInWeek(ref dateTime, "Friday");

                    break;
                case "Sobota":
                    getDayInWeek(ref dateTime, "Saturday");

                    break;
                case "Niedziela":
                    getDayInWeek(ref dateTime, "Sunday");
                    break;
                default:
                    break;
            }

            switch (repeatSelectedItem)
            {
                case "Brak":
                    dataStore.AddItemAsync(new Models.Quest() { DateToPushNotify = new DateTime(dateTime.Year, dateTime.Month, dateTime.Day, TimeContent.Hours, TimeContent.Minutes, 0), Content = $"{Char.ToUpper(QuestContent[0]) + QuestContent.Substring(1)}", Date = dateTime });
                    break;
                case "Codziennie":
                    PopulateDateList(dateTime, 1);
                    break;
                case "Co 2 dni":
                    PopulateDateList(dateTime, 2);
                    break;
                case "Co 3 dni":
                    PopulateDateList(dateTime, 3);
                    break;
                case "Raz na tydzień":

                    PopulateDateList(dateTime, 7);
                    break;
                case "Raz na 2 tyg.":
                    PopulateDateList(dateTime, 14);
                    break;
                case "Raz na miesiąc":
                    PopulateDateList(dateTime, 28);
                    break;

            }
            MessagingCenter.Send(this, "DisplayAlert", $"Pomyslnie dodano zadanie \n {QuestContent}");
            QuestContent = string.Empty;

            // DateTime dateToPushNotify = new DateTime(date.Year, date.Month, date.Day, TimeContent.Hours, TimeContent.Minutes, TimeContent.Seconds);
            // Quest quest = new Quest() { Date = Date,Content = QuestContent,DateToPushNotify = dateToPushNotify, };
            //dataStore.AddItemAsync(quest);
            NotificationSystem notificationSystem = new NotificationSystem();
        }
        ObservableCollection<DateTime> DateList = new ObservableCollection<DateTime>();

        private void PopulateDateList(DateTime dateTime,int interval)
        {
            int idForLast = 0;
            DateTime startDay = dateTime;
            DateTime lastDayOfYear = new DateTime(startDay.Year, 12, 31);

            // Calculate the number of days remaining in the current year
            int daysRemaining = (int)(lastDayOfYear - startDay).TotalDays;
            var countHabits = dataStore.GetItemsAsync().Result.Count();
            
            for (int i = 0; i <= daysRemaining; i = i + interval)
            {
                dataStore.AddItemAsync(new Models.Quest() {DateToPushNotify = new DateTime(dateTime.Year, dateTime.Month, dateTime.Day, TimeContent.Hours,TimeContent.Minutes,0), Content = QuestContent , Date = dateTime.AddDays(i) });
                
                //DateList.Add(dateTime.AddDays(i));
            }
        }

        private DateTime getDayInWeek(ref DateTime dateTime,string day)
        {
            int i = 0;
            DateTime dateTime1 = dateTime;
            while (dateTime1.DayOfWeek.ToString() != day)
            {
                dateTime1 = dateTime.AddDays(i);
                i++;
            }
            dateTime = dateTime1;
            return dateTime;
        }

    }
}
