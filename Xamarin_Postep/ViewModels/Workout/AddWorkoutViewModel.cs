using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Services;

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

        private ObservableCollection<string> categoryList = StaticDataService.BodyParts;
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

        private ObservableCollection<Exercise> exerciseView;
        public ObservableCollection<Exercise> ExerciseView 
        { 
            get => exerciseView; 
            set => SetProperty(ref exerciseView, value);
        }


        public int countWorkout = 0;

        IDataStore<Exercise> dataStoreExercise;
        IDataStore<Models.Workout> dataStoreWorkout;
        IDataStore<ExerciseCategory> dataStoreExerciseCategory;



        public AddWorkoutViewModel()
        {
            dataStoreWorkout = DependencyService.Get<IDataStore<Models.Workout>>();
            dataStoreExercise = DependencyService.Get<IDataStore<Exercise>>();
            dataStoreExerciseCategory = DependencyService.Get<IDataStore<ExerciseCategory>>();
            ExerciseView = new ObservableCollection<Exercise>(dataStoreExercise.GetItemsAsync().Result.ToList().Where(x => x.Workout == dataStoreWorkout.GetItemsAsync().Result.Count()+1));
            AddExerciseCommand = new Command(AddExercise);
            AddWorkoutCommand = new Command(AddWorkout);
            LoadProductCommand = new Command(RefreshCollection);
            countWorkout = dataStoreWorkout.GetItemsAsync().Result.Count() + 1;
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
                foreach (var item in dataStoreExercise.GetItemsAsync().Result.Where(x => x.Workout == dataStoreWorkout.GetItemsAsync().Result.Count() +1))
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
        private  void AddExercise()
        {
            var exercise = selectedExercise;
            dataStoreExercise.AddItemAsync(new Exercise() { Workout = countWorkout, Category = SelectedCategory, Name = exercise, Series = serieContent, Repeat = RepeatContent, Weight = WeightContent });
            RefreshCollection();
        }
        private async void AddWorkout()
        {
            string cont = await Shell.Current.DisplayPromptAsync("Dodaj Trening", "Podaj Nazwe Treningu");
                
                if(cont != null)
                {
                    dataStoreWorkout.AddItemAsync(new Models.Workout() { DateTime = DateTime.Now, Exercise = new List<Exercise>(dataStoreExercise.GetItemsAsync().Result.Where(x => x.Workout == countWorkout)),Name = cont });

                    RefreshCollection();
                }

            await Shell.Current.GoToAsync("..");
        }

        private void GetExercise()
        {
           
            switch (selectedCategory)
            {
                case "Klata":
                    NameExerciseList = new ObservableCollection<string>(dataStoreExerciseCategory.GetItemsAsync().Result.Where(x => x.BodyPart == "Klata").Select(x => x.ExerciseName).ToList());
                    break;
                case "Biceps":
                    NameExerciseList = new ObservableCollection<string>(dataStoreExerciseCategory.GetItemsAsync().Result.Where(x => x.BodyPart == "Biceps").Select(x => x.ExerciseName).ToList());
                    break;
                case "Triceps":
                    NameExerciseList = new ObservableCollection<string>(dataStoreExerciseCategory.GetItemsAsync().Result.Where(x => x.BodyPart == "Triceps").Select(x => x.ExerciseName).ToList());
                    break;
                case "Plecy":
                    NameExerciseList = new ObservableCollection<string>(dataStoreExerciseCategory.GetItemsAsync().Result.Where(x => x.BodyPart == "Plecy").Select(x => x.ExerciseName).ToList());
                    break;
                case "Dwugłowe Nóg":
                    NameExerciseList = new ObservableCollection<string>(dataStoreExerciseCategory.GetItemsAsync().Result.Where(x => x.BodyPart == "Dwugłowe Nóg").Select(x => x.ExerciseName).ToList());
                    break;
                case "Czworogłowe Nóg":
                    NameExerciseList = new ObservableCollection<string>(dataStoreExerciseCategory.GetItemsAsync().Result.Where(x => x.BodyPart == "Czworogłowe Nóg").Select(x => x.ExerciseName).ToList());
                    break;
                case "Łydki":
                    NameExerciseList = new ObservableCollection<string>(dataStoreExerciseCategory.GetItemsAsync().Result.Where(x => x.BodyPart == "Łydki").Select(x => x.ExerciseName).ToList());
                    break;
                case "Pośladki":
                    NameExerciseList = new ObservableCollection<string>(dataStoreExerciseCategory.GetItemsAsync().Result.Where(x => x.BodyPart == "Pośladki").Select(x => x.ExerciseName).ToList());
                    break;
                case "Brzuch":
                    NameExerciseList = new ObservableCollection<string>(dataStoreExerciseCategory.GetItemsAsync().Result.Where(x => x.BodyPart == "Brzuch").Select(x => x.ExerciseName).ToList());
                    break;
                case "Barki":
                    NameExerciseList = new ObservableCollection<string>(dataStoreExerciseCategory.GetItemsAsync().Result.Where(x => x.BodyPart == "Barki").Select(x => x.ExerciseName).ToList());
                    break;
                default:
                    break;
            }
        }

    }
}
