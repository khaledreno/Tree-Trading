﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Tree_Trading
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Enzxtities : DbContext
    {
        public Enzxtities()
            : base("name=Enzxtities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<DEAL> DEALS { get; set; }
        public virtual DbSet<PORTFOLIO_LOG> PORTFOLIO_LOG { get; set; }
        public virtual DbSet<PORTFOLIO> PORTFOLIOS { get; set; }
        public virtual DbSet<USER> USERS { get; set; }
    }
}