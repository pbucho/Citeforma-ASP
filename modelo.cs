namespace
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class modelo : DbContext
    {
        public modelo()
            : base("name=modelo")
        {
        }

        public virtual DbSet<Autore> Autores { get; set; }
        public virtual DbSet<AutoresLivro> AutoresLivros { get; set; }
        public virtual DbSet<Categoria> Categorias { get; set; }
        public virtual DbSet<Cliente> Clientes { get; set; }
        public virtual DbSet<EncomendaLivro> EncomendaLivros { get; set; }
        public virtual DbSet<Encomenda> Encomendas { get; set; }
        public virtual DbSet<Livro> Livros { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Autore>()
                .HasMany(e => e.AutoresLivros)
                .WithOptional(e => e.Autore)
                .HasForeignKey(e => e.Autor);

            modelBuilder.Entity<Categoria>()
                .HasMany(e => e.Livros)
                .WithOptional(e => e.Categoria1)
                .HasForeignKey(e => e.Categoria);

            modelBuilder.Entity<Cliente>()
                .Property(e => e.CodigoPostal)
                .IsFixedLength();

            modelBuilder.Entity<Cliente>()
                .HasMany(e => e.Encomendas)
                .WithOptional(e => e.Cliente)
                .HasForeignKey(e => e.NIFCliente);

            modelBuilder.Entity<Encomenda>()
                .Property(e => e.Data)
                .IsFixedLength();

            modelBuilder.Entity<Encomenda>()
                .HasMany(e => e.EncomendaLivros)
                .WithOptional(e => e.Encomenda1)
                .HasForeignKey(e => e.Encomenda);

            modelBuilder.Entity<Livro>()
                .Property(e => e.Preco)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Livro>()
                .HasMany(e => e.AutoresLivros)
                .WithOptional(e => e.Livro1)
                .HasForeignKey(e => e.Livro);

            modelBuilder.Entity<Livro>()
                .HasMany(e => e.EncomendaLivros)
                .WithOptional(e => e.Livro1)
                .HasForeignKey(e => e.Livro);
        }
    }
}
