using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Text;
using ProgramPostep.Services.EmailNotifyService;
using ProgramPostep.Services.EmailNotifyService.T.PL;
using QuestPDF.Fluent;
using QuestPDF.Helpers;
using QuestPDF.Infrastructure;
using QuestPDF.Previewer;
using SkiaSharp;
using Xamarin.Essentials;
using Xamarin.Forms.PlatformConfiguration;
using Xamarin.Forms.PlatformConfiguration.AndroidSpecific.AppCompat;
using Xamarin_Postep;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.Models;
using Xamarin_Postep.Services.PdfService;
using Xamarin_Postep.Services.PdfService.DataSourceServices;
using Xamarin_Postep.Services.PdfService.RaportGeneral;

public static class PdfServiceHandler
{
    

    public static string GetPdfDocument(string DocumentType)
    {

        if (DocumentType == "EnglishTest")
        {
            string fileName = $"Test_Angielski_[{DateTime.Now.Day}-{DateTime.Now.Month}-{DateTime.Now.Year}-{DateTime.Now.Minute}-{DateTime.Now.Second}].pdf";

            var filePath = GetFilePath(fileName);

            var document = new EnglishWordsDocument(new EnglishWordsTestComponent("Test Angielski"));

            if (filePath != null)
                document.GeneratePdf(filePath);

            return fileName;
        }
        else if(DocumentType == "RaportTydzien")
        {

            string fileName = $"Raport[{DateTime.Now.Day}-{DateTime.Now.Month}-{DateTime.Now.Year}-{DateTime.Now.Minute}-{DateTime.Now.Second}].pdf";

            var filePath = GetFilePath(fileName);

            var document = new RaportGeneralDocument
                (
                    new RaportHeaderComponent(),
                    new RaportGeneralHabitComponent(7),
                    new RaportGeneralSummaryComponent(),
                    new RaportGeneralQuestComponent(7)
                );

            if (filePath != null)
                document.GeneratePdf(filePath);

            return fileName;
        }
        return "";
    }


    private static string GetFilePath(string nameFile)
    {
        string fullFolderPath = "";
        try
        {
            fullFolderPath = Path.Combine("/storage/emulated/0/Documents", "Raports");

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
            return null;
        }

        string path = Path.Combine(FileSystem.AppDataDirectory, "Test.pdf");
       
        string filePath = Path.Combine("/storage/emulated/0", "Documents/Raports", nameFile);

        return filePath;
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
