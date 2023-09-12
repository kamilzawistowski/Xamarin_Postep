using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.BudgetSummary;

namespace Xamarin_Postep.Views.ListToGO.Budget
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class BudgetPage : ContentPage
	{
		BudgetSummaryMainViewModel viewModel;
        public BudgetPage ()
		{
			BindingContext = viewModel = new BudgetSummaryMainViewModel();
			InitializeComponent ();
		}
	}
}