namespace 
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Cliente
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Cliente()
        {
            Encomendas = new HashSet<Encomenda>();
        }

        [Key]
        [StringLength(9)]
        public string NIF { get; set; }

        [Required]
        [StringLength(1000)]
        public string Nome { get; set; }

        [Required]
        [StringLength(1000)]
        public string Morada { get; set; }

        [Required]
        [StringLength(8)]
        public string CodigoPostal { get; set; }

        [Required]
        [StringLength(1000)]
        public string Localidade { get; set; }

        [Required]
        [StringLength(16)]
        public string Telefone { get; set; }

        [Required]
        [StringLength(250)]
        public string Email { get; set; }

        [Required]
        [StringLength(50)]
        public string Codigo { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Encomenda> Encomendas { get; set; }
    }
}
