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
	public partial class EnglishMainPage : ContentPage
    {
        EnglishMainViewModel viewModel;
		public EnglishMainPage()
		{
            BindingContext = viewModel = new EnglishMainViewModel();
            InitializeComponent();

        }

        private async void Click_AddWords(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new EnglishNewWordPage());
        }

        private async void WordsEnglishList(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new EnglishListWordsPage());
        }

        private async void Click_Test(object sender, EventArgs e)
        {
            
               
                await Navigation.PushAsync(new EnglishTestMainPage());

        }




    }
}