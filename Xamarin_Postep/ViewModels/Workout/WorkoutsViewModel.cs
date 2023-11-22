using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using Prism.Navigation;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Views.ListToGO.Language.English;
using Xamarin_Postep.Views.ListToGO.Workouts;

namespace Xamarin_Postep.ViewModels.Workout
{
    public class WorkoutsViewModel : BaseViewModel
    {
        protected INavigation NavigationServicee { get; set; }
        public Command<Models.Workout> GoToEditPageCommand { get; set; }

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

        private ObservableCollection<Models.Workout> workoutsView = new ObservableCollection<Models.Workout>();
        public ObservableCollection<Models.Workout> WorkoutsView
        {
            get {
               
                return workoutsView; 
            }
            set { SetProperty(ref workoutsView, value); }
        }

        IDataStore<Models.Workout> dataStore;
        IDataStore<Models.Exercise> dataStoreExe;

        public WorkoutsViewModel(INavigation navigation)
        {
            dataStore = DependencyService.Get<IDataStore<Models.Workout>>();
            dataStoreExe = DependencyService.Get<IDataStore<Models.Exercise>>();
            WorkoutsView = new ObservableCollection<Models.Workout>(dataStore.GetItemsAsync().Result);
            
            GoToEditPageCommand = new Command<Models.Workout>(GoToEditPage);
            Workout = new Models.Workout();

            NavigationServicee = navigation;
            GetExercise();

        }

        public async void GoToEditPage(Models.Workout workout)
        {
            if (workout != null)
                await NavigationService.PushAsync(new SpecifyWorkoutPage(workout));

        }

        public void GetExercise()
        {

            foreach (var item in WorkoutsView)
            {
                    if (dataStoreExe.GetItemsAsync().Result.Where(x => x.Workout == item.Id).ToList().Count() > 0)
                        item.Exercise = dataStoreExe.GetItemsAsync().Result.Where(x => x.Workout == item.Id).ToList();
            }
        }
    }
}
