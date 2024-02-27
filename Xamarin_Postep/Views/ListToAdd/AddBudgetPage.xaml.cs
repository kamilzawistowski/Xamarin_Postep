using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels;
using Xamarin_Postep.ViewModels.ListToAdd;

namespace Xamarin_Postep.Views.ListToAdd
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class AddBudgetPage : ContentPage
	{
        ObservableCollection<string> items;
        AddBudgetViewModel viewModel;

		public AddBudgetPage (DateTime date)
		{
            BindingContext = viewModel = new AddBudgetViewModel(date);
            InitializeComponent();
            PickerStack.IsVisible = false;
            DatePicker.Date = date;

            MessagingCenter.Subscribe<AddBudgetViewModel, string>(this, "DisplayAlert", (sender, message) =>
            {

                Device.BeginInvokeOnMainThread(async () =>
                {

                    await DisplayAlert("Budżet", message, "OK");
                });
            });
        }

        private void Button_Clicked_Wydatek(object sender, EventArgs e)
        {
            btnWydatek.BackgroundColor = Color.Gray;
            btnPrzychod.BackgroundColor = Color.White;
            PickerStack.IsVisible = true;
        }

        private void Button_Clicked_Przychod(object sender, EventArgs e)
        {
            btnPrzychod.BackgroundColor = Color.Gray;
            btnWydatek.BackgroundColor = Color.White;
            PickerStack.IsVisible = true;
        }

        private void DatePicker_DateSelected(object sender, DateChangedEventArgs e)
        {
            
        }
      
    }
}