using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Xamarin.Forms;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Models.Meals;

[assembly: Dependency(typeof(MealRepository))]

namespace Xamarin_Postep.DataBase
{
    class MealRepository : IDataStore<Meal>
    {
        public async Task<bool> AddItemAsync(Meal item)
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

            var toDelete = App.Database.Meal.Where(x => x.ID == id).FirstOrDefault();
            if (toDelete != null)
            {
                App.Database.Remove(toDelete);
                await App.Database.SaveChangesAsync();
                return true;
            }
            else
            {
                return false;
            }
        }

        public Task<Meal> GetItemAsync(int id)
            => App.Database.Meal.FirstOrDefaultAsync(c => c.ID == id);


        public async Task<IEnumerable<Meal>> GetItemsAsync(bool forceRefresh = false)
            => await App.Database.Meal.ToListAsync();



        public async Task<bool> UpdateItemAsync(Meal item)
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
