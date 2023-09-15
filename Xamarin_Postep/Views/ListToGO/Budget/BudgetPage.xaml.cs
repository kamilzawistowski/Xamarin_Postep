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

namespace Xamarin_Postep.Views.ListToGO.Budget
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class BudgetPage : ContentPage
	{
		BudgetSummaryMainViewModel viewModel;

        private readonly ChartEntry[] entities = new[]
        {
            new ChartEntry(123)
            {

                Label = "Jedzenie",
                TextColor =SKColor.Parse("#000000"),
                ValueLabel = "521",
                Color = SKColor.Parse("#FF69B4"),
                ValueLabelColor = SKColor.Parse("#FF69B4")

            },
            new ChartEntry(542)
            {
                Label = "Ivi",
                ValueLabel = "223",
                Color = SKColor.Parse("#B22222"),
                ValueLabelColor = SKColor.Parse("#B22222"),
                TextColor = SKColor.Parse("#000000")
            },
            new ChartEntry(772)
            {
                Label = "Mieszkanie",
                ValueLabel = "123",
                Color = SKColor.Parse("#FF7F50"),
                ValueLabelColor = SKColor.Parse("#FF7F50"),
                TextColor =SKColor.Parse("#000000")

            },
            new ChartEntry(231)
            {
                Label = "Reszta",
                ValueLabel = "134",
                Color = SKColor.Parse("#FFFACD"),
                ValueLabelColor = SKColor.Parse("#FFFACD"),
                TextColor =SKColor.Parse("#000000")

            },
        };
        public BudgetPage()
        {
            BindingContext = viewModel = new BudgetSummaryMainViewModel();
            InitializeComponent();
            ChartView.Chart = new DonutChart { Entries = entities };

        }
    }
}