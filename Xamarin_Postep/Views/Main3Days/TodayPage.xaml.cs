using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Main3Days;
using Xamarin_Postep.Views.Language;
using Xamarin_Postep.Views.ListToAdd;
using Xamarin_Postep.Views.ListToGO;

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


        private async void ShowApp_Click(object sender, EventArgs e)
        {
            Frame frame = new Frame();
            frame.CornerRadius = 40;
            string action = await DisplayActionSheet("", "", null, "Kalendarz Miesięczny", "Budżet", "Nawyki", "Listy", "Urodziny i Rocznice");
            
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
            else if (action == "Testowy")
            {
                await Navigation.PushAsync(new TestowyPage());

            }
        }

        private async void AddNew_Click(object sender, EventArgs e)
        {
            string action = await DisplayActionSheet("", "", null, "Zadanie", "Notatka", "Wydatek/Przychód");
            //Debug.WriteLine("Action: " + action);
            if (action == "Zadanie")
            {
                // await Shell.Current.GoToAsync($"{nameof(BudgetSummaryPage)}");
                //await Navigation.PushAsync(new BudgetSummaryPage());

            }
            else if (action == "Notatka")
            {
                await Navigation.PushAsync(new NoticePage(DateTime.Now));

            }
            else if (action == "Wydatek/Przychód")
            {
                await Navigation.PushAsync(new TestowyPage());

            }
        }

   
    }
}