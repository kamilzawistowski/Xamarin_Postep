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

[assembly: Xamarin.Forms.Dependency(typeof(NoticeRepository))]
namespace Xamarin_Postep.DataBase
{
    class NoticeRepository : IDataStore<Models.Notice>
    {
        public async Task<bool> AddItemAsync(Notice item)
        {
            if (item != null)
            {
                App.Database.Notice.Add(item);
                await App.Database.SaveChangesAsync();
                return true;
            }
            else
                return false;
        }

        public async Task<bool> DeleteItemAsync(int id)
        {

            var toDelete = App.Database.Notice.Where(x => x.ID == id).FirstOrDefault();
            if (toDelete != null)
            {
                App.Database.Notice.Remove(toDelete);
                await App.Database.SaveChangesAsync();
                return true;
            }
            else
            {
                return false;
            }
        }

        public Task<Notice> GetItemAsync(int id)
            => App.Database.Notice.FirstOrDefaultAsync(c => c.ID == id);


        public async Task<IEnumerable<Notice>> GetItemsAsync(bool forceRefresh = false)
            => await App.Database.Notice.ToListAsync();



        public async Task<bool> UpdateItemAsync(Notice item)
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
