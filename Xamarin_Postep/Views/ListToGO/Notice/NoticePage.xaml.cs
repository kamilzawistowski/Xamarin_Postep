using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Notice;

namespace Xamarin_Postep.Views.ListToGO.Notice
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class NoticePage : ContentPage
	{
		NoticeViewModel viewModel;
		public NoticePage()
		{
			BindingContext = viewModel = new NoticeViewModel();
			InitializeComponent ();
		}

        private async void GoToNotice_Click(object sender, EventArgs e)
        {
            string buttonText = "";
            if (sender is Button button) 
            {
                buttonText = button.Text;
            }
            
            await Navigation.PushAsync(new NoticeSpecifyPage(buttonText));
        }
        protected override void OnAppearing()
        {
            BindingContext = viewModel = new NoticeViewModel();
            base.OnAppearing();
        }

    }
}