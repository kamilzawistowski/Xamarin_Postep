using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
//using Plugin.LocalNotification;
//using Plugin.LocalNotification.EventArgs;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.ViewModels.Main3Days;
using Xamarin_Postep.Views.ListToAdd;
using Xamarin_Postep.Views.ListToGO;
using Xamarin_Postep.Views.ListToGO.Budget;
using Xamarin_Postep.Views.ListToGO.Habits;
using Xamarin_Postep.Views.ListToGO.Language.English;
using Xamarin_Postep.Views.ListToGO.Notice;

namespace Xamarin_Postep.Views.Main3Days
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class TodayPage : ContentPage
	{
        
        TodayViewModel viewModel;
		public TodayPage()
		{
            
            BindingContext = viewModel = new TodayViewModel();
            InitializeComponent();
            

        }

        protected override void OnAppearing()
        {
            BindingContext = viewModel = new TodayViewModel();

            base.OnAppearing();
        }

        private async void ShowApp_Click(object sender, EventArgs e)
        {
            string action = await DisplayActionSheet("", "", null, "Kalendarz Miesięczny", "Budżet", "Nawyki", "Listy", "Urodziny i Rocznice", "Angielski");
            
            //Debug.WriteLine("Action: " + action);
            if (action == "Kalendarz Miesięczny")
            {
                // await Shell.Current.GoToAsync($"{nameof(BudgetSummaryPage)}");
                await Navigation.PushAsync(new CalendarPage());

            }
            else if (action == "Angielski")
            {
                await Navigation.PushAsync(new EnglishMainPage());

            }
            else if (action == "Nawyki")
            {
                await Navigation.PushAsync(new HabitsPage());

            }
            else if (action == "Budżet")
            {
                await Navigation.PushAsync(new BudgetPage());

            }
            else if (action == "Listy")
            {
                await Navigation.PushAsync(new NoticePage());

            }
        }

        private async void AddNew_Click(object sender, EventArgs e)
        {
            string action = await DisplayActionSheet("", "", null, "Zadanie", "Notatka", "Wydatek/Przychód","Lista");
            //Debug.WriteLine("Action: " + action);
            if (action == "Zadanie")
            {
                // await Shell.Current.GoToAsync($"{nameof(BudgetSummaryPage)}");
                await Navigation.PushAsync(new AddQuestPage(DateTime.Now));

            }
            else if (action == "Notatka")
            {
                await Navigation.PushAsync(new AddInscriptionPage(DateTime.Now));

            }
            else if (action == "Wydatek/Przychód")
            {
                await Navigation.PushAsync(new AddBudgetPage());

            }
            else if (action == "Lista")
            {
                await Navigation.PushAsync(new AddNoticePage());

            }
        }
        


        //private void Button_Clicked(object sender, EventArgs e)
        //{
        //    var notification = new NotificationRequest
        //    {
        //        BadgeNumber = 1,
        //        Description = "Test Desc",
        //        Title = "Notifiy",
        //        ReturningData = "DUMMYDATA",
        //        NotificationId = 1,
        //        Schedule = new NotificationRequestSchedule
        //        {
        //            NotifyTime = DateTime.Now.AddSeconds(10)
        //        },
                 
        //    };
        //    NotificationCenter.Current.Show(notification);
        //}

        private void CheckBox_CheckedChanged(object sender, CheckedChangedEventArgs e)
        {
            var clickedCheckBox = viewModel.QuestList.Where(x => x.IsComplete == true);
            if (clickedCheckBox.Count() > 0)
            {
                App.Database.Update(clickedCheckBox.First());
                App.Database.SaveChanges();
            }
            var clickedCheckBox2 = viewModel.QuestList.Where(x => x.IsComplete == false);
            if (clickedCheckBox2.Count() > 0)
            {
                App.Database.Update(clickedCheckBox2.First());
                App.Database.SaveChanges();
            }
        }
    }
}