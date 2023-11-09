using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.Models;
using Xamarin_Postep.ViewModels.Language;

namespace Xamarin_Postep.Views.ListToGO.Language.English
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class EnglishEditWordPage : ContentPage
	{
		EnglishEditWordViewModel viewModel;

		public EnglishEditWordPage ()
		{

            InitializeComponent();
            BindingContext = viewModel = new EnglishEditWordViewModel();

        }
        public EnglishEditWordPage(EnglishWord model)
        {
            BindingContext = viewModel = new EnglishEditWordViewModel(model);

            InitializeComponent();
            if(model != null)
            {
                ((EnglishEditWordViewModel)BindingContext).EnglishWord = model;
            }

        }

    }
}