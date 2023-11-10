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
    class RaportGeneralSummaryComponent : IComponent
    {
        public decimal totalPrzychod { get; set; } 
        public decimal totalWydatek { get; set; }
        IDataStore<Models.Summary> dataStore;
        private List<Summary> Wydatek { get; }
        private List<Summary> Przychod { get; }
        public RaportGeneralSummaryComponent()
        {
            dataStore = DependencyService.Get<IDataStore<Models.Summary>>();
            Wydatek = dataStore.GetItemsAsync().Result.Where(x => x.Type == "Wydatek").ToList();
            Przychod = dataStore.GetItemsAsync().Result.Where(x => x.Type == "Przychod").ToList();
        }

        public void Compose(IContainer container)
        {
            container
                .Background(Color.WhiteSmoke.ToHex())
                .Table(table =>
                {
                    
                    table.ColumnsDefinition(column =>
                    {
                        column.ConstantColumn(140);
                        column.ConstantColumn(85);
                        column.ConstantColumn(100);
                        column.ConstantColumn(150);

                    });
                    table.Cell().ColumnSpan(4).LabelCell("Wydatki");
                    foreach (var item in Wydatek)
                    {

                        table.Cell().LabelCell(item.Description);
                        table.Cell().LabelCell(item.Category);
                        table.Cell().LabelCell(item.Date.ToString("dddd"));
                        table.Cell().LabelCell(item.Price.ToString());

                        totalWydatek += item.Price;

                    }
                    table.Cell().ColumnSpan(2).LabelCell("");
                    table.Cell().LabelCell("Razem");
                    table.Cell().LabelCell(totalWydatek.ToString());
                    


                    table.ColumnsDefinition(column =>
                    {
                        column.ConstantColumn(140);
                        column.ConstantColumn(85);
                        column.ConstantColumn(100);
                        column.ConstantColumn(150);
                    });
                    table.Cell().ColumnSpan(4).LabelCell("Przychody");

                    foreach (var item in Przychod)
                    {
                        table.Cell().LabelCell(item.Description);
                        table.Cell().LabelCell(item.Category);
                        table.Cell().LabelCell(item.Date.ToString("dddd"));
                        table.Cell().LabelCell(item.Price.ToString());
                        totalPrzychod += item.Price;
                    }
                    table.Cell().ColumnSpan(2).LabelCell("");
                    table.Cell().LabelCell("Razem");
                    table.Cell().LabelCell(totalPrzychod.ToString());
                    
                    table.Cell().ColumnSpan(2).LabelCell("Podsumowanie ");
                    table.Cell().ColumnSpan(2).LabelCell($"{totalPrzychod}-{totalWydatek}= {totalPrzychod-totalWydatek}");
                });

        }
    }
}

