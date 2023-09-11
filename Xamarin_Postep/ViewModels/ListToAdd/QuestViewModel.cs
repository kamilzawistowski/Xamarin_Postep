using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using Xamarin.Forms;
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
        private readonly DateTime date;

        public string QuestContent
        {
            get => questContent
;
            set
            {
                SetProperty(ref questContent, value);
            }
        }

        public DateTime DatePicker 
        { 
            get => datePicker;
            set
            {
                SetProperty(ref datePicker, value);
            }
        }

        

        
        
        private DateTime datePicker;
        public QuestViewModel(DateTime date)
        {
            OnQuestAdd = new Command(OnBtnQuestAdd);
            this.date = date;
        }

        public void OnBtnQuestAdd()
        {
            DateTime dateToPushNotify = new DateTime(datePicker.Year, datePicker.Month, datePicker.Day, TimeContent.Hours, TimeContent.Minutes, TimeContent.Seconds);
            var datepick = DatePicker;
            Quest quest = new Quest() { Date = DatePicker,Content = QuestContent,DateToPushNotify = dateToPushNotify };



            App.Database.Add(quest);
            App.Database.SaveChanges();
        }
    }
}
