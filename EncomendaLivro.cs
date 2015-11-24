namespace 
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EncomendaLivros")]
    public partial class EncomendaLivro
    {
        [Key]
        public int IDEncomendaLivro { get; set; }

        public int? Encomenda { get; set; }

        public int? Livro { get; set; }

        public int? Quantidade { get; set; }

        public virtual Encomenda Encomenda1 { get; set; }

        public virtual Livro Livro1 { get; set; }
    }
}
