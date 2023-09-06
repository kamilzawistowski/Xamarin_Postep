using System;
using System.Collections.Generic;
using System.Text;

namespace Xamarin_Postep.Services.BudgetSummary
{
    public static class BudgetSummaryService
    {
        public static string PickedMonth { get; set; }
        public static DateTime PickedDateTime { get; set; }
        public static List<string> GetMonthToPicker(out List<string> list)
        {
            list = new List<string>();
            list.Add("Styczen");
            list.Add("Luty");
            list.Add("Marzec");
            list.Add("Kwiecien");
            list.Add("Maj");
            list.Add("Czerwiec");
            list.Add("Lipiec");
            list.Add("Sierpien");
            list.Add("Wrzesien");
            list.Add("Pazdziernik");
            list.Add("Listopad");
            list.Add("Grudzien");
            return list;
        }
        public static float GetWeekWydatek()
        {
            //string dateTimet = Converters.ConvertDateTimeToItemId(SumarryBudgetService.PickedDateTime);

            //var allWydatki = App.Database.GetAllWydatek();

            return 10;
            //foreach (var item in allWydatki.Result.Where(x => x dateTimet.DayOfWeek))
            //{

            //}
        }

    }
}
