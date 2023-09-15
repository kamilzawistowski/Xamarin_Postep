using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Habit;

namespace Xamarin_Postep.Views.ListToGO.Habits
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class HabitsPage : ContentPage
	{
        HabitMainViewModel viewModel;
		public HabitsPage ()
		{
            BindingContext = viewModel = new HabitMainViewModel();
			InitializeComponent ();
		}

        private async void AddNewHabit_Click(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new NewHabitPage());
        }

        private void BackToPrevious_click(object sender, EventArgs e)
        {

        }
    }
}