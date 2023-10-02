using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.BudgetSummary;
using SkiaSharp;
using Microcharts;
using Microcharts.Forms;
using Xamarin_Postep.Models;

namespace Xamarin_Postep.Views.ListToGO.Budget
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class BudgetPage : ContentPage
	{
		BudgetSummaryMainViewModel viewModel;

        public BudgetPage()
        {
            BindingContext = viewModel = new BudgetSummaryMainViewModel();
            InitializeComponent();
            ChartView.Chart = new DonutChart { Entries = viewModel.Entities };
        }
      
        private void monthPicker_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}