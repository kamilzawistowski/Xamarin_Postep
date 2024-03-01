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

//[assembly: Dependency(typeof(InscriptionRepository))]
[assembly: Xamarin.Forms.DependencyAttribute(typeof(Xamarin_Postep.DataBase.IngredientRepository))]

namespace Xamarin_Postep.DataBase
{
    public class IngredientRepository : IDataStore<Ingredient>
    {
        public async Task<bool> AddItemAsync(Ingredient item)
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

            var toDelete = App.Database.Ingredient.Where(x => x.ID == id).FirstOrDefault();
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

        public Task<Ingredient> GetItemAsync(int id)
            => App.Database.Ingredient.FirstOrDefaultAsync(c => c.ID == id);


        public async Task<IEnumerable<Ingredient>> GetItemsAsync(bool forceRefresh = false)
            => await App.Database.Ingredient.ToListAsync();



        public async Task<bool> UpdateItemAsync(Ingredient item)
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
