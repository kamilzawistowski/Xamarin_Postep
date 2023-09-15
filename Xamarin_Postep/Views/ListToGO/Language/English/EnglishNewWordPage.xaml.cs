using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Language;

namespace Xamarin_Postep.Views.ListToGO.Language.English
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class EnglishNewWordPage : ContentPage
	{
        EnglishWordsViewModel viewModel;
        public EnglishNewWordPage()
        {
            BindingContext = viewModel = new EnglishWordsViewModel();
            InitializeComponent();
        }

        private void Submit_Click(object sender, EventArgs e)
        {
            PolishWordEntry.Text = "";
            EnglishWordEntry.Text = "";
        }


    }
}