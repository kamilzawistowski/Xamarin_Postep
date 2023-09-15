using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.DataBase.Language.English;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
[assembly: Xamarin.Forms.Dependency(typeof(EnglishCategoryRepository))]

namespace Xamarin_Postep.DataBase.Language.English
{
    class EnglishCategoryRepository : IDataStore<EnglishCategory>
    {
        public async Task<bool> AddItemAsync(EnglishCategory item)
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

            var toDelete = App.Database.EnglishCategory.Where(x => x.ID == id);
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

        public Task<EnglishCategory> GetItemAsync(int id)
            => App.Database.EnglishCategory.FirstOrDefaultAsync(c => c.ID == id);


        public async Task<IEnumerable<EnglishCategory>> GetItemsAsync(bool forceRefresh = false)
            => await App.Database.EnglishCategory.ToListAsync();



        public async Task<bool> UpdateItemAsync(EnglishCategory item)
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
