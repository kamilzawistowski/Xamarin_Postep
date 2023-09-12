using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.Models;
using Xamarin_Postep.Views.ListToGO.Notice;

namespace Xamarin_Postep.ViewModels.Notice
{
    class NoticeViewModel : BaseViewModel
    {
        private ObservableCollection<Models.Notice> noticeList = new ObservableCollection<Models.Notice>(App.Database.Notice.ToList()); 
        public ObservableCollection<Models.Notice> NoticeList
        {
            get => noticeList;
            set
            {
                SetProperty(ref noticeList, value);
            }
        }

        public NoticeViewModel()
        {
           
        }

    }
}
