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
		public AddBudgetPage ()
		{
            BindingContext = viewModel = new AddBudgetViewModel();
            InitializeComponent();
            PickerStack.IsVisible = false;
        }

        private void Button_Clicked_Wydatek(object sender, EventArgs e)
        {
            btnWydatek.BackgroundColor = Color.Gray;
            btnPrzychod.BackgroundColor = Color.White;
            PickerStack.IsVisible = true;
            ObservableCollection<string> items = new ObservableCollection<string>() { "Zakupy", "Mieszkanie", "Ivy", "Abonamenty", "Pielegnacje", "Zdrowie", "Ubrania", "Podroze", "Ksiazki", "Rozliczenia i dlugi" };
            PickerItems.ItemsSource = items;
        }

        private void Button_Clicked_Przychod(object sender, EventArgs e)
        {
            btnPrzychod.BackgroundColor = Color.Gray;
            btnWydatek.BackgroundColor = Color.White;
            PickerStack.IsVisible = true;

            ObservableCollection<string> items = new ObservableCollection<string>() { "Wyplata", "Premia", "Sprzedaz", "Inna Forma", "Podarunek" };
            PickerItems.ItemsSource = items;
        }
    }
}