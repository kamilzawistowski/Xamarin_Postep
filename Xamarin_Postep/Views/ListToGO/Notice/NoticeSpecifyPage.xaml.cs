using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Notice;

namespace Xamarin_Postep.Views.ListToGO.Notice
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class NoticeSpecifyPage : ContentPage
	{
		NoteSpecifyViewModel viewModel;
		public NoticeSpecifyPage(string Theme)
		{
			BindingContext = viewModel = new NoteSpecifyViewModel(Theme);
			InitializeComponent();
		}
	}
}