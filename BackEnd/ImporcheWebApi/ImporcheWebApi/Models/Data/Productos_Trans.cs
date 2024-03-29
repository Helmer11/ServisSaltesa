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

    public partial class Productos_Trans
    {
        [Key]
        [Column(Order = 1)]
        public int Producto_id { get; set; }
        public string Producto_Codigo { get; set; }
        public string Producto_Nombre { get; set; }
        public string Producto_Descripcion { get; set; }
        public decimal Producto_Costo { get; set; }
        public decimal Producto_Precio { get; set; }
        public int Producto_Cantidad { get; set; }
        public int Color_ID { get; set; }
        public int Categoria_ID { get; set; }
        public System.DateTime Fecha_Ingreso { get; set; }
        public System.DateTime Fecha_Caducidad { get; set; }
        public int Proveedor_Codigo_ID { get; set; }
        public bool Registro_Estado { get; set; }
        public string Registro_Usuario { get; set; }
        public System.DateTime Registro_Fecha { get; set; }
    
        public virtual Categorias_Trans Categorias_Trans { get; set; }
        public virtual Color_Cata Color_Cata { get; set; }

    }
}
