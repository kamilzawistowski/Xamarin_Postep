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
	public partial class AddQuestPage : ContentPage
	{
		QuestViewModel viewModel;
		public AddQuestPage (DateTime time)
		{
			BindingContext = viewModel = new QuestViewModel (time);
			InitializeComponent ();
		}
	}
}