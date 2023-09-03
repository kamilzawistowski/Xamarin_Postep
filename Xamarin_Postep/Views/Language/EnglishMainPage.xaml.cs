using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Language;

namespace Xamarin_Postep.Views.Language
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class EnglishMainPage : ContentPage
    {

        public EnglishMainPage()
        {
            BindingContext = new EnglishMainViewModel();
            InitializeComponent();
        }

        private async void Click_AddWords(object sender, EventArgs e)
        {
           // await Navigation.PushAsync(new EnglishNewWordsPage());
        }

        private async void Click_Test(object sender, EventArgs e)
        {
            //if (categoryCollection.SelectedItem != null)
            //{
            //    await Navigation.PushAsync(new EnglishTestPage(categoryCollection.SelectedItem.ToString() != null ? categoryCollection.SelectedItem.ToString() : null));
            //}
            //else
            //    await Navigation.PushAsync(new EnglishTestPage());

        }

        private async void WordsEnglishList(object sender, EventArgs e)
        {
            //await Navigation.PushAsync(new EnglishListWordsPage());
        }
    }
}