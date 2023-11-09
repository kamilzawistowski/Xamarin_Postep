using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Microcharts;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Language;

namespace Xamarin_Postep.Views.ListToGO.Language.English
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class EnglishTimeTestPage : ContentPage
    {
        EnglishTestViewModel viewModel;
        public EnglishTimeTestPage(string category)
        {
            BindingContext = viewModel = new EnglishTestViewModel(category);
            InitializeComponent();
        }
        public EnglishTimeTestPage()
        {
            BindingContext = viewModel = new EnglishTestViewModel(null);
            InitializeComponent();
           
        }
        protected async override void OnAppearing()
        {
            L1.Opacity = 0;
            _btnZnam.IsEnabled = false;
            _btnNieZnam.IsEnabled = false;
            _btnZnam.Opacity = 0;
            _btnNieZnam.Opacity = 0;
            _btnZnam.FadeTo(1, 2000, Easing.Linear);
            _btnNieZnam.FadeTo(1, 2000, Easing.Linear);
            await L1.FadeTo(0, 2000, Easing.Linear);
            _btnZnam.IsEnabled = true;
            _btnNieZnam.IsEnabled = true;
            await L1.FadeTo(0, 1000, Easing.Linear);
            await L1.FadeTo(1, 1000, Easing.Linear);

            base.OnAppearing();
            
        }
        protected override bool OnBackButtonPressed()
        {

            Navigation.PushAsync(new EnglishMainPage());
            return true;
        }
       
        private async void btnZnam(object sender, EventArgs e)
        {
            OnAppearing();
        }

        private async void btnnieZnam(object sender, EventArgs e)
        {
            OnAppearing();
        }
    }
}