using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ServisSaltesa.Models.Data
{
    public class Proveedores_Trans_Result
    {

        public string Proveedor_Nombre { get; set; }
        public string Proveedor_RNC { get; set; }
        public string Proveedor_Email { get; set; }
        public string Proveedor_Telefono { get; set; }
        public string Proveedor_Celular { get; set; }
        public string Proveedor_Direccion { get; set; }
        public string Registro_Usuario { get; set; }
        public Int32? Cantidad_Registros { get; set; }
        public Int32? Ultima_Linea { get; set; }
        public Int32? Linea { get; set; }

    }
}