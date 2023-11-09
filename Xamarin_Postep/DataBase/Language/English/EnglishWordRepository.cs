using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Xamarin_Postep.DataBase.Language.English;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
[assembly: Xamarin.Forms.Dependency(typeof(EnglishWordRepository))]

namespace Xamarin_Postep.DataBase.Language.English
{
    class EnglishWordRepository : IDataStore<EnglishWord>
    {
        public async Task<bool> AddItemAsync(EnglishWord item)
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

            var toDelete = App.Database.EnglishWord.Where(x => x.ID == id).FirstOrDefault();
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

        public Task<EnglishWord> GetItemAsync(int id)
            => App.Database.EnglishWord.FirstOrDefaultAsync(c => c.ID == id);


        public async Task<IEnumerable<EnglishWord>> GetItemsAsync(bool forceRefresh = false)
            => await App.Database.EnglishWord.ToListAsync();



        public async Task<bool> UpdateItemAsync(EnglishWord item)
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
