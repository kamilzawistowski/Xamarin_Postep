using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Habit;

namespace Xamarin_Postep.Views.ListToGO.Habits
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class NewHabitPage : ContentPage
    {
        NewHabitViewModel viewModel;
        public NewHabitPage()
        {
            BindingContext = viewModel = new NewHabitViewModel();
            InitializeComponent();
        }

       
    }
}