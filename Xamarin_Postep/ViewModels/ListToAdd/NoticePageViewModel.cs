using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace Xamarin_Postep.ViewModels.ListToAdd
{
    class NoticePageViewModel : BaseViewModel
    {

        private string noticeContent;

        private readonly DateTime dateTime;

        public Command OnNoticeAdd { get; set; }
        public string NoticeContent
        {
            get => noticeContent;
            set
            {
                SetProperty(ref noticeContent, value);
            }
        }

        public NoticePageViewModel(DateTime dateTime)
        {
            OnNoticeAdd = new Command(OnAddNewNotice);
            this.dateTime = dateTime;
        }

        public void OnAddNewNotice()
        {
            var date = dateTime;
            var notice = NoticeContent;
        }
    }
}
