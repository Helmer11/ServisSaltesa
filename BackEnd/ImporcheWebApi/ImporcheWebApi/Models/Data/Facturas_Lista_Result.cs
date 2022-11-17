using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ServisSaltesa.Models.Data
{
    public class Facturas_Lista_Result
    {

        public int Factura_id { get; set; }

        public string Nombre_Cliente { get; set; }

        public string Marca_Nombre { get; set; }

        public string Modelo_Nombre { get; set; }

        public int Linea { get; set; }

        public int Ultima_Linea { get; set; }

        public int Cantidad_Registros { get; set; }


    }
}