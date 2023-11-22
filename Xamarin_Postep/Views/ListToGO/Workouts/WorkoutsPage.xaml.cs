using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.CommunityToolkit;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Workout;

namespace Xamarin_Postep.Views.ListToGO.Workouts
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class WorkoutsPage : ContentPage
	{
		WorkoutsViewModel viewModel;
		public WorkoutsPage()
		{
			BindingContext = viewModel = new WorkoutsViewModel(Navigation);
			InitializeComponent ();
		}
	}
}