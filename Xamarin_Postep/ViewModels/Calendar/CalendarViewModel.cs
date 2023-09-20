using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using Xamarin_Postep.Models;
using Xamarin_Postep.Services;

namespace Xamarin_Postep.ViewModels.Calendar
{
    class CalendarViewModel : BaseViewModel
    {
        private DateTime selectedDate;
        public  DateTime SelectedDate
        {
            get => selectedDate;
            set
            {
                SetProperty(ref selectedDate, value);
                AcctualSelectedDay = $"{selectedDate.Day}" + $" {Converters.ConvertMonthToPolandNames(selectedDate.Date.Month)}" + $" {selectedDate.Year}";
                QuestList = new ObservableCollection<Quest>(App.Database.Quest.Where(x => x.Date.Day == SelectedDate.Day).Where(x => x.Date.Month == SelectedDate.Month).Where(x => x.Date.Year == SelectedDate.Year));
            }
        }

        private ObservableCollection<Quest> questList = new ObservableCollection<Quest>();

        public ObservableCollection<Quest> QuestList
        {
            get => questList;
            set
            {
                SetProperty(ref questList, value);
            }
        }

        private string acctualSelectedDay;
        public string AcctualSelectedDay
        {
            get => acctualSelectedDay;
            set
            {
                SetProperty(ref acctualSelectedDay, value);
            }
        }
        public CalendarViewModel( )
        {
            selectedDate = DateTime.Now;
        }


    }
}
