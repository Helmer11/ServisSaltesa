using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ServisSaltesa.Models.Data
{
    public class Proveedores_Trans
    {

        public Proveedores_Trans()
        {
            
        }
        [Key]
        [Column(Order = 1)]
        public int Proveedor_id { get; set; }
        public string Proveedor_Nombre { get; set; }
        public string Proveedor_Direccion { get; set; }
        public string Proveedor_Email { get; set; }
        public string Proveedor_Telefono { get; set; }
        public string Proveedor_Celular { get; set; }
        public string Proveedor_RNC { get; set; }
        
        public Int32 Categoria_id { get; set; }
       
        [NotMapped]
        public Int32? Cantidad_Registros { get; set; }

        [NotMapped]
        public Int32? Ultima_Linea { get; set; }
        [NotMapped]
        public Int32? Linea { get; set; }
        [NotMapped]
        public bool Registro_Estado { get; set; }
        [NotMapped]
        public string Registro_Usuario { get; set; }
        [NotMapped]
        public Nullable<System.DateTime> Registro_Fecha { get; set; }

      



    }
}