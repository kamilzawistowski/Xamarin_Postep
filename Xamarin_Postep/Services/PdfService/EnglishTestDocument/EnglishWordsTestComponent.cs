using System.Collections.Generic;
using System.Linq;
using QuestPDF.Fluent;
using QuestPDF.Helpers;
using QuestPDF.Infrastructure;
using Xamarin.Forms;
using Xamarin_Postep.Interfaces;
using Xamarin_Postep.Models;
using Xamarin_Postep.Services.PdfService;

public class EnglishWordsTestComponent : IComponent
{
     
    private string Title { get; }
    private List<EnglishWord> Words { get; }

    IDataStore<EnglishWord> dataStore;
    public EnglishWordsTestComponent(string title)
    {
        dataStore = DependencyService.Get<IDataStore<EnglishWord>>();
        Title = title;
        Words = dataStore.GetItemsAsync().Result.ToList();

    }

    public void Compose(IContainer container)
    {
        container
            .Table(table =>
            {
                table.ColumnsDefinition(columns =>
                {
                    columns.ConstantColumn(85);
                    columns.ConstantColumn(85);
                    columns.ConstantColumn(85);
                    columns.ConstantColumn(85);
                    columns.ConstantColumn(85);
                    columns.ConstantColumn(85);
                   
                });
                foreach (var item in Words)
                {
                    table.Cell().LabelCell(item.WordPolish);
                    table.Cell().LabelCell("");
                }
            });
    }
    public IContainer Block(IContainer container)
    {
        return container
            .Background("White")
            .Border(1)
            .ShowOnce()
            //.MinWidth(50)
            //.MinHeight(50)
            .AlignCenter()
            .AlignMiddle();
    }
}