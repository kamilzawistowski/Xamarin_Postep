using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.ListToAdd;
using Xamarin_Postep.ViewModels.Notice;

namespace Xamarin_Postep.Views.ListToAdd
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AddNoticePage : ContentPage
    {
        NewNoticeViewModel viewModel;
        public AddNoticePage(DateTime date)
        {
            BindingContext = viewModel = new NewNoticeViewModel(date);
            InitializeComponent();
            MessagingCenter.Subscribe<NewNoticeViewModel, string>(this, "DisplayAlert", (sender, message) =>
            {

                Device.BeginInvokeOnMainThread(async () =>
                {

                    await DisplayAlert("Notatka", message, "OK");
                });
            });
        }
    }
}