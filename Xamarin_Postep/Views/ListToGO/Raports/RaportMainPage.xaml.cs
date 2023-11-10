using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using NativeMedia;
using Plugin.Messaging;
using QuestPDF.Infrastructure;
using SkiaSharp;
using System.Drawing;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Shapes;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.Models;
using Xamarin_Postep.Views.ListToGO.Language.English;
using System.Runtime.Serialization.Formatters.Binary;
using Xamarin.Forms.PlatformConfiguration.TizenSpecific;

namespace Xamarin_Postep.Views.ListToGO.Raports
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RaportMainPage : ContentPage
    {
        public RaportMainPage()
        {
            InitializeComponent();
        }

        private async void Button_Clicked(object sender, EventArgs e)
        {
            var fileName = PdfServiceHandler.GetPdfDocument("RaportTydzien");

            await DisplayAlert ("Utworzono plik", $"{fileName}\n Znajduje sie /storage/emulated/0/Documents/Raports", "OK");

            bool answer = await DisplayAlert("Wyślij", "Czy chcesz wysłać plik emailem?", "Yes", "No");

            if (answer == true)
            {
                string path2 = System.IO.Path.Combine("/storage/emulated/0", "Documents/Raports", fileName);

                var emailMessenger = CrossMessaging.Current.EmailMessenger;
                if (emailMessenger.CanSendEmail)
                {
                   
                    var email = new EmailMessageBuilder()
                      .To("kamil60702@gmail.com")
                      //.Cc("kamil60702@gmail.com")  // Nikt nie wie kto jeszcze dostal ta wiadomosc
                      .Subject("Raport Ogolny")
                      .Body("")
                      .WithAttachment(path2, "pdf")
                      .Build();

                     emailMessenger.SendEmail(email);
                }
            }
        }

        private async void Button_Clicked2(object sender, EventArgs e)
        {
            string dbName = "Testowaa7.db3";
            string dbPath = System.IO.Path.Combine(FileSystem.AppDataDirectory, dbName);
            if (File.Exists(dbPath))
            {
                if (File.Exists(System.IO.Path.Combine("/storage/emulated/0", "Documents", dbName)))
                {
                    File.Delete(System.IO.Path.Combine("/storage/emulated/0", "Documents", dbName));

                    File.Copy(dbPath, System.IO.Path.Combine("/storage/emulated/0", "Documents"));
                    await DisplayAlert("Utworzono:", $" Kopia bazy danych : '{dbName}'\n Znajduje sie /storage/emulated/0/Documents", "OK");
                }
            }
        }



        private async void SelectPhotoButton_Clicked(object sender, EventArgs e)
        {
            var results = await MediaGallery.PickAsync(1, MediaFileType.Image, MediaFileType.Video);
            byte[] header = null;
            if (results?.Files == null)
            {
                return;
            }
            

            foreach (var item in results.Files)
            {
                var fileName = item.NameWithoutExtension;
                var extension = item.Extension;
                var contentType = item.ContentType;

                await DisplayAlert(fileName, $"Extension:{extension},Content-Type: {contentType}", "Ok");

                string path2 = System.IO.Path.Combine("/storage/emulated/0", "Documents/Raports/Photos");

                string photopath = $"/storage/emulated/0/DCIM/Camera/{item.NameWithoutExtension}.{item.Extension}";

                //Image image = new Image(path2, fileName, extension, contentType);


                BinaryFormatter bf = new BinaryFormatter();
                MemoryStream ms = new MemoryStream();
                bf.Serialize(ms, image);

                var img = ms.ToArray();

                //if (File.Exists(photopath))
                //{
                //    image.Source = photopath;
                //}

                // byte[] byteArray = File.ReadAllBytes(photopath);

                //await MediaGallery.SaveAsync(MediaFileType.Image, by);
                //File.Copy(photopath, System.IO.Path.Combine("/storage/emulated/0", "Documents/Raports"));
            }


        }

        private async void Button_GenerateEnglishWords(object sender, EventArgs e)  //GOTO 
        {
            var fileName = PdfServiceHandler.GetPdfDocument("EnglishTest");

            await DisplayAlert("Utworzono plik", $"{fileName}\n Znajduje sie /storage/emulated/0/Documents/Raports", "OK");

            bool answer = await DisplayAlert("Wyślij", "Czy chcesz wysłać plik emailem?", "Yes", "No");

            if (answer == true)
            {
                string path2 = System.IO.Path.Combine("/storage/emulated/0", "Documents/Raports", fileName);

                var emailMessenger = CrossMessaging.Current.EmailMessenger;
                if (emailMessenger.CanSendEmail)
                {

                    var email = new EmailMessageBuilder()
                      .To("kamil60702@gmail.com")
                      //.Cc("kamil60702@gmail.com")  // Nikt nie wie kto jeszcze dostal ta wiadomosc
                      .Subject("Raport Ogolny")
                      .Body("")
                      .WithAttachment(path2, "pdf")
                      .Build();

                    emailMessenger.SendEmail(email);
                }
            }
        }
    }
}