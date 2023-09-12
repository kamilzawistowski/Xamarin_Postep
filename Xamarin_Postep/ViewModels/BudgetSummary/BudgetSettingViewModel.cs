using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using Xamarin.Forms;

namespace Xamarin_Postep.ViewModels.BudgetSummary
{
    
    public class BudgetSettingViewModel : BaseViewModel
    {

        private ObservableCollection<string> WydatekList;

        public ObservableCollection<string> WydatekListt
        {
            get => Seed();
            set => SetProperty(ref WydatekList, value);
        }

        public BudgetSettingViewModel()
        {
            ObservableCollection<string> WydatekList = new ObservableCollection<string>();
            WydatekList.Add("test"); 
            WydatekList.Add("test");
            WydatekList.Add("test");
            WydatekList.Add("test");
            WydatekList.Add("test");
            WydatekList.Add("test");
        }
        public ObservableCollection<string> Seed()
        {
            ObservableCollection<string> WydatekList = new ObservableCollection<string>();
            WydatekList.Add("test");
            WydatekList.Add("test");
            WydatekList.Add("test");
            WydatekList.Add("test");
            WydatekList.Add("test");
            WydatekList.Add("test");
            return WydatekList;
        }
    }
    
    
}
