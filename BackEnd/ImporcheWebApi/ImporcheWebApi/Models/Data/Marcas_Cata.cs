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

    public partial class Marcas_Cata 
    {
      
        public Marcas_Cata()
        {
           
        }

        [Key]
        [Column(Order = 1)]
        public int Marca_id { get; set; }
        
        public string Marca_Nombre { get; set; }
        public String Marca_Descripcion { get; set; }
        [NotMapped]
        public bool Registro_Estado { get; set; }
        [NotMapped]
        public string Registro_Usuario { get; set; }
        [NotMapped]
        public System.DateTime Registro_Fecha { get; set; }

        // public virtual ICollection<Facturas_Trans> Facturas_Trans { get; set; }
        //public virtual ICollection<Modelos_Cata> Modelos_Cata { get; set; }
    }
}
