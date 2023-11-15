using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;

[assembly: Xamarin.Forms.DependencyAttribute(typeof(Xamarin_Postep.DataBase.WorkoutRepository))]

namespace Xamarin_Postep.DataBase
{
    internal class WorkoutRepository : IDataStore<Workout>
    {

        public async Task<bool> AddItemAsync(Models.Workout item)
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

            var toDelete = App.Database.Workout.Where(x => x.Id == id).FirstOrDefault();
            if (toDelete != null)
            {

                App.Database.Workout.Remove(toDelete);

                await App.Database.SaveChangesAsync();

                return true;
            }
            else
            {
                return false;
            }
        }


        public Task<Models.Workout> GetItemAsync(int id)
            => App.Database.Workout.FirstOrDefaultAsync(c => c.Id == id);


        public async Task<IEnumerable<Models.Workout>> GetItemsAsync(bool forceRefresh = false)
            => await App.Database.Workout.ToListAsync();



        public async Task<bool> UpdateItemAsync(Models.Workout item)
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
