using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;

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
            get { return new ObservableCollection<string>() { "Klata", "Biceps", "Triceps", "Barki", "Plecy", "Dwugłowe Ud", "Czworogłowe Nóg", "Łydki", "Pośladki", "Brzuch" }; }     
            set
            {

                SetProperty(ref bodyPartCollection, value);
            }
        }

        
        public SettingsWorkoutViewModel()
        {
            AddNewExerciseCommand = new Command(OnAddExercise);
        }

        public void OnAddExercise()
        {
            var bodyPart = SelectedBodyPart;
            var newExercise = NewExerciseEntry;
        }
    }

}