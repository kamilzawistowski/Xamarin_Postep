using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Main3Days;
using Xamarin_Postep.Views.ListToAdd;
using Xamarin_Postep.Views.ListToGO.Budget;
using Xamarin_Postep.Views.ListToGO.Habits;
using Xamarin_Postep.Views.ListToGO;
using Xamarin_Postep.Views.ListToGO.Language.English;
using Xamarin_Postep.Views.ListToGO.Notice;
using Xamarin_Postep.Views.ListToGO.Raports;

namespace Xamarin_Postep.Views.Main3Days
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class TomorrowPage : ContentPage
	{
		TomorrowViewModel viewModel;
		public TomorrowPage()
		{
			BindingContext = viewModel = new TomorrowViewModel(DateTime.Now.AddDays(1));
			InitializeComponent();
		}

        protected override void OnAppearing()
        {
            BindingContext = viewModel = new TomorrowViewModel(DateTime.Now.AddDays(1));
            base.OnAppearing();
        }

        private async void ShowApp_Click(object sender, EventArgs e)
        {
            string action = await DisplayActionSheet("", "", null, "Kalendarz Miesięczny", "Budżet", "Nawyki", "Listy", "Wydarzenia", "Jezyk Obcy", "Raporty");

            //Debug.WriteLine("Action: " + action);
            if (action == "Kalendarz Miesięczny")
            {
                // await Shell.Current.GoToAsync($"{nameof(BudgetSummaryPage)}");
                await Navigation.PushAsync(new CalendarPage());

            }
            else if (action == "Jezyk Obcy")
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
            else if (action == "Raporty")
            {
                await Navigation.PushAsync(new RaportMainPage());

            }
        }

        private async void AddNew_Click(object sender, EventArgs e)
        {
            string action = await DisplayActionSheet("", "", null, "Zadanie", "Wydarzenie/Wpis", "Wydatek/Przychód", "Notatka");
            //Debug.WriteLine("Action: " + action);
            if (action == "Zadanie")
            {
                // await Shell.Current.GoToAsync($"{nameof(BudgetSummaryPage)}");
                await Navigation.PushAsync(new AddQuestPage(DateTime.Now.AddDays(1)));

            }
            else if (action == "Wydarzenie/Wpis")
            {
                await Navigation.PushAsync(new AddInscriptionPage(DateTime.Now.AddDays(1)));

            }
            else if (action == "Wydatek/Przychód")
            {
                await Navigation.PushAsync(new AddBudgetPage(DateTime.Now.AddDays(1)));

            }
            else if (action == "NotatkaLista")
            {
                await Navigation.PushAsync(new AddNoticePage(DateTime.Now.AddDays(1)));

            }
        }


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