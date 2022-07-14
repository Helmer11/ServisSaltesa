using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ServisSaltesa.Models.Data
{
    public class Cliente_Trans_Result
    {

    public int Cliente_id { get; set; }
    public string Cliente_Nombre { get; set; }
    public string Cliente_Apellido { get; set; }
    public string Cliente_Email { get; set; }
    public Int32 Marca_id { get; set; }
    public Int32 Modelo_id { get; set; }
    public string Cliente_Telefono { get; set; }
    public string  Cliente_Celular { get; set; }
    public string Cliente_RNC { get; set; }
    public string Cliente_Direccion { get; set; }
    public string Registro_Usuario { get; set; }
    public Int32 Linea { get; set; }
    public Int32 Ultima_Linea { get; set; }
    public Int32 Cantidad_Registros { get; set; }


    }
}