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

[assembly: Xamarin.Forms.DependencyAttribute(typeof(Xamarin_Postep.DataBase.ExerciseCategoryRepository))]
namespace Xamarin_Postep.DataBase
{
    public class ExerciseCategoryRepository : IDataStore<ExerciseCategory>
    {
        public async Task<bool> AddItemAsync(ExerciseCategory item)
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

            var toDelete = App.Database.ExerciseCategory.Where(x => x.Id == id).FirstOrDefault();
            if (toDelete != null)
            {

                App.Database.ExerciseCategory.Remove(toDelete);

                await App.Database.SaveChangesAsync();

                return true;
            }
            else
            {
                return false;
            }
        }


        public Task<Models.ExerciseCategory> GetItemAsync(int id)
            => App.Database.ExerciseCategory.FirstOrDefaultAsync(c => c.Id == id);


        public async Task<IEnumerable<Models.ExerciseCategory>> GetItemsAsync(bool forceRefresh = false)
            => await App.Database.ExerciseCategory.ToListAsync();



        public async Task<bool> UpdateItemAsync(Models.ExerciseCategory item)
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
