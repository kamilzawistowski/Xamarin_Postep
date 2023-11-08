using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Language;

namespace Xamarin_Postep.Views.ListToGO.Language.English
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class EnglishTestMainPage : ContentPage
    {
        EnglishTestViewModel viewModel;
        public EnglishTestMainPage(string category)
        {
            BindingContext = viewModel = new EnglishTestViewModel(category);
            InitializeComponent();
        }
        public EnglishTestMainPage()
        {
            BindingContext = viewModel = new EnglishTestViewModel(null);
            InitializeComponent();
        }

        private async void Click_Test(object sender, EventArgs e)
        {
            if (categoryCollection.SelectedItem != null)
            {
                await Navigation.PushAsync(new EnglishTestPage(categoryCollection.SelectedItem.ToString() != null ? categoryCollection.SelectedItem.ToString() : null));
            }
            else
                await Navigation.PushAsync(new EnglishTestPage());

        }

        private void TimeTest(object sender, EventArgs e)
        {

        }
    }
}