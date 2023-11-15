using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
[assembly: Xamarin.Forms.DependencyAttribute(typeof(Xamarin_Postep.DataBase.ExerciseRepository))]

namespace Xamarin_Postep.DataBase
{
    internal class ExerciseRepository : IDataStore<Exercise>
    {
        public async Task<bool> AddItemAsync(Models.Exercise item)
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

            var toDelete = App.Database.Exercise.Where(x => x.Id == id).FirstOrDefault();
            if (toDelete != null)
            {

                App.Database.Exercise.Remove(toDelete);

                await App.Database.SaveChangesAsync();

                return true;
            }
            else
            {
                return false;
            }
        }


        public Task<Models.Exercise> GetItemAsync(int id)
            => App.Database.Exercise.FirstOrDefaultAsync(c => c.Id == id);


        public async Task<IEnumerable<Models.Exercise>> GetItemsAsync(bool forceRefresh = false)
            => await App.Database.Exercise.ToListAsync();



        public async Task<bool> UpdateItemAsync(Models.Exercise item)
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
