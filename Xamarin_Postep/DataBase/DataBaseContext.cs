using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Microsoft.EntityFrameworkCore;
using Xamarin.Essentials;
using Xamarin_Postep.Models;
using Xamarin_Postep.Services;

namespace Xamarin_Postep.DataBase
{
    public class DataBaseContext : DbContext
    {
        public DataBaseContext()
        {
            SQLitePCL.Batteries_V2.Init();

            this.Database.EnsureCreated();
        }
        public DbSet<EnglishWord> EnglishWords { get; set; }
        public DbSet<LanguageCategory> LanguageCategories { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            string dbPath = Path.Combine(FileSystem.AppDataDirectory, "Language.db3");

            optionsBuilder
                .UseSqlite($"Filename={dbPath}");
        }
    }
}
