using System;
using System.Collections.Generic;
using System.Text;
using QuestPDF.Fluent;
using QuestPDF.Helpers;
using QuestPDF.Infrastructure;

namespace Xamarin_Postep.Services.PdfService.RaportGeneral
{
    class RaportGeneralDocument : IDocument
    {
        private readonly RaportGeneralHabitComponent habitComponent;
        private readonly RaportGeneralSummaryComponent summaryComponent;
        private readonly RaportGeneralQuestComponent questComponent;
        private readonly RaportHeaderComponent raportHeaderComponent;

        public RaportGeneralDocument(
            RaportHeaderComponent raportHeaderComponent,
            RaportGeneralHabitComponent habitComponent,
            RaportGeneralSummaryComponent summaryComponent,
            RaportGeneralQuestComponent questComponent
            )
        {
            this.raportHeaderComponent = raportHeaderComponent;
            this.habitComponent = habitComponent;
            this.summaryComponent = summaryComponent;
            this.questComponent = questComponent;
        }

        public DocumentMetadata GetMetadata() => DocumentMetadata.Default;
        public DocumentSettings GetSettings() => DocumentSettings.Default;

        public void Compose(IDocumentContainer container)
        {
            container
                .Page(page =>
                {
                    page.Margin(40);

                    page.Size(PageSizes.A4);
                    page.Content().Element(ComposeContent);
                    page.Footer().Element(ComposeFooter);
                });
        }

        void ComposeContent(IContainer container)
        {
            container.PaddingVertical(40).Column(column =>
            {
                column.Spacing(5);
                //column.Item().Row(row =>
                //{
                //    row.RelativeItem().Component(new AddressComponent("From", Model.SellerAddress));
                //    row.ConstantItem(50);
                //    row.RelativeItem().Component(new AddressComponent("For", Model.CustomerAddress));
                //});
                column.Item().Element(raportHeaderComponent.Compose);
                column.Item().Element(habitComponent.Compose);
                column.Item().Element(questComponent.Compose);
                column.Item().Element(summaryComponent.Compose);

            });
        }


        private void ComposeFooter(IContainer container)
        {
            container.Background(Colors.Grey.Lighten3).Column(column =>
            {
                column.Item().ShowOnce().Background(Colors.Grey.Lighten3).Row(row =>
                {
                    row.RelativeItem().Text(x =>
                    {
                        x.CurrentPageNumber();
                        x.Span(" / ");
                        x.TotalPages();
                    });
                    row.RelativeItem().AlignRight().Text("Raport Program Postep ");
                });

                column.Item().SkipOnce().Background(Colors.Grey.Lighten3).Row(row =>
                {
                    row.RelativeItem().Text(x =>
                    {
                        x.CurrentPageNumber();
                        x.Span(" / ");
                        x.TotalPages();
                    });
                    row.RelativeItem().AlignRight().Text("LECIMY ! ");
                });
            });
        }


    }
}
