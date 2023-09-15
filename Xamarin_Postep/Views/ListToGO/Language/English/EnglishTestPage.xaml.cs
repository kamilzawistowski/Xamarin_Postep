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
	public partial class EnglishTestPage : ContentPage
    {
        EnglishTestViewModel viewModel;
        public EnglishTestPage(string category)
        {
            BindingContext = viewModel = new EnglishTestViewModel(category);
            InitializeComponent();
        }
        public EnglishTestPage()
        {
            BindingContext = viewModel =  new EnglishTestViewModel(null);
            InitializeComponent();
        }
        protected override bool OnBackButtonPressed()
        {
            Navigation.PushAsync(new EnglishMainPage());
            return true;
        }
    }
}