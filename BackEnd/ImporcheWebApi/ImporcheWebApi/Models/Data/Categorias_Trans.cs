//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ServisSaltesa.Models.Data
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class Categorias_Trans
    {
      
        public Categorias_Trans()
        {
            this.Productos_Trans = new HashSet<Productos_Trans>();
        }

        
        [Key]
        [Column(Order = 1)]
        public int Categoria_id { get; set; }
        public string Categoria_Nombre { get; set; }
        public string Categoria_Descripcion { get; set; }
        public bool Registro_Estado { get; set; }
        public string Registro_Usuario { get; set; }
        public System.DateTime Registro_Fecha { get; set; }
    
        public virtual ICollection<Productos_Trans> Productos_Trans { get; set; }
    }
}