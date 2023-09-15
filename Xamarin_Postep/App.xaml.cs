using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.Services;
using Xamarin_Postep.Views;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;

namespace Xamarin_Postep
{
    public partial class App : Application
    {
        private static DataBaseContext _database;

        public static DataBaseContext Database
        {
            get
            {
                if (_database == null)
                {
                    _database = new DataBaseContext();
                }
                return _database;
            }
        }
        public App()
        {
            InitializeComponent();

            DependencyService.Register<IDataStore<Inscription>>();
            DependencyService.Register<IDataStore<Models.Notice>>();
            DependencyService.Register<IDataStore<Summary>>();
            DependencyService.Register<IDataStore<Quest>>();
            DependencyService.Register<IDataStore<Habit>>();
            DependencyService.Register<IDataStore<EnglishWord>>();
            DependencyService.Register<IDataStore<EnglishCategory>>();

            DependencyService.Register<MockDataStore>();
            DependencyService.Register<QuestRepository>();
            MainPage = new AppShell();
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
