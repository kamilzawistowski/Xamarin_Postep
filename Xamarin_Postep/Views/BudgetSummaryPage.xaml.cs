using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.Services;
using Xamarin_Postep.Services.BudgetSummary;

namespace Xamarin_Postep.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class BudgetSummaryPage : ContentPage
    {
        List<string> list;
        public BudgetSummaryPage()
        {
            //BudgetSummaryService.PickedMonth = Converters.ConvertMonthToPolandNames(DateTime.Now.Month);
            //InitializeComponent();
            //monthPicker.ItemsSource = BudgetSummaryService.GetMonthToPicker(out list);
            //BindingContext = viewModel = new BudgetSumarryViewModel();
            //issueWydatek_cv.ItemsSource = viewModel.dTOBudgetExpensesWydatek;
            //issuePrzychod_cv.ItemsSource = viewModel.dTOBudgetExpensesPrzychod;
            //lblPrzychod.Text = viewModel.InCome.ToString();
            //issueWydatek_cv.SelectedItem = Converters.ConvertMonthToPolandNames(DateTime.Now.Month);
        }


        private void monthPicker_SelectedIndexChanged(object sender, EventArgs e)
        {
            //BudgetSummaryService.PickedMonth = monthPicker.SelectedItem.ToString();
            //BindingContext = viewModel = new BudgetSumarryViewModel(Converters.ConvertMothToInt(monthPicker.SelectedItem.ToString()) + 1);
            //issueWydatek_cv.ItemsSource = viewModel.dTOBudgetExpensesWydatek;
            //issuePrzychod_cv.ItemsSource = viewModel.dTOBudgetExpensesPrzychod;
            //lblPrzychod.Text = viewModel.InCome.ToString();
        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            Navigation.PopAsync();
        }
    }
}