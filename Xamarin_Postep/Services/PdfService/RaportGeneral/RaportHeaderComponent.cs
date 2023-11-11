using System;
using System.Collections.Generic;
using System.Text;
using QuestPDF.Infrastructure;
using QuestPDF.Fluent;
using QuestPDF.Helpers;

namespace Xamarin_Postep.Services.PdfService.RaportGeneral
{
    class RaportHeaderComponent : IComponent
    {
        public void Compose(IContainer container)
        { container
           .Grid(grid =>
            {
                grid.VerticalSpacing(15);
                grid.HorizontalSpacing(15);
                grid.AlignCenter();
                grid.Columns(10); // 12 by default

                grid.Item(6).Element(Block).Height(50)
                .LabelCell("Raport podsumowujący");
                grid.Item(4).Element(Block).Height(50)
                .LabelCell("Tydzien 46 | 06-13 Listopada");
               
            });
        }

        private IContainer Block(IContainer container)
        {
            return container
                .Background(Colors.Orange.Accent1)
                .ShowOnce();

        }
    }
}
