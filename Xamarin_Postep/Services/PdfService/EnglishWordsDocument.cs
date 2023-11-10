using System;
using System.Collections.Generic;
using System.Text;
using QuestPDF.Infrastructure;
using QuestPDF.Drawing;
using QuestPDF.Fluent;
using QuestPDF.Helpers;

namespace Xamarin_Postep.Services.PdfService
{
    class EnglishWordsDocument : IDocument
    {
        private readonly EnglishWordsRaportComponent content;

        public EnglishWordsDocument(EnglishWordsRaportComponent content)
        {
            this.content = content;
        }

        public void Compose(IDocumentContainer container)
        {
            container
                .Page(page =>
                {
                    page.Margin(40);

                    page.Size(PageSizes.A4);

                    page.Content().Element(content.Compose);
                    page.Footer().Element(ComposeFooter);
                });
        }



        

        private void ComposeContent(IContainer container)
        {
            container.Column(column =>
            {
                column.Item().PaddingVertical(80).Text("First");
                column.Item().PageBreak();
                column.Item().PaddingVertical(80).Text("Second");
                column.Item().PageBreak();
                column.Item().PaddingVertical(80).Text("Third");
                column.Item().PageBreak();
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
                    row.RelativeItem().AlignRight().Text("Footer for header");
                });

                column.Item().SkipOnce().Background(Colors.Grey.Lighten3).Row(row =>
                {
                    row.RelativeItem().Text(x =>
                    {
                        x.CurrentPageNumber();
                        x.Span(" / ");
                        x.TotalPages();
                    });
                    row.RelativeItem().AlignRight().Text("Footer for every page except header");
                });
            });
        }

        public DocumentMetadata GetMetadata() => DocumentMetadata.Default;
        public DocumentSettings GetSettings() => DocumentSettings.Default;

    }
}
