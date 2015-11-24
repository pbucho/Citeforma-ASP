namespace 
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Encomenda
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Encomenda()
        {
            EncomendaLivros = new HashSet<EncomendaLivro>();
        }

        [Key]
        public int IDEncomenda { get; set; }

        [StringLength(10)]
        public string Data { get; set; }

        [StringLength(9)]
        public string NIFCliente { get; set; }

        public virtual Cliente Cliente { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EncomendaLivro> EncomendaLivros { get; set; }
    }
}
