using System;
using System.ComponentModel;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.Views.ListToGO.Language.English;
using Xamarin_Postep.Views.Main3Days;

namespace Xamarin_Postep.Views
{
    public partial class AboutPage : CarouselPage
    {
        public AboutPage()
        {
            ContentPage yesterdayPage = new YesterdayPage();
            ContentPage todayPage = new TodayPage();
            ContentPage tomorrowPage = new TomorrowPage();

            Children.Add(yesterdayPage);
            Children.Add(todayPage);
            Children.Add(tomorrowPage);

            CurrentPage = todayPage;

            InitializeComponent();
        }

        private async void ShowApp_Click(object sender, EventArgs e)
        {
            string action = await DisplayActionSheet("Przejdz do:", "Wroc", null, "Kalendarz Miesięczny","Budżet","Nawyki","Listy","Urodziny i Rocznice");
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