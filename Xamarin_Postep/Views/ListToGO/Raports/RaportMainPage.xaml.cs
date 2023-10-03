using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Plugin.Messaging;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin_Postep.Views.ListToGO.Language.English;

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
            var fileName = PdfServiceHandler.GetPdfDocument();

            await DisplayAlert ("Utworzono plik", $"{fileName}\n Znajduje sie /storage/emulated/0/Documents", "OK");

            bool answer = await DisplayAlert("Wyślij", "Czy chcesz wysłać plik emailem?", "Yes", "No");

            if (answer == true)
            {
                string path2 = Path.Combine("/storage/emulated/0", "Documents", fileName);

                var emailMessenger = CrossMessaging.Current.EmailMessenger;
                if (emailMessenger.CanSendEmail)
                {
                   
                    var email = new EmailMessageBuilder()
                      .To("kamil60702@gmail.com")
                      //.Cc("kamil60702@gmail.com")  // Nikt nie wie kto jeszcze dostal ta wiadomosc
                      .Subject("Raport Ogolny")
                      .Body("<h1>Well hello there from</h1> <a>Xam.Messaging.Plugin</a> <h2>Well hello there from</h2>")
                      .WithAttachment(path2, "pdf")
                      .Build();

                     emailMessenger.SendEmail(email);
                }
            }
            
        }

       
    }
}