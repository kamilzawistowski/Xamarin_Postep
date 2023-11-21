using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;

[assembly: Xamarin.Forms.DependencyAttribute(typeof(Xamarin_Postep.DataBase.HabitRepository))]
namespace Xamarin_Postep.DataBase
{
    class HabitRepository : IDataStore<Models.Habit> , IRepozytory
    {
        public async Task<bool> AddItemAsync(Models.Habit item)
        {
            if (item != null)
            {
                App.Database.Add(item);
                await App.Database.SaveChangesAsync();
                return true;
            }
            else
                return false;
        }

        public async Task<bool> DeleteItemAsync(int id)
        {

            var toDelete = App.Database.Habit.Where(x => x.IdGroup == id).FirstOrDefault();
            if (toDelete != null)
            {
                foreach (var item in App.Database.Habit.Where(x => x.IdGroup == id))
                {
                    App.Database.Remove(item);

                }

                await App.Database.SaveChangesAsync();

                return true;
            }
            else
            {
                return false;
            }
        }

        public Task<Models.Habit> GetItemAsync(int id)
            => App.Database.Habit.FirstOrDefaultAsync(c => c.ID == id);


        public async Task<IEnumerable<Models.Habit>> GetItemsAsync(bool forceRefresh = false)
            => await App.Database.Habit.ToListAsync();



        public async Task<bool> UpdateItemAsync(Models.Habit item)
        {
            if (item != null)
            {
                App.Database.Update(item);
                await App.Database.SaveChangesAsync();
                return true;
            }
            else
                return false;
        }

    }
}
