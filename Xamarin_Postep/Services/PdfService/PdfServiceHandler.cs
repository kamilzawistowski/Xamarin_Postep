using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Text;
using ProgramPostep.Services.EmailNotifyService;
using ProgramPostep.Services.EmailNotifyService.T.PL;
using QuestPDF.Fluent;
using QuestPDF.Helpers;
using QuestPDF.Infrastructure;
using QuestPDF.Previewer;
using Xamarin.Essentials;
using Xamarin.Forms.PlatformConfiguration;
using Xamarin.Forms.PlatformConfiguration.AndroidSpecific.AppCompat;
using Xamarin_Postep;

public static class PdfServiceHandler
    {
        public static string GetPdfDocument()
        {
        string path = Path.Combine(FileSystem.AppDataDirectory, "Test.pdf");
        string fileName = $"Raport[{DateTime.Now.Day}-{DateTime.Now.Month}-{DateTime.Now.Year}-{DateTime.Now.Minute}-{DateTime.Now.Second}].pdf";
        string path2 = Path.Combine("/storage/emulated/0", "Documents", fileName);

        //string[] files = Directory.GetFiles("/storage/emulated/0/Documents/Raporty");

        Document.Create(container =>
            {
                container.Page(page =>
                {

                    page.Size(PageSizes.A4);
                    page.Margin(2, Unit.Centimetre);
                    page.PageColor(Colors.White);
                    page.DefaultTextStyle(x => x.FontSize(20));

                    page.Header()
                        .Text("Hello PDF!")
                        .SemiBold().FontSize(36).FontColor(Colors.Blue.Medium);

                    page.Content()
                        .PaddingVertical(1, Unit.Centimetre)
                        .Column(x =>
                        {
                            x.Spacing(20);

                            x.Item().Text(Placeholders.LoremIpsum());
                            x.Item().Image(Placeholders.Image(200, 100));
                        });

                    page.Footer()
                        .AlignCenter()
                        .Text(x =>
                        {
                            x.Span("Page");
                            x.CurrentPageNumber();
                        });
                });
            }).GeneratePdf(path2);

        return fileName;

        //.GeneratePdf("Xamarin_Postep\\Resources\\hello.pdf");   Path.Combine(FileSystem.AppDataDirectory, "Test.pdf")
    }

}
