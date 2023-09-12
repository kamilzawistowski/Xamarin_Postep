using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin.Forms;
using Xamarin_Postep.DataBase;


[assembly: Dependency(typeof(InscriptionRepository))]
namespace Xamarin_Postep.DataBase
{
    public class InscriptionRepository : IDataStore<Inscription>
    {
        public async Task<bool> AddItemAsync(Inscription item)
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

            var toDelete = App.Database.Inscription.Where(x => x.ID == id);
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

        public Task<Inscription> GetItemAsync(int id)
            => App.Database.Inscription.FirstOrDefaultAsync(c => c.ID == id);


        public async Task<IEnumerable<Inscription>> GetItemsAsync(bool forceRefresh = false)
            => await App.Database.Inscription.ToListAsync();



        public async Task<bool> UpdateItemAsync(Inscription item)
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
