using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Workout;

namespace Xamarin_Postep.Views.ListToAdd
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class AddWorkoutPage : ContentPage
	{
        AddWorkoutViewModel viewModel;
		public AddWorkoutPage ()
		{
			BindingContext = viewModel = new AddWorkoutViewModel();
			InitializeComponent ();
		}
        protected override void OnAppearing()
        {
			viewModel.OnAppearing();
            base.OnAppearing();
        }
    }
}