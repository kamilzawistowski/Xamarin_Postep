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
	public partial class EnglishSettingsPage : ContentPage
    {
        EnglishSettingsViewModel viewModel;
        public EnglishSettingsPage()
        {
            BindingContext = viewModel = new EnglishSettingsViewModel();
            InitializeComponent();
        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            BindingContext = viewModel = new EnglishSettingsViewModel();
        }
    }
}