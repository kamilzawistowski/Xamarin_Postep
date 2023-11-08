using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.Models;
using Xamarin_Postep.ViewModels.Language;

namespace Xamarin_Postep.Views.ListToGO.Language.English
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class EnglishListWordsPage : ContentPage
	{
        EnglishListWordsViewModel viewModel;

        public EnglishListWordsPage()
        {
            BindingContext = viewModel = new EnglishListWordsViewModel();
            InitializeComponent();
        }

        

        //private async void GoToEditPage(object sender, EventArgs e)
        //{
        //    await Navigation.PushAsync(new EnglishEditWordPage((EnglishWord)WordsList.SelectedItem));
        //}

        
    }
}