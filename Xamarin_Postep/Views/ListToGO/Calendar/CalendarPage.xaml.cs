using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.ViewModels.Calendar;

namespace Xamarin_Postep.Views.ListToGO
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class CalendarPage : ContentPage
	{
		CalendarViewModel viewModel;
		public CalendarPage ()
		{
			BindingContext = viewModel = new CalendarViewModel ();
			InitializeComponent ();
		}

        private void CheckBox_CheckedChanged(object sender, CheckedChangedEventArgs e)
        {

        }
    }
}