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
        public NewNoticeViewModel()
        {
            AddNewNotice = new Command(OnAddNewNotice);
            dataStore = DependencyService.Get<IDataStore<Models.Notice>>();
        }

        public void OnAddNewNotice()
        {
            dataStore.AddItemAsync(new Models.Notice() { Note = Note, Theme = Theme});
        }

    }
}
