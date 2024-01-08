using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;

namespace Xamarin_Postep.ViewModels.Progres
{
    public class ProcesNewElementViewModel : BaseViewModel
    {
        private string selectedCategory;
        public string SelectedCategory
        {
            get { return selectedCategory; }
            set { SetProperty(ref selectedCategory, value); }
        }
        
        private string procesName;
        public string ProcesName
        {
            get { return procesName; }
            set { SetProperty(ref procesName, value); }
        }

        private ObservableCollection<string> categories;
        public ObservableCollection<string> Categories 
        { 
            get 
            { 
                return categories;
            }
            set
            {
                SetProperty(ref categories, value);
            }
        }
        public ProcesNewElementViewModel()
        {
            categories = new ObservableCollection<string>() { "Ksiazka", "Etapy" };
        }

    }
}
