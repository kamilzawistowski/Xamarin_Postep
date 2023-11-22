using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;

namespace Xamarin_Postep.ViewModels.Workout
{
    public class SpecifyWorkoutViewModel : BaseViewModel
    {
        public IDataStore<Models.Exercise> dataStore;

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

        public SpecifyWorkoutViewModel(Models.Workout workout)
        {
            dataStore = DependencyService.Get<IDataStore<Models.Exercise>>();
            DataView = new ObservableCollection<Models.Exercise>(dataStore.GetItemsAsync().Result.Where(x => x.Workout == workout.Id).ToList());
            Workout = new Models.Workout();
        }
        public SpecifyWorkoutViewModel()
        {
            
        }

        private ObservableCollection<Models.Exercise> dataView;
        public ObservableCollection<Models.Exercise> DataView
        {
            get {  return dataView; }
            set { SetProperty(ref dataView, value); 
            }
        }


    }
}
