using System;
using System.Collections.Generic;
using Xamarin.Forms;
using Xamarin_Postep.ViewModels;
using Xamarin_Postep.Views;
using Xamarin_Postep.Views.Language;
using Xamarin_Postep.Views.ListToAdd;
using Xamarin_Postep.Views.ListToGO;
using Xamarin_Postep.Views.ListToGO.Budget;
using Xamarin_Postep.Views.ListToGO.Notice;

namespace Xamarin_Postep
{
    public partial class AppShell : Xamarin.Forms.Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(ItemDetailPage), typeof(ItemDetailPage));
            Routing.RegisterRoute(nameof(NewItemPage), typeof(NewItemPage));
            Routing.RegisterRoute(nameof(EnglishMainPage), typeof(EnglishMainPage)); 
            Routing.RegisterRoute(nameof(TestowyPage), typeof(TestowyPage)); 
            Routing.RegisterRoute(nameof(CalendarPage), typeof(CalendarPage));
            Routing.RegisterRoute(nameof(AddInscriptionPage), typeof(AddInscriptionPage));
            Routing.RegisterRoute(nameof(AddQuestPage), typeof(AddQuestPage)); 
            Routing.RegisterRoute(nameof(AddBudgetPage), typeof(AddBudgetPage)); 
            Routing.RegisterRoute(nameof(AddNoticePage), typeof(AddNoticePage));
            Routing.RegisterRoute(nameof(NoticePage), typeof(NoticePage));
            Routing.RegisterRoute(nameof(BudgetPage), typeof(BudgetPage));
            Routing.RegisterRoute(nameof(BudgetSettingsPage), typeof(BudgetSettingsPage));


        }

    }
}
