using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ServisSaltesa.Models.Data
{
    public class Cliente_Detalle_Result
    {
        public int Cliente_id { get; set; }
        public string Cliente_Nombre { get; set; }
        public string Cliente_Apellido { get; set; }
        public string Cliente_Diireccion { get; set; }
        public string Cliente_Telefono { get; set; }
        public string Cliente_Celular { get; set; }
        public string Cliente_RNC { get; set; }
        public string Cliente_Email { get; set; }
        public Int32 Marca_id { get; set; }
        public string Marca_Nombre { get; set; }
        public Int32 Modelo_id { get; set; }
        public string Modelo_Nombre { get; set; }

    }
}