using System;
using System.Collections.Generic;
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


        public QuestViewModel(DateTime date)
        {
            OnQuestAdd = new Command(OnBtnQuestAdd);
            this.date = date;
        }

        public void OnBtnQuestAdd()
        {
            Quest quest = new Quest() { Date = date ,Name };
            var time = TimeContent;
            var QuestCon = QuestContent;
            var dateCon = date;


            //App.Database.Add()

        }
    }
}
