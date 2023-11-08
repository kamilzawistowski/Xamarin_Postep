using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Quest;

namespace Xamarin_Postep.Views.ListToGO.Spis
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class QuestCatalogPage : ContentPage
	{
		QuestCatalogViewModel viewmodel;
		public QuestCatalogPage ()
		{
            BindingContext = viewmodel = new QuestCatalogViewModel();
            InitializeComponent();
		}
        protected override void OnAppearing()
        {
            base.OnAppearing();
        }
    }
}