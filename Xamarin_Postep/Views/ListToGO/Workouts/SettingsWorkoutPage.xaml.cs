using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Workout;

namespace Xamarin_Postep.Views.ListToGO.Workouts
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class SettingsWorkoutPage : ContentPage
	{
		SettingsWorkoutViewModel viewModel;
		public SettingsWorkoutPage ()
		{
			BindingContext = viewModel = new SettingsWorkoutViewModel();
			InitializeComponent ();
		}
	}
}