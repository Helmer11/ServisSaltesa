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

    public partial class Modelos_Cata
    {
     
        public Modelos_Cata()
        {
           // this.Facturas_Trans = new HashSet<Facturas_Trans>();

        }

        [Key]
        [Column(Order = 1)]
        public int Modelo_id { get; set; }
        public string Modelo_Nombre { get; set; }
       
        public string Modelo_Color { get; set; }
        
        public int Marca_ID { get; set; }
        
        public string Modelo_Descripcion { get; set; }
        
        public bool Registro_Estado { get; set; }
        
        public string Registro_Usuario { get; set; }
        
        public Nullable<System.DateTime> Registro_Fecha { get; set; }
   
        public virtual ICollection<Facturas_Trans> Facturas_Trans { get; set; }
       
        public virtual Marcas_Cata Marcas_Cata { get; set; }
    }
}
