using System;
using System.Collections.Generic;
using System.Text;
using Xamarin_Postep.DataBase;
using Xamarin_Postep.Interfaces;

namespace Xamarin_Postep.Services.PdfService.DataSourceServices
{
    public interface IDataSerivcePDF<T> where T : class,IRepozytory
    {
        IDataStore<T> dataStore { get; set; }
    }
}
