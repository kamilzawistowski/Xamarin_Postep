using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.ListToAdd;

namespace Xamarin_Postep.Views.ListToAdd
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class AddInscriptionPage : ContentPage
	{
        InscriptionPageViewModel viewModel;
		public AddInscriptionPage(DateTime dateTime)
		{
			BindingContext = viewModel = new InscriptionPageViewModel(dateTime);
			InitializeComponent();
		}
	}
}