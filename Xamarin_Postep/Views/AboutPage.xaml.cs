using System;
using System.ComponentModel;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.Views.Language;

namespace Xamarin_Postep.Views
{
    public partial class AboutPage : ContentPage
    {
        public AboutPage()
        {
            InitializeComponent();
        }

        private async void ShowApp_Click(object sender, EventArgs e)
        {
            string action = await DisplayActionSheet("Przejdz do:", "Wroc", null, "Wydatki", "Angielski");

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
        }

    }
}