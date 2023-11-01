using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Text;
using Microsoft.Extensions.DependencyModel;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using static System.Net.Mime.MediaTypeNames;

namespace Xamarin_Postep.ViewModels.Notice
{
    class NewNoticeViewModel : BaseViewModel
    {
        private string theme;
        public string Theme
        {
            get => theme;
            set => SetProperty(ref theme, value);
        }
        private string note;
        public string Note
        {
            get => note;
            set => SetProperty(ref note, value);
        }
        IDataStore<Models.Notice> dataStore;

        private bool ValidateSave()
        {
            return !String.IsNullOrWhiteSpace(theme);
        }

        public Command AddNewNotice { get; set; }
        public NewNoticeViewModel(DateTime date)
        {
            AddNewNotice = new Command(OnAddNewNotice, ValidateSave);
            dataStore = DependencyService.Get<IDataStore<Models.Notice>>();
            this.PropertyChanged +=
               (_, __) => AddNewNotice.ChangeCanExecute();
        }

        public async void OnAddNewNotice()
        {
            var newModel = new Models.Notice() { Note = Note, Theme = Theme };
            dataStore.AddItemAsync(newModel);
            MessagingCenter.Send(this, "DisplayAlert", $"Pomyslnie Dodano \n {theme}");
            await Shell.Current.GoToAsync("..");

        }

    }
}
