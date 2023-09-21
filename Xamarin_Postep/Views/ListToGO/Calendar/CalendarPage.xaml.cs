using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Calendar;
using Xamarin_Postep.Views.ListToAdd;
using Xamarin_Postep.Views.ListToGO.Budget;
using Xamarin_Postep.Views.ListToGO.Habits;
using Xamarin_Postep.Views.ListToGO.Language.English;
using Xamarin_Postep.Views.ListToGO.Notice;

namespace Xamarin_Postep.Views.ListToGO
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class CalendarPage : ContentPage
	{
		CalendarViewModel viewModel;
		public CalendarPage ( )
		{
            BindingContext = viewModel = new CalendarViewModel ();
			InitializeComponent ();
            Calendar.SwipeUpToHideEnabled = false;
        }


        
        protected override void OnAppearing()
        {
            BindingContext = viewModel = new CalendarViewModel();
            base.OnAppearing();
        }


        private async void AddNew_Click(object sender, EventArgs e)
        {
            string action = await DisplayActionSheet("", "", null, "Zadanie", "Notatka", "Wydatek/Przychód", "Lista");
            var abc = Calendar.SelectedDate;

            //Debug.WriteLine("Action: " + action);
            if (action == "Zadanie")
            {
                // await Shell.Current.GoToAsync($"{nameof(BudgetSummaryPage)}");
                await Navigation.PushAsync(new AddQuestPage(Calendar.SelectedDate.Value));

            }
            else if (action == "Notatka")
            {
                await Navigation.PushAsync(new AddInscriptionPage(Calendar.SelectedDate.Value));

            }
            else if (action == "Wydatek/Przychód")
            {
                await Navigation.PushAsync(new AddBudgetPage(Calendar.SelectedDate.Value));

            }
            else if (action == "Lista")
            {
                await Navigation.PushAsync(new AddNoticePage(Calendar.SelectedDate.Value));

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