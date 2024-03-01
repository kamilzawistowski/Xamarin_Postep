using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Meals;

namespace Xamarin_Postep.Views.ListToGO.Meals
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class MealsSettingPage : ContentPage
	{
		MealsSettingsViewModel viewModel;
        public MealsSettingPage ()
		{
			BindingContext = viewModel = new MealsSettingsViewModel ();
			InitializeComponent ();
		}
	}
}