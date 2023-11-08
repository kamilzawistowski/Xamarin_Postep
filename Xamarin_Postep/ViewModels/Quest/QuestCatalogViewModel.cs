using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reactive.Linq;
using System.Text;
using System.Windows.Input;
using Microsoft.Extensions.DependencyModel;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;

namespace Xamarin_Postep.ViewModels.Quest
{
    public class QuestCatalogViewModel : BaseViewModel
    {
        private ObservableCollection<Models.Quest> quest;
        public ICommand DeleteSelectedCommand { get; set; }
        public ObservableCollection<Models.Quest> Quest
        {
            get { return quest; }
            set 
            {
                quest = value;
                OnPropertyChanged(nameof(quest));
            }
        }

        IDataStore<Models.Quest> dataStore;
        public QuestCatalogViewModel()
        {

            dataStore = DependencyService.Get<IDataStore<Models.Quest>>();
            quest = new ObservableCollection<Models.Quest>(dataStore.GetItemsAsync().Result.ToList());
            DeleteSelectedCommand = new Command<Models.Quest>(DeleteSelectedItem);
        }
        
        public async void DeleteSelectedItem(Models.Quest item)
        {
            var cont = await Shell.Current.DisplayActionSheet("Usuń", "Tak", "Nie", $"Czy napewno chcesz usunąć zadanie {item.Content} z dnia {item.Date}");
            if(cont == "Tak")
            {
                dataStore.DeleteItemAsync(item.ID);
            }
            
            
        }
        
    }
}
