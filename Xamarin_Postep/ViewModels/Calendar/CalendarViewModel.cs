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

        public decimal wydatekSum;
        public decimal WydatekSum
        {
            get => wydatekSum;//App.Database.Summary.Where(x => x.Date.Month == DateTime.Now.Month).Where(x => x.Type == "Wydatek").Sum(x => x.Price);
            set
            {
                SetProperty(ref wydatekSum, value);
            }
        }
        public decimal przychodSum;
        public decimal PrzychodSum
        {
            get => przychodSum;// App.Database.Summary.Where(x => x.Date.Month == DateTime.Now.Month).Where(x => x.Type == "Przychod").Sum(x => x.Price);
            set
            {
                SetProperty(ref przychodSum, value);
            }
        }

        private DateTime selectedDate;
        public  DateTime SelectedDate
        {
            get => selectedDate;
            set
            {
                SetProperty(ref selectedDate, value);
                AcctualSelectedDay = $"{selectedDate.Day}" + $" {Converters.ConvertMonthToPolandNames(selectedDate.Date.Month)}" + $" {selectedDate.Year}";
                QuestList = new ObservableCollection<Models.Quest>(App.Database.Quest.Where(x => x.Date.Day == SelectedDate.Day).Where(x => x.Date.Month == SelectedDate.Month).Where(x => x.Date.Year == SelectedDate.Year));
                GetSummary();
            }
        }

        private ObservableCollection<Models.Quest> questList = new ObservableCollection<Models.Quest>();

        public ObservableCollection<Models.Quest> QuestList
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

        public void GetSummary()
        {
            PrzychodSum = 0;
            var a = App.Database.Summary.Where(x => x.Date.Day == selectedDate.Day);
            var b = a.Where(x => x.Type == "Przychod");
            foreach (var item in b)
            {
                PrzychodSum += item.Price;
            }
            PrzychodSum += 0;
            WydatekSum = 0;
            var a2 = App.Database.Summary.Where(x => x.Date.Day == selectedDate.Day);
            var b2 = a.Where(x => x.Type == "Wydatek");
            foreach (var item in b2)
            {
                WydatekSum += item.Price;
            }
            WydatekSum += 0;
        }


    }
}
