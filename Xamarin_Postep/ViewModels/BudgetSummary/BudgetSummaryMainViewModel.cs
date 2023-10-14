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
using static QuestPDF.Helpers.Colors;

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
            string FinanseCategory;
            var db = dataStore.GetItemsAsync().Result.Where(x => x.Price > 0).GroupBy(x => x.Category);
            foreach (var item in db)
            {

                Summary Summaryy = new Summary();

                foreach (var item2 in item)
                {
                    PriceSum += item2.Price;
                   
                }

                FinanseCategory = item.FirstOrDefault().Type;
                
                var ChartBackgroundColor = GetChartColor(FinanseCategory);

                ChartEntry abc = new ChartEntry((int)PriceSum)
                {
                    Label = $"{item.FirstOrDefault().Category}",
                    ValueLabel = $"{PriceSum}",
                    Color = SKColor.Parse($"{ChartBackgroundColor}"),
                    ValueLabelColor = SKColor.Parse($"{ChartBackgroundColor}"),
                    TextColor = SKColor.Parse($"#000000")
                };
                entitiesD.Add(abc);
                PriceSum = 0;
            }
            Entities = entitiesD;
            return entities;
        }
        
        private SKColor GetChartColor(string finanseCategory)
        {
            int red = 0;
            int green = 0;
            Random random2 = new Random();
            if (finanseCategory == "Wydatek")
            {
                red = random2.Next(256);
                green = random2.Next(20);

            }
            else if (finanseCategory == "Przychod")
            {
                red = random2.Next(20);
                green = random2.Next(256);
            }
            int blue = random2.Next(10);
            SKColor BcgColorChart = new SKColor((byte)red, (byte)green, (byte)blue);
            return BcgColorChart;
        }
    }
}
