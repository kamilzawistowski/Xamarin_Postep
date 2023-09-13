using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin_Postep.Models;
using Xamarin_Postep.Views.ListToGO.Budget;

namespace Xamarin_Postep.ViewModels.BudgetSummary
{
    public class BudgetSummaryMainViewModel : BaseViewModel
    {
        private ObservableCollection<Summary> wydatekList = new ObservableCollection<Summary>(App.Database.Summary.Where(x => x.Type == "Wydatek").ToList());
        public ObservableCollection<Summary> WydatekList
        {
            get => wydatekList;
            set
            {
                SetProperty(ref wydatekList, value);
            }
        }
        private ObservableCollection<Summary> przychodList = new ObservableCollection<Summary>(App.Database.Summary.Where(x => x.Type == "Przychod").ToList());
        public ObservableCollection<Summary> PrzychodList
        {
            get => przychodList;
            set
            {
                SetProperty(ref przychodList, value);
            }
        }

        public Command SettingCommand { get; set; }
        public BudgetSummaryMainViewModel()
        {
            SettingCommand = new Command(GoToSettingsAsync);
        }

        public async void GoToSettingsAsync()
        {
            await Shell.Current.GoToAsync(nameof(BudgetSettingsPage));
        }
    }
}
