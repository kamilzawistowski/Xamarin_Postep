using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using QuestPDF.Fluent;
using QuestPDF.Infrastructure;
using Xamarin_Postep.Models;
using Xamarin_Postep.Services.PdfService.DataSourceServices;

namespace Xamarin_Postep.Services.PdfService.RaportGeneral
{
    public class RaportGeneralQuestComponent : IComponent
    {
        public int daysOfTheRaport { get; set; }
        public RaportGeneralQuestComponent(int daysOfTheRaport)
        {
            this.daysOfTheRaport = daysOfTheRaport;
        }

        public void Compose(IContainer container)
        {
            var groupingHabitsResult = new QuestPDFSourceDataService().GetQuestData(daysOfTheRaport);

            container
                .Table(table =>
                {
                    table.ColumnsDefinition(column =>
                    {
                        column.ConstantColumn(85);
                        column.ConstantColumn(85);
                        column.ConstantColumn(85);
                        column.ConstantColumn(85);
                        column.ConstantColumn(85);
                        column.ConstantColumn(85);
                    });
                    table.Cell().ColumnSpan(6).LabelCell("Zadania");
                    foreach (var item in groupingHabitsResult)
                    {
                        table.Cell().LabelCell(item.Name);
                        table.Cell().LabelCell($"{item.CountOfPassDays}/{item.NumberOfDaysOfTheRaport}");
                    }

                });

        }
    }
}
