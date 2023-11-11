using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Models.DTOS;

namespace Xamarin_Postep.Services.PdfService.DataSourceServices
{
    public class QuestPDFSourceDataService
    {
        IDataStore<Quest> dataStore;
        public QuestPDFSourceDataService()
        {
            dataStore = DependencyService.Get<IDataStore<Quest>>();   
        }

        public List<QuestDTO> GetQuestData(int Days)
        {
            var habits = new List<QuestDTO>();

            int counter = 0;
            int fullDayNumber = 0;
            var habitsInGroup = GetGroupingQuests();
            foreach (var specifyHabit in habitsInGroup)
            {
                foreach (var item in specifyHabit)
                {
                    if (item.Date.DayOfYear > DateTime.Now.DayOfYear - Days && item.Date.DayOfYear <= DateTime.Now.DayOfYear)
                    {
                        fullDayNumber++;
                        if (item.IsComplete == true)
                            counter++;
                    }
                }
                habits.Add(new QuestDTO() { Name = specifyHabit.Key, CountOfPassDays = counter, NumberOfDaysOfTheRaport = fullDayNumber });
                counter = 0;
                fullDayNumber = 0;
            }
            return habits;
        }
        public List<IGrouping<string, Quest>> GetGroupingQuests()
        {
            return dataStore.GetItemsAsync().Result.GroupBy(x => x.Content).ToList();
        }

    }
}
