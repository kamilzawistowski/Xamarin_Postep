using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Main3Days;
using Xamarin_Postep.Views.Language;

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

        private async void ShowApp_Click(object sender, EventArgs e)
        {
            string action = await DisplayActionSheet("Przejdz do:", "Wroc", null, "Kalendarz Miesięczny", "Budżet", "Nawyki", "Listy", "Urodziny i Rocznice");
            //Debug.WriteLine("Action: " + action);
            if (action == "Wydatki")
            {
                // await Shell.Current.GoToAsync($"{nameof(BudgetSummaryPage)}");
                //await Navigation.PushAsync(new BudgetSummaryPage());

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
            string action = await DisplayActionSheet("Przejdz do:", "Wroc", null, "Zadanie", "Notatkę", "Wydatek/Przychód");
            //Debug.WriteLine("Action: " + action);
            if (action == "Wydatki")
            {
                // await Shell.Current.GoToAsync($"{nameof(BudgetSummaryPage)}");
                //await Navigation.PushAsync(new BudgetSummaryPage());

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
    }
}