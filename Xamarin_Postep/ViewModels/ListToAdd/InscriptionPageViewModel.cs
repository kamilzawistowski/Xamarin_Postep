using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using static System.Net.Mime.MediaTypeNames;

namespace Xamarin_Postep.ViewModels.ListToAdd
{
    class InscriptionPageViewModel : BaseViewModel
    {

        private readonly DateTime dateTime;


        public Command OnInscriptionAdd { get; set; }



        private string inscriptionContent;

        public string InscriptionContent
        {
            get => inscriptionContent;
            set
            {
                SetProperty(ref inscriptionContent, value);
            }
        }
        private string selectedEvent;

        public string SelectedEvent
        {
            get => selectedEvent;
            set
            {
                SetProperty(ref selectedEvent, value);
            }
        }

        private ObservableCollection<string> events = new ObservableCollection<string>() { "Urodziny", "Wydarzenie" };

        public ObservableCollection<string> Events
        {
            get => events;
            set
            {
                SetProperty(ref events, value);
            }
        }


        IDataStore<Inscription> dataStore;

        public InscriptionPageViewModel(DateTime dateTime)
        {
            //dataStore = DependencyService.Get<IDataStorage>();
            dataStore = DependencyService.Get<IDataStore<Inscription>>();
            OnInscriptionAdd = new Command(OnAddNewInscription);
            this.dateTime = dateTime;
        }

        public async void OnAddNewInscription()
        {
            Inscription inscription = new Inscription() { DateTime = dateTime ,InscriptionContent = InscriptionContent ,Type = selectedEvent};
            dataStore.AddItemAsync(inscription);
            MessagingCenter.Send(this, "DisplayAlert", $"Pomyslnie Dodano ");
            await Shell.Current.GoToAsync("..");

        }
    }
}
