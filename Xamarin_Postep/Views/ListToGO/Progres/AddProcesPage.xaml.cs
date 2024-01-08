using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Progres;

namespace Xamarin_Postep.Views.ListToGO.Progres
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AddProcesPage : ContentPage
    {
        ProcesNewElementViewModel viewModel;
        public AddProcesPage()
        {
            InitializeComponent();
            BindingContext = viewModel = new ProcesNewElementViewModel();

        }
    }
}