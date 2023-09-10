using System;
using System.Collections.Generic;
using System.Text;
using Xamarin_Postep.Services;

namespace Xamarin_Postep.ViewModels.Main3Days
{
    class YesterdayViewModel : BaseViewModel
    {
        public string dateTimeNowDay;
        public string DateTimeNowDay
        {
            get => dateTimeNowDay;
            set
            {
                SetProperty(ref dateTimeNowDay, value);
            }
        }


        public string dateTimeNowNumberAndMonth;
        public string DateTimeNowNumberAndMonth
        {
            get => dateTimeNowNumberAndMonth;
            set
            {
                SetProperty(ref dateTimeNowNumberAndMonth, value);
            }
        }

        public YesterdayViewModel(DateTime date)
        {
            DateTimeNowDay = Converters.ConvertEnglishDayToPolishNames(date.DayOfWeek.ToString());
            DateTimeNowNumberAndMonth = (DateTime.Now.Day - 1) + " " + Converters.ConvertMonthToPolandNames(DateTime.Now.Month);
        }
    }
}
