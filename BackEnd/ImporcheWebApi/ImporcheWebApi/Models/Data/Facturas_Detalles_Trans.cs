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

    public partial class Facturas_Detalles_Trans
    {
        [Key]
        [Column(Order = 1)]
        public int Detalle_id { get; set; }
        public int Factura_ID { get; set; }
        public int Detalle_Cantidad { get; set; }
        public string Detalle_Descripcion { get; set; }
        public decimal Importe { get; set; }
        public bool Registro_Estado { get; set; }
        public string Registro_Usuario { get; set; }
        public Nullable<System.DateTime> Registro_Fecha { get; set; }
    }
}
