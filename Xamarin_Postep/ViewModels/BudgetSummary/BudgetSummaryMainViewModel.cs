using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microcharts;
using SkiaSharp;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
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

        IDataStore<Summary> dataStore;

        public BudgetSummaryMainViewModel()
        {
            dataStore = DependencyService.Get<IDataStore<Models.Summary>>();
            GenereteChart();
            SettingCommand = new Command(GoToSettingsAsync);
        }

        public async void GoToSettingsAsync()
        {
            await Shell.Current.GoToAsync(nameof(BudgetSettingsPage));
        }


        public List<ChartEntry> entities;
        public List<ChartEntry> Entities
        {
            get => entities;
            set
            {
                SetProperty(ref entities, value);
            }
        }
        public List<ChartEntry> GenereteChart()
        {
            
            var entitiesD = new List<ChartEntry>();
            int color = 1;
            decimal PriceSum = 0;
            var db = dataStore.GetItemsAsync().Result.Where(x => x.Price > 0).GroupBy(x => x.Category);
            foreach (var item in db)
            {

                Summary Summaryy = new Summary();

                foreach (var item2 in item)
                {
                    PriceSum += item2.Price;
                }

                var random = new Random();
                string colorRandom = String.Format("#{0:X6}", random.Next(0x1000000));
                ChartEntry abc = new ChartEntry((int)PriceSum)
                {
                    Label = $"{item.FirstOrDefault().Category}",
                    ValueLabel = $"{PriceSum}",
                    Color = SKColor.Parse($"{colorRandom}"),
                    ValueLabelColor = SKColor.Parse($"{colorRandom}"),
                    TextColor = SKColor.Parse("#000000")
                };
                entitiesD.Add(abc);
                color = color + 1;
                PriceSum = 0;
            }
            Entities = entitiesD;
            return entities;
        }
        
    }
}
