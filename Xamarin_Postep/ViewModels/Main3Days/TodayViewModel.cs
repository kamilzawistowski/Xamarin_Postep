using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using Microsoft.EntityFrameworkCore.Storage;
using Xamarin.Forms;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.Interfaces;
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

        public string dateTimeNowNumberAndMonth;
        public string DateTimeNowNumberAndMonth
        {
            get => dateTimeNowNumberAndMonth;
            set
            {
                SetProperty(ref dateTimeNowNumberAndMonth, value);
            }
        }

        private ObservableCollection<Quest> questList;

        public ObservableCollection<Quest> QuestList
        {
            get
            {
                questList = new ObservableCollection<Quest>(App.Database.Quest
                    .Where(x => x.Date.Day == DateTime.Now.Day)
                    .Where(x => x.Date.Month == DateTime.Now.Month)
                    .ToList());
                return questList;
            }
            set
            {
                SetProperty(ref questList, value);
            }
        }

        private ObservableCollection<Inscription> inscriptionList ;

        //private readonly IDataStore<InscriptionRepository> inscriptionRepository1;

        public ObservableCollection<Inscription> InscriptionList
        {
            get
            {
                inscriptionList = new ObservableCollection<Inscription>(App.Database.Inscription
                    .Where(x => x.DateTime.Day == DateTime.Now.Day)
                    .Where(x => x.DateTime.Month == DateTime.Now.Month)
                    .ToList());
                return inscriptionList;
            }
            set
            {
                SetProperty(ref inscriptionList, value);
            }
        }


        private ObservableCollection<Models.Habit> habitList ;

        //private readonly IDataStore<InscriptionRepository> inscriptionRepository1;

        public ObservableCollection<Models.Habit> HabitList
        {
            get
            {
                habitList = new ObservableCollection<Models.Habit>(App.Database.Habit
                    .Where(x => x.DateTime.Day == DateTime.Now.Day)
                    .Where(x => x.DateTime.Month == DateTime.Now.Month)
                    .ToList());

                GetPhotosFromIconPath(habitList);
                return habitList;
            }
            set
            {
                SetProperty(ref habitList, value);
            }
        }


        public TodayViewModel()
        {
            var a = App.Database.Summary.Where(x => x.Date.Month == DateTime.Now.Month);
            var b = a.Where(x => x.Type == "Przychod");
            foreach (var item in b)
            {
                PrzychodSum += item.Price;
            }
            var a2 = App.Database.Summary.Where(x => x.Date.Month == DateTime.Now.Month);
            var b2 = a.Where(x => x.Type == "Wydatek");
            foreach (var item in b2)
            {
                WydatekSum += item.Price;
            }
            //DataBaseContext dataBaseContext = new DataBaseContext();
            //var a = dataBaseContext.EnglishWords.ToList();

            DateTimeNowDay = Converters.ConvertEnglishDayToPolishNames(DateTime.Now.DayOfWeek.ToString());
            DateTimeNowNumberAndMonth = DateTime.Now.Day + " " + Converters.ConvertMonthToPolandNames(DateTime.Now.Month);
        }

        public ObservableCollection<Models.Habit> GetPhotosFromIconPath(ObservableCollection<Models.Habit> Habits)
        {
            foreach (var item in Habits)
            {
                item.ImageIcon = new FileImageSource().File = item.ImagePath;
            }
            return Habits;
        }

    }
}
