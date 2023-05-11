using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ImporcheWebApi.Interfaces
{
    interface IFacturacion
    {
        DataTable Factura_Lista(int PageIndex, int PageSize, string Cliente_Nombre, string Fecha_Desde, string Fecha_Hasta, string Orderby);

        DataTable Factura_Detalle(int detalle_id);

    }
}
