using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using QuestPDF.Fluent;
using QuestPDF.Helpers;
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

                        table.Cell().Element(BlockNormal).LabelCell(item.Description);
                        table.Cell().Element(BlockNormal).LabelCell(item.Category);
                        table.Cell().Element(BlockNormal).LabelCell(item.Date.ToString("dddd"));
                        table.Cell().Element(BlockPrice).LabelCell(item.Price.ToString());

                        totalWydatek += item.Price;

                    }
                    table.Cell().ColumnSpan(2).Element(BlockNon).LabelCell("");
                    table.Cell().Element(BlockNormal).LabelCell("Razem");
                    table.Cell().Element(BlockPrice).LabelCell(totalWydatek.ToString());
                    


                    table.ColumnsDefinition(column =>
                    {
                        column.ConstantColumn(140);
                        column.ConstantColumn(85);
                        column.ConstantColumn(100);
                        column.ConstantColumn(150);
                    });
                    table.Cell().ColumnSpan(4).Background(Colors.Blue.Lighten3).LabelCell("Przychody");

                    foreach (var item in Przychod)
                    {
                        table.Cell().Element(BlockNormal).LabelCell(item.Description);
                        table.Cell().Element(BlockNormal).LabelCell(item.Category);
                        table.Cell().Element(BlockNormal).LabelCell(item.Date.ToString("dddd"));
                        table.Cell().Element(BlockPrice).LabelCell(item.Price.ToString());
                        totalPrzychod += item.Price;
                    }
                    table.Cell().ColumnSpan(2).Element(BlockNon).LabelCell("");
                    table.Cell().Element(BlockNormal).LabelCell("Razem");
                    table.Cell().Element(BlockPrice).LabelCell(totalPrzychod.ToString());
                    
                    table.Cell().ColumnSpan(2).Element(BlockNormal).LabelCell("Podsumowanie ");
                    table.Cell().ColumnSpan(2).Element(BlockPrice).LabelCell($"{totalPrzychod}-{totalWydatek}= {totalPrzychod-totalWydatek}");
                });

        }
        static IContainer BlockNormal(IContainer container)
        {
            return container
                .Background(Colors.Yellow.Accent1);
                //.ShowOnce()
                //.MinWidth(50)
                //.MinHeight(50)
                //.AlignCenter()
                //.AlignMiddle();


        }
        static IContainer BlockNon(IContainer container)
        {
            return container

                .Background(Colors.Yellow.Accent2);
                //.ShowOnce()
                //.MinWidth(50)
                //.MinHeight(50)
                //.AlignCenter()
                //.AlignMiddle();
        }
        static IContainer BlockPrice(IContainer container)
        {
            return container
                .Background(Colors.Yellow.Accent3);
                //.ShowOnce()
                //.MinWidth(50)
                //.MinHeight(50)
                //.AlignCenter()
                //.AlignMiddle();

        }
    }
}

