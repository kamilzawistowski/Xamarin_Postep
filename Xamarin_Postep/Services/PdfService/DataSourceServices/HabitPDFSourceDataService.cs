using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xamarin.Forms.Internals;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Models.DTOS;

namespace Xamarin_Postep.Services.PdfService.DataSourceServices
{
    public class HabitPDFSourceDataService
    {

        public HabitPDFSourceDataService()
        {
            dataStore = DependencyService.Get<IDataStore<Habit>>();
        }

        public IDataStore<Habit> dataStore { get; set; }


        public List<HabitDTO> GetHabitData(int Days)
        {
            var habits = new List<HabitDTO>();

            int counter = 0;
            var habitsInGroup = GetGroupingHabits();
            foreach (var specifyHabit in habitsInGroup)
            {
                foreach (var item in specifyHabit)
                {      
                    if(item.DateTime.DayOfYear > DateTime.Now.DayOfYear - Days && item.DateTime.DayOfYear <= DateTime.Now.DayOfYear)
                    {
                        if (item.IsComplete == true)
                            counter++;
                    }
                }
                habits.Add(new HabitDTO() { Name = specifyHabit.Key, CountOfPassDays = counter , NumberOfDaysOfTheRaport = Days});
                counter = 0;
            }
            return habits;
        }
        public List<IGrouping<string, Habit>> GetGroupingHabits()
        {
            return dataStore.GetItemsAsync().Result.GroupBy(x => x.Name).ToList();
        }

    }

}
