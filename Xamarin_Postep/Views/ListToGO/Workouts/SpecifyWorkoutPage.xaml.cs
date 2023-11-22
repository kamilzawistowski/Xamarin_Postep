using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.ViewModels.Language;
using Xamarin_Postep.ViewModels.Workout;

namespace Xamarin_Postep.Views.ListToGO.Workouts
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SpecifyWorkoutPage : ContentPage
    {
        SpecifyWorkoutViewModel viewModel;
        public SpecifyWorkoutPage(Models.Workout workout)
        {
            BindingContext = viewModel = new SpecifyWorkoutViewModel(workout);
            InitializeComponent();

            if (workout != null)
            {
                ((SpecifyWorkoutViewModel)BindingContext).Workout = workout;
            }
            
        }
        public SpecifyWorkoutPage()
        {
            InitializeComponent();
            BindingContext = viewModel = new SpecifyWorkoutViewModel();
            

        }
    }
}