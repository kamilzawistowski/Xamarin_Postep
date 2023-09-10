using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.Services;
using Xamarin_Postep.Views;

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
                    DataBaseContext dataBase = new DataBaseContext();
                }
                return _database;
            }
        }
        public App()
        {
            InitializeComponent();

            DependencyService.Register<MockDataStore>();
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
