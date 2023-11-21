using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.Models;
using Xamarin_Postep.ViewModels.Workout;

namespace Xamarin_Postep.Views.ListToGO.Workouts
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SpecifyWorkoutPage : ContentPage
    {
        SpecifyWorkoutViewModel viewModel;
        public SpecifyWorkoutPage(Exercise exercise)
        {
            BindingContext = viewModel = new SpecifyWorkoutViewModel();
            InitializeComponent();
        }
    }
}