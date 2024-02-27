using System;
using System.Collections.Generic;
using System.Text;
using Prism.Navigation;
using Xamarin.Forms;
using Xamarin_Postep.Views.ListToGO.Meals;
using Xamarin_Postep.Views.ListToGO.Workouts;

namespace Xamarin_Postep.ViewModels.Meals
{
    class MealsMainViewModel : BaseViewModel
    {
        public Command SettingCommand { get; set; }


        public MealsMainViewModel(INavigation navigation)
        {
            SettingCommand = new Command(GoToSettings);
            NavigationService = navigation;

        }

        public async void GoToSettings()
        {
            await Shell.Current.GoToAsync(nameof(MealsSettingPage));
        }
    }
}
