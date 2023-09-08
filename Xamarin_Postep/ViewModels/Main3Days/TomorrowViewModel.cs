using System;
using System.Collections.Generic;
using System.Text;
using Xamarin_Postep.Services;

namespace Xamarin_Postep.ViewModels.Main3Days
{
    class TomorrowViewModel : BaseViewModel
    {
        public string dateTimeNowDay;
        // public Command AddItemCommand { get; }

        public string DateTimeNowDay
        {
            get => dateTimeNowDay;
            set
            {
                SetProperty(ref dateTimeNowDay, value);
            }
        }
        public string dateTimeNowNumberAndMonth;
        // public Command AddItemCommand { get; }

        public string DateTimeNowNumberAndMonth
        {
            get => dateTimeNowNumberAndMonth;
            set
            {
                SetProperty(ref dateTimeNowNumberAndMonth, value);
            }
        }
        public TomorrowViewModel()
        {
            //AddItemCommand = new Command(OnAddItem);
            DateTimeNowDay = Converters.ConvertDayToPolishNames((int)DateTime.Now.DayOfWeek+1);
            DateTimeNowNumberAndMonth = (DateTime.Now.Day+1) + " " + Converters.ConvertMonthToPolandNames(DateTime.Now.Month);
        }
    }
}
