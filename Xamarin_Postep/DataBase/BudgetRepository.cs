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
using Xamarin.Forms;

[assembly: Xamarin.Forms.Dependency(typeof(BudgetRepository))]
namespace Xamarin_Postep.DataBase
{
    class BudgetRepository : IDataStore<Summary>
    {
        public async Task<bool> AddItemAsync(Summary item)
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

            var toDelete = App.Database.Summary.Where(x => x.ID == id).FirstOrDefault();
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

        public Task<Summary> GetItemAsync(int id)
            => App.Database.Summary.FirstOrDefaultAsync(c => c.ID == id);


        public async Task<IEnumerable<Summary>> GetItemsAsync(bool forceRefresh = false)
            => await App.Database.Summary.ToListAsync();



        public async Task<bool> UpdateItemAsync(Summary item)
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
