using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels;
using Xamarin_Postep.ViewModels.BudgetSummary;

namespace Xamarin_Postep.Views.ListToGO.Budget
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class BudgetSettingsPage : ContentPage
	{
		BudgetSettingViewModel viewModel;

        public BudgetSettingsPage ()
		{
			BindingContext = viewModel = new BudgetSettingViewModel();
			InitializeComponent ();
		}

        private void Button_Clicked(object sender, EventArgs e)
        {
            BindingContext = viewModel = new BudgetSettingViewModel();
        }
    }
}