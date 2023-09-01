using System.ComponentModel;
using Xamarin.Forms;
using Xamarin_Postep.ViewModels;

namespace Xamarin_Postep.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}