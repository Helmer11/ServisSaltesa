using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ServisSaltesa.Models.Data
{
    public class Factura_Detalle_Result
    {
        public int factura_id { get; set; }
        public string Nombre_Cliente { get; set; }
        public string Marca_Nombre { get; set; }
        public string Modelo_Nombre { get; set; }
        public string Factura_Comprobante { get; set; }
        public decimal Factura_ITBIS { get; set; }

		public string Factura_NCF { get; set; }

		public string Factura_NIF { get; set; }

		public decimal Factura_Neto { get; set; }

		public decimal Factura_Subtotal { get; set; }

		public int Detalle_Cantidad { get; set; }

		public string Detalle_Descripcion { get; set; }

        public int Factura_ID { get; set; }

        public decimal Importe { get; set; }



	}
}