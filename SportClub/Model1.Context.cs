﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SportClub
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SportsCludEntities : DbContext
    {
        public SportsCludEntities()
            : base("name=SportsCludEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<EventTable> EventTables { get; set; }
        public virtual DbSet<Player> Players { get; set; }
        public virtual DbSet<ContactTable> ContactTables { get; set; }
    }
}
