using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking;
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
        public DbSet<Quest> Quest { get; set; }
        public DbSet<Summary> Summary { get; set; }
        public DbSet<Inscription> Inscription { get; set; }
        public DbSet<Notice> Notice { get; set; }
        public DbSet<Habit> Habit { get; set; }
        
        public DbSet<EnglishWord> EnglishWord { get; set; }
        public DbSet<EnglishCategory> EnglishCategory { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            string dbPath = Path.Combine(FileSystem.AppDataDirectory, "Testowa8.db3");

            optionsBuilder
                .UseSqlite($"Filename={dbPath}");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Quest>()
                .HasKey(x => x.ID);
            modelBuilder.Entity<Habit>()
            .Ignore(x => x.Image);
        }
    }
}
