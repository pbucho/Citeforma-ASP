namespace 
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Livros")]
    public partial class Livro
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Livro()
        {
            AutoresLivros = new HashSet<AutoresLivro>();
            EncomendaLivros = new HashSet<EncomendaLivro>();
        }

        [Key]
        public int IDLivro { get; set; }

        [Required]
        [StringLength(1000)]
        public string Titulo { get; set; }

        [Required]
        [StringLength(20)]
        public string ISBN { get; set; }

        public int? Categoria { get; set; }

        public int? AnoLancamento { get; set; }

        [Column(TypeName = "money")]
        public decimal? Preco { get; set; }

        public int? QuantidadeStock { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AutoresLivro> AutoresLivros { get; set; }

        public virtual Categoria Categoria1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EncomendaLivro> EncomendaLivros { get; set; }
    }
}
