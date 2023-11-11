using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.Interfaces;

namespace Xamarin_Postep.Services.PdfService.DataSourceServices
{
    public class HabitPDFSourceDataService<TType> : IDataSerivcePDF<TType>
        where TType : class, IRepozytory
    {
        public HabitPDFSourceDataService()
        {
            //dataStore = DependencyService.Get<IDataStore<DataBase.TType>>();

        }

        IDataStore<TType> IDataSerivcePDF<TType>.dataStore { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
    }
}
