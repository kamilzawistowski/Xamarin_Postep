using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Views;
using Xamarin_Postep.Views.ListToGO.Language.English;

namespace Xamarin_Postep.ViewModels.Language
{
    public class EnglishMainViewModel : BaseViewModel
    {
        private List<string> options;

        public Command SettingCommand { get; set; }
        public Command BackButton { get; set; }

        public IDataStore<EnglishCategory> dataStoreEnglishCategory;
        public List<string> Options
        {
            get { return options = new List<string>(dataStoreEnglishCategory.GetItemsAsync().Result.Select(x=> x.Name)); }
            set
            {
                if (options != value)
                {
                    SetProperty(ref options, value);

                }
            }
        }

        public EnglishMainViewModel()
        {
            dataStoreEnglishCategory = DependencyService.Get<IDataStore<EnglishCategory>>();
            SettingCommand = new Command(GoToSettings);
            BackButton = new Command(BackToPreviousPage);
        }

        public async void GoToSettings()
        {
            await Shell.Current.GoToAsync(nameof(EnglishSettingsPage));
        }
        public async void BackToPreviousPage()
        {
            await Shell.Current.GoToAsync("..");

        }
    }
}
