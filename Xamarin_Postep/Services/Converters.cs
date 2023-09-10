using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace Xamarin_Postep.Services
{
    public static class Converters
    {

        public static DateTime ConvertItemIdToDateTime(string itemId)
        {
            int day;
            int month;
            int year;


            if (itemId.Substring(1, 1) == "/") //day
            {
                day = Convert.ToInt32(itemId.Substring(0, 1));
            }
            else
            {
                day = Convert.ToInt32(itemId.Substring(0, 2));
            }

            if (day >= 10)
            {
                if (itemId.Substring(4, 1) == "/") //month
                {
                    month = Convert.ToInt32(itemId.Substring(3, 1));
                    year = Convert.ToInt32(itemId.Substring(5, 4));
                }
                else
                {
                    month = Convert.ToInt32(itemId.Substring(3, 2));
                    year = Convert.ToInt32(itemId.Substring(6, 4));

                }
            }
            else
            {
                if (itemId.Substring(3, 1) == "/") //month
                {

                    month = Convert.ToInt32(itemId.Substring(2, 1));
                    year = Convert.ToInt32(itemId.Substring(4, 4));
                }
                else
                {
                    month = Convert.ToInt32(itemId.Substring(2, 2));
                    year = Convert.ToInt32(itemId.Substring(5, 4));

                }
            }

            return new DateTime(year, month, day);
        }

        public static string ConvertDateTimeToItemId(DateTime date)
        {
            return date.Day + "/" + date.Month + "/" + date.Year;
        }

        public static string ConvertMonthToPolandNames(int month)
        {
            switch (month)
            {
                case 1:
                    return "Styczen";

                case 2:
                    return "Luty";

                case 3:
                    return "Marzec";

                case 4:
                    return "Kwiecien";

                case 5:
                    return "Maj";

                case 6:
                    return "Czerwiec";

                case 7:
                    return "Lipiec";

                case 8:
                    return "Sierpien";

                case 9:
                    return "Wrzesien";

                case 10:
                    return "Pazdziernik";

                case 11:
                    return "Listopad";

                case 12:
                    return "Grudzien";
                default:
                    return "Miesiac Cudow";

            }
        }
        public static int ConvertMothToInt(string month)
        {
            switch (month)
            {
                case "Styczen":
                    return 0;


                case "Luty":
                    return 1;

                case "Marzec":
                    return 2;

                case "Kwiecien":
                    return 3;

                case "Maj":
                    return 4;

                case "Czerwiec":
                    return 5;

                case "Lipiec":
                    return 6;

                case "Sierpien":
                    return 7;

                case "Wrzesien":
                    return 8;

                case "Pazdziernik":
                    return 9;

                case "Listopad":
                    return 10;

                case "Grudzien":
                    return 11;
                default:
                    return 0;

            }
        }
        public static string ConvertDayToPolishNames(int day)
        {
            switch (day)
            {
                case 1:
                    return "Poniedziałek";
                case 2:
                    return "Wtorek";
                case 3:
                    return "Środa";
                case 4:
                    return "Czwartek";
                case 5:
                    return "Piątek";
                case 6:
                    return "Sobota";
                case 7:
                    return "Niedziela";
                default:
                    return "Blad";


            }
        }

        public static string ConvertEnglishDayToPolishNames(string day)
        {
            switch (day)
            {
                case "Monday":
                    return "Poniedziałek";
                case "Thuesday":
                    return "Wtorek";
                case "Wednesday":
                    return "Środa";
                case "Thursday ":
                    return "Czwartek";
                case "Friday":
                    return "Piątek";
                case "Saturday":
                    return "Sobota";
                case "Sunday":
                    return "Niedziela";
                default:
                    return "Blad";


            }
        }
    }
}
