namespace 
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("AutoresLivros")]
    public partial class AutoresLivro
    {
        [Key]
        public int IDAutorLivro { get; set; }

        public int? Autor { get; set; }

        public int? Livro { get; set; }

        public virtual Autore Autore { get; set; }

        public virtual Livro Livro1 { get; set; }
    }
}
