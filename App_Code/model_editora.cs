﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Autore
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Autore()
    {
        this.AutoresLivros = new HashSet<AutoresLivro>();
    }

    public int IDAutor { get; set; }
    public string Nome { get; set; }
    public string PaisOrigem { get; set; }
    public bool PremioNobel { get; set; }
    public string ResumoObra { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<AutoresLivro> AutoresLivros { get; set; }
}

public partial class AutoresLivro
{
    public int IDAutorLivro { get; set; }
    public Nullable<int> Autor { get; set; }
    public Nullable<int> Livro { get; set; }

    public virtual Autore Autore { get; set; }
    public virtual Livro Livro1 { get; set; }
}

public partial class Categoria
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Categoria()
    {
        this.Livros = new HashSet<Livro>();
    }

    public int IDCategoria { get; set; }
    public string Categoria1 { get; set; }
    public string Descricao { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Livro> Livros { get; set; }
}

public partial class Cliente
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Cliente()
    {
        this.Encomendas = new HashSet<Encomenda>();
    }

    public string NIF { get; set; }
    public string Nome { get; set; }
    public string Morada { get; set; }
    public string CodigoPostal { get; set; }
    public string Localidade { get; set; }
    public string Telefone { get; set; }
    public string Email { get; set; }
    public string Codigo { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Encomenda> Encomendas { get; set; }
}

public partial class Encomenda
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Encomenda()
    {
        this.EncomendaLivros = new HashSet<EncomendaLivro>();
    }

    public int IDEncomenda { get; set; }
    public string Data { get; set; }
    public string NIFCliente { get; set; }

    public virtual Cliente Cliente { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<EncomendaLivro> EncomendaLivros { get; set; }
}

public partial class EncomendaLivro
{
    public int IDEncomendaLivro { get; set; }
    public Nullable<int> Encomenda { get; set; }
    public Nullable<int> Livro { get; set; }
    public Nullable<int> Quantidade { get; set; }

    public virtual Encomenda Encomenda1 { get; set; }
    public virtual Livro Livro1 { get; set; }
}

public partial class Livro
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Livro()
    {
        this.AutoresLivros = new HashSet<AutoresLivro>();
        this.EncomendaLivros = new HashSet<EncomendaLivro>();
    }

    public int IDLivro { get; set; }
    public string Titulo { get; set; }
    public string ISBN { get; set; }
    public Nullable<int> Categoria { get; set; }
    public Nullable<int> AnoLancamento { get; set; }
    public Nullable<decimal> Preco { get; set; }
    public Nullable<int> QuantidadeStock { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<AutoresLivro> AutoresLivros { get; set; }
    public virtual Categoria Categoria1 { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<EncomendaLivro> EncomendaLivros { get; set; }
}

public partial class SP_Autores_Select_By_IDAutor_Result
{
    public int IDAutor { get; set; }
    public string Nome { get; set; }
    public string PaisOrigem { get; set; }
    public bool PremioNobel { get; set; }
    public string ResumoObra { get; set; }
}

public partial class SP_Autores_Select_By_Nome_Result
{
    public int IDAutor { get; set; }
    public string Nome { get; set; }
    public string PaisOrigem { get; set; }
    public bool PremioNobel { get; set; }
    public string ResumoObra { get; set; }
}

public partial class SP_Autores_Select_By_PremioNobel_Result
{
    public int IDAutor { get; set; }
    public string Nome { get; set; }
    public string PaisOrigem { get; set; }
    public bool PremioNobel { get; set; }
    public string ResumoObra { get; set; }
}

public partial class SP_Autores_Select_Result
{
    public int IDAutor { get; set; }
    public string Nome { get; set; }
    public string PaisOrigem { get; set; }
    public bool PremioNobel { get; set; }
    public string ResumoObra { get; set; }
}

public partial class SP_Categorias_Select_Result
{
    public int IDCategoria { get; set; }
    public string Categoria { get; set; }
    public string Descricao { get; set; }
}