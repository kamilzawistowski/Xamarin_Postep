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

// code in your main method
public static class PdfServiceHandler
    {
        public static IEnumerable<byte[]> GetPdfDocument()
        {
 


       return Document.Create(container =>
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
                           x.Span("Page ");
                           x.CurrentPageNumber();
                       });
               });
           }).GenerateImages();


        //.GeneratePdf("Xamarin_Postep\\Resources\\hello.pdf");   Path.Combine(FileSystem.AppDataDirectory, "Test.pdf")
    }

}
