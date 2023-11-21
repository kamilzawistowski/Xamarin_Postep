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
    public class AddWorkoutViewModel : BaseViewModel
    {
        public Command AddExerciseCommand { get; set; }
        public Command LoadProductCommand { get; set; }
        public Command AddWorkoutCommand { get; set; }
        
        private string selectedCategory;
        public string SelectedCategory
        {
            get
            {
                GetExercise();
                return selectedCategory;

            }
            set => SetProperty(ref selectedCategory, value);
        }

        private string serieContent; 
        public string SerieContent
        {
            get
            {
                return serieContent;
            }
            set => SetProperty(ref serieContent, value);
        }
        private string repeatContent;
        public string RepeatContent
        {
            get
            {
                return repeatContent;
            }
            set => SetProperty(ref repeatContent, value);
        }
        private string weightContent;
        public string WeightContent
        {
            get
            {
                return weightContent;
            }
            set => SetProperty(ref weightContent, value);
        }
        private string selectedExercise; 
        public string SelectedExercise
        {
            get
            {
                return selectedExercise;
            }
            set => SetProperty(ref selectedExercise, value);
        }

        private ObservableCollection<string> categoryList = new ObservableCollection<string>() { "Klatka Piersiowa", "Biceps" };
        public ObservableCollection<string> CategoryList
        {
            get
            {
                return categoryList;
            }

            set => SetProperty(ref categoryList, value);
        }
    
        private ObservableCollection<string> nameExerciseList;
        public ObservableCollection<string> NameExerciseList
        {
            get 
            {
                return nameExerciseList;
            }
            set => SetProperty(ref nameExerciseList, value);
        }

        private ObservableCollection<Exercise> exerciseView = new ObservableCollection<Exercise>();
        public ObservableCollection<Exercise> ExerciseView 
        { 
            get => exerciseView; 
            set => SetProperty(ref exerciseView, value);
        }

        IDataStore<Exercise> dataStoreExercise;
        public AddWorkoutViewModel()
        {
            dataStoreExercise = DependencyService.Get<IDataStore<Exercise>>();
            exerciseView = new ObservableCollection<Exercise>(dataStoreExercise.GetItemsAsync().Result.ToList());
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
                foreach (var item in dataStoreExercise.GetItemsAsync().Result)
                {
                    ExerciseView.Add(item);
                }
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
            var exercise = selectedExercise;
            dataStoreExercise.AddItemAsync(new Exercise() { Category = SelectedCategory, Description = exercise, Series= serieContent,Repeat = RepeatContent,Weight = WeightContent });
            RefreshCollection();
        }
        private void AddWorkout()
        {

        }

        private void GetExercise()
        {
            if (selectedCategory == "Klatka Piersiowa")
            {
                NameExerciseList = new ObservableCollection<string>() { "Ławeczka sztanga", "ławeczka Hantle" };
            }
            else if (selectedCategory == "Biceps")
            {
                NameExerciseList = new ObservableCollection<string>() { "Hantle Stojąc", "Modlitewnik" };
            }
        }

    }
}
