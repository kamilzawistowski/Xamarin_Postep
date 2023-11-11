using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;


[assembly: Xamarin.Forms.Dependency(typeof(BudgetCategoryRepository))]
namespace Xamarin_Postep.DataBase
{
    internal class BudgetCategoryRepository : IDataStore<BudgetCategory>, IRepozytory
    {
        public async Task<bool> AddItemAsync(BudgetCategory item)
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

            var toDelete = App.Database.BudgetCategory.Where(x => x.ID == id).FirstOrDefault();
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

        public Task<BudgetCategory> GetItemAsync(int id)
            => App.Database.BudgetCategory.FirstOrDefaultAsync(c => c.ID == id);


        public async Task<IEnumerable<BudgetCategory>> GetItemsAsync(bool forceRefresh = false)
            => await App.Database.BudgetCategory.ToListAsync();



        public async Task<bool> UpdateItemAsync(BudgetCategory item)
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
