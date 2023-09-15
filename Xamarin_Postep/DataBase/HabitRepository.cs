using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;

[assembly: Xamarin.Forms.Dependency(typeof(HabitRepository))]
namespace Xamarin_Postep.DataBase
{
    class HabitRepository : IDataStore<Habit>
    {
        public async Task<bool> AddItemAsync(Habit item)
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

            var toDelete = App.Database.Habit.Where(x => x.ID == id);
            if (toDelete != null)
            {
                App.Database.Remove(toDelete);
                return true;
            }
            else
            {
                return false;
            }
        }

        public Task<Habit> GetItemAsync(int id)
            => App.Database.Habit.FirstOrDefaultAsync(c => c.ID == id);


        public async Task<IEnumerable<Habit>> GetItemsAsync(bool forceRefresh = false)
            => await App.Database.Habit.ToListAsync();



        public async Task<bool> UpdateItemAsync(Habit item)
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
