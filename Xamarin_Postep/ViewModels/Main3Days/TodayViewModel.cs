using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.Models;
using Xamarin_Postep.Services;
using Xamarin_Postep.Views;

namespace Xamarin_Postep.ViewModels.Main3Days
{
    class TodayViewModel : BaseViewModel
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

        public string test;

        public string Test
        {
            get => test;
            set
            {
                SetProperty(ref test, value);
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
        public TodayViewModel()
        {
            DataBaseContext dataBaseContext = new DataBaseContext();
            var a = dataBaseContext.EnglishWords.ToList();
            //AddItemCommand = new Command(OnAddItem);
            DateTimeNowDay = Converters.ConvertDayToPolishNames((int)DateTime.Now.DayOfWeek);
            DateTimeNowNumberAndMonth = DateTime.Now.Day + " " + Converters.ConvertMonthToPolandNames(DateTime.Now.Month);
        }

        //private async void OnAddItem(object obj)
        //{
        //    obj = DateTime.Now.Day + "/" + DateTime.Now.Month + "/" + DateTime.Now.Year;
        //    await Shell.Current.GoToAsync($"{nameof(NewItemPage)}?{nameof(NewItemViewModel.ItemId)}={obj}");

        //}

    }
}
