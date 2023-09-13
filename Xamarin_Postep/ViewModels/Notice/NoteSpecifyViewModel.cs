using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Views.ListToGO.Notice;

namespace Xamarin_Postep.ViewModels.Notice
{
    class NoteSpecifyViewModel : BaseViewModel
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
        private Models.Notice EditingNotice { get; set; }

        public ICommand DeleteNotice { get; set; }

        public ICommand BackButton { get; set; }
        IDataStore<Models.Notice> dataStore;
        public NoteSpecifyViewModel(string Themee)
        {
            BackButton = new Command(OnBackBtnClick);
            DeleteNotice = new Command(DeleteSpecifyList);
            dataStore = DependencyService.Get<IDataStore<Models.Notice>>();
            EditingNotice = dataStore.GetItemAsync(App.Database.Notice.Where(x => x.Theme == Themee).Select(x => x.ID).FirstOrDefault()).Result;
            Theme = EditingNotice.Theme;
            Note = EditingNotice.Note;
        }

        public async void OnBackBtnClick()
        {
            EditingNotice.Theme = Theme;
            EditingNotice.Note = Note;
            dataStore.UpdateItemAsync(EditingNotice);
            await Shell.Current.GoToAsync("..");
        }

        public async void DeleteSpecifyList()
        {
            dataStore.DeleteItemAsync(EditingNotice.ID);
            await Shell.Current.GoToAsync("..");
        }

    }
}
