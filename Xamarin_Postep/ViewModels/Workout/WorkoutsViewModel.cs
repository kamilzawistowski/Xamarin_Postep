using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Views.ListToGO.Language.English;
using Xamarin_Postep.Views.ListToGO.Workouts;

namespace Xamarin_Postep.ViewModels.Workout
{
    public class WorkoutsViewModel : BaseViewModel
    {

        private Models.Workout workout;
        public Models.Workout Workout
        {
            get
            {
                return workout;
            }
            set
            {
                SetProperty(ref workout, value);
            }
        }

        private ObservableCollection<Models.Workout> workoutsView;
        public ObservableCollection<Models.Workout> WorkoutsView
        {
            get { return workoutsView; }
            set { SetProperty(ref workoutsView, value); }
        }
        IDataStore<Models.Workout> dataStore;
        public WorkoutsViewModel(INavigation navigation)
        {
            dataStore = DependencyService.Get<IDataStore<Models.Workout>>();
            WorkoutsView = new ObservableCollection<Models.Workout>(dataStore.GetItemsAsync().Result);
            NavigationService = navigation;
        }

        public async void GoToEditPage(Exercise exercise)
        {
            if (exercise != null)
                await NavigationService.PushAsync(new SpecifyWorkoutPage(exercise));

        }
    }
}
