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
using Xamarin_Postep.Services;

[assembly: Dependency(typeof(QuestRepository))]
namespace Xamarin_Postep.DataBase
{
    class QuestRepository : IDataStore<Quest>, IRepozytory
    {
        public async Task<bool> AddItemAsync(Quest item)
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

            var toDelete = App.Database.Quest.Where(x => x.ID == id).FirstOrDefault();
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

        public Task<Quest> GetItemAsync(int id)
            => App.Database.Quest.FirstOrDefaultAsync(c => c.ID == id);


        public async Task<IEnumerable<Quest>> GetItemsAsync(bool forceRefresh = false)
            => await App.Database.Quest.ToListAsync();



        public async Task<bool> UpdateItemAsync(Quest item)
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
