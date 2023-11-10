using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using QuestPDF.Fluent;
using QuestPDF.Infrastructure;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;

namespace Xamarin_Postep.Services.PdfService.RaportGeneral
{
    class RaportGeneralHabitComponent : IComponent
    {
        IDataStore<Models.Habit> dataStore;
        private List<IGrouping<string,Habit>> Habits { get; }
        public RaportGeneralHabitComponent()
        {
            dataStore = DependencyService.Get<IDataStore<Models.Habit>>();
            Habits = dataStore.GetItemsAsync().Result.GroupBy(x => x.Name).ToList();
        }

        public void Compose(IContainer container)
        {
            container
                .Table(table =>
                {
                    table.ColumnsDefinition(column =>
                    {
                        column.ConstantColumn(85);
                        column.ConstantColumn(85);
                        column.ConstantColumn(85);
                    });
                    foreach (var item in Habits)
                    {
                        foreach (var item2 in item)
                        {
                            table.Cell().LabelCell(item.Category);
                            table.Cell().LabelCell(item.Date.ToString());
                            table.Cell().LabelCell(item.Date.ToString());
                        }
                    }

                });
                
        }
    }
}
