using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Services;

namespace Xamarin_Postep.ViewModels.Workout
{
    class SettingsWorkoutViewModel : BaseViewModel
    {
        public Command AddNewExerciseCommand { get; set; }


        
         private string selectedBodyPart;
        public string SelectedBodyPart
        {
            get { return selectedBodyPart; }
            set { SetProperty(ref selectedBodyPart, value); }
        }


        private string newExerciseEntry;

        public string NewExerciseEntry
        {
            get { return newExerciseEntry; }
            set { SetProperty(ref newExerciseEntry, value); }
        }


        private ObservableCollection<string> bodyPartCollection;
        public ObservableCollection<string> BodyPartCollection
        {
            get { return StaticDataService.BodyParts; }   
            set
            {

                SetProperty(ref bodyPartCollection, value);
            }
        }

        IDataStore<ExerciseCategory> dataStore;
        
        public SettingsWorkoutViewModel()
        {
            dataStore = DependencyService.Get<IDataStore<ExerciseCategory>>();
            AddNewExerciseCommand = new Command(OnAddExercise);
        }

        public async void OnAddExercise()
        {
            var newExercise = new ExerciseCategory() { BodyPart = SelectedBodyPart, ExerciseName = NewExerciseEntry };
            dataStore.AddItemAsync(newExercise);
            await Shell.Current.DisplayAlert("Nowe Ćwiczenie", $"Dodano ćwiczenie do {SelectedBodyPart} o nazwie {NewExerciseEntry}", "Wstecz");
        }
    }

}