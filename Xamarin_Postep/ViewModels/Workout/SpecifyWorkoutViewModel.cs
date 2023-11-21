using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;

namespace Xamarin_Postep.ViewModels.Workout
{
    public class SpecifyWorkoutViewModel : BaseViewModel
    {
        public IDataStore<Exercise> dataStore;

        public SpecifyWorkoutViewModel()
        {
            dataStore = DependencyService.Get<IDataStore<Exercise>>();


        }
    }
}
