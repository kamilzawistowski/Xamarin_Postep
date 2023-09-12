using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;

namespace Xamarin_Postep.ViewModels.ListToAdd
{
    class InscriptionPageViewModel : BaseViewModel
    {

        private string inscriptionContent;

        private readonly DateTime dateTime;

        public Command OnInscriptionAdd { get; set; }
        public string InscriptionContent
        {
            get => inscriptionContent;
            set
            {
                SetProperty(ref inscriptionContent, value);
            }
        }
            IDataStore<Inscription> dataStore;

        public InscriptionPageViewModel(DateTime dateTime)
        {
            //dataStore = DependencyService.Get<IDataStorage>();
            dataStore = DependencyService.Get<IDataStore<Inscription>>();
            OnInscriptionAdd = new Command(OnAddNewNotice);
            this.dateTime = dateTime;
        }

        public void OnAddNewNotice()
        {
            Inscription inscription = new Inscription() { DateTime = dateTime ,InscriptionContent = InscriptionContent};
            dataStore.AddItemAsync(inscription);

        }
    }
}
