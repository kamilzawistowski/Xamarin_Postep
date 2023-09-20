using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Extensions.DependencyModel;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;

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

        public Command AddNewNotice { get; set; }
        public NewNoticeViewModel(DateTime date)
        {
            AddNewNotice = new Command(OnAddNewNotice);
            dataStore = DependencyService.Get<IDataStore<Models.Notice>>();
        }

        public async void OnAddNewNotice()
        {
            var newModel = new Models.Notice() { Note = Note, Theme = Theme };
            dataStore.AddItemAsync(newModel);
            await Shell.Current.GoToAsync("..");
        }

    }
}
