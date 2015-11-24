using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Spatial;

public partial class Autore
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Autore()
    {
        AutoresLivros = new HashSet<AutoresLivro>();
    }

    [Key]
    public int IDAutor { get; set; }

    [Required]
    [StringLength(1000)]
    public string Nome { get; set; }

    [Required]
    [StringLength(1000)]
    public string PaisOrigem { get; set; }

    public bool PremioNobel { get; set; }

    [StringLength(2500)]
    public string ResumoObra { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<AutoresLivro> AutoresLivros { get; set; }
}
