using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Models;

namespace Xamarin_Postep.ViewModels.Workout
{
    public class AddWorkoutViewModel : BaseViewModel
    {
        public Command AddExerciseCommand { get; set; }
        public Command LoadProductCommand { get; set; }
        public Command AddWorkoutCommand { get; set; }

        private string selectedCategory;
        public string SelectedCategory
        {
            get => selectedCategory;
            set => SetProperty(ref selectedCategory, value);
        }

        public ObservableCollection<string> CategoryList = new ObservableCollection<string>() { "Klatka Piersiowa", "Biceps" };
        private ObservableCollection<string> nameExerciseList;
        public ObservableCollection<string> NameExerciseList
        {
            get 
            {
                if (selectedCategory == "Klatka Piersiowa")
                {
                    return nameExerciseList = new ObservableCollection<string>() { "Klata1","Klata2" };
                }
                else
                {
                    return nameExerciseList = new ObservableCollection<string>() { "Biceps1","Biceps2" };

                }
            }
            set => SetProperty(ref nameExerciseList, value);
        }

        private ObservableCollection<Exercise> exerciseView;
        public ObservableCollection<Exercise> ExerciseView 
        { 
            get => exerciseView; 
            set => SetProperty(ref exerciseView, value);
        }

        public AddWorkoutViewModel()
        {
            AddExerciseCommand = new Command(AddExercise);
            AddWorkoutCommand = new Command(AddWorkout);
            LoadProductCommand = new Command(RefreshCollection);
        }

        public void OnAppearing()
        {
            IsBusy = true;
        }

        public void RefreshCollection()
        {

            try
            {
                IsBusy = true;
                ExerciseView.Clear();

                
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                IsBusy = false;
            }
        }
        private void AddExercise()
        {

        }
        private void AddWorkout()
        {

        }


    }
}
