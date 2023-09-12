using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;

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

        IDataStore<Models.Notice> dataStore;
        
        public NoteSpecifyViewModel(string Themee)
        {
            dataStore = DependencyService.Get<IDataStore<Models.Notice>>();
            var note = dataStore.GetItemAsync(App.Database.Notice.Where(x => x.Theme == Themee).Select(x => x.ID).FirstOrDefault());
            Theme = note.Result.Theme;
            Note = note.Result.Note;
        }
    }
}
