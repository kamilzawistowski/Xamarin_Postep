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

        try
        {
            string fullFolderPath = Path.Combine("/storage/emulated/0/Documents", "Raports");

            if (!Directory.Exists(fullFolderPath))
            {
                Directory.CreateDirectory(fullFolderPath);
                Console.WriteLine("Folder created successfully at: " + fullFolderPath);
            }
            else
            {
                Console.WriteLine("Folder already exists at: " + fullFolderPath);
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine("Error creating folder: " + ex.Message);
        }

        string path = Path.Combine(FileSystem.AppDataDirectory, "Test.pdf");
        string fileName = $"Raport[{DateTime.Now.Day}-{DateTime.Now.Month}-{DateTime.Now.Year}-{DateTime.Now.Minute}-{DateTime.Now.Second}].pdf";
        string path2 = Path.Combine("/storage/emulated/0", "Documents/Raports", fileName);



        GetFilesInFolder("/storage/emulated/0/Documents/Raports");

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
                        .Text($"Raport z dnia {DateTime.Now.Day}-{DateTime.Now.Month}-{DateTime.Now.Year}")
                        .SemiBold().FontSize(36).FontColor(Colors.Blue.Medium);

                    page.Content()
                        .PaddingVertical(1, Unit.Centimetre)
                        .Column(x =>
                        {
                            x.Spacing(20);

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

    public static List<string> GetFilesInFolder(string path)
    {
        try
        {
            List<string> fileNames = new List<string>();
            DirectoryInfo dir = new DirectoryInfo(path);

            // Get all files in the directory
            FileInfo[] files = dir.GetFiles();

            foreach (FileInfo file in files)
            {
                fileNames.Add(file.Name);
            }

            return fileNames;
        }
        catch (Exception ex)
        {
            // Handle exceptions as needed
            return null;
        }

    }

}
