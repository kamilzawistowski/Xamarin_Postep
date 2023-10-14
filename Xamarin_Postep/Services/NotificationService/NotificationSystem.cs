using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Extensions.DependencyModel;
using Plugin.LocalNotification;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;

namespace Xamarin_Postep.Services.NotificationService
{
    public class NotificationSystem
    {
        IDataStore<Models.Quest> dataStore;
        public NotificationSystem()
        {
            dataStore = DependencyService.Get<IDataStore<Models.Quest>>();
            var questList = dataStore.GetItemsAsync().Result.Where(x => x.DateToPushNotify.Month == DateTime.Now.Month);
            foreach (var item in questList)
            {
                if (item.DateToPushNotify.Hour != 0)
                {
                    var notification = new NotificationRequest
                    {
                        BadgeNumber = 1,
                        Description = "",
                        Title = $"{item.Content}",
                        ReturningData = "DUMMYDATA",
                        NotificationId = 1,
                        Schedule = new NotificationRequestSchedule
                        {
                            NotifyTime = item.DateToPushNotify
                        },
                    };
                    LocalNotificationCenter.Current.Show(notification);
                }
            }
        }

    }
}
