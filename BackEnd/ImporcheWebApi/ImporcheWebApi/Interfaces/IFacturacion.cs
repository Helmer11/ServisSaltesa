using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ImporcheWebApi.Interfaces
{
    interface IFacturacion
    {
        IEnumerable Factura_Lista(int PageIndex, int PageSize, string Cliente_Nombre, string Fecha_Desde, string Fecha_Hasta, string Orderby);

        IEnumerable Factura_Detalle(int detalle_id);

    }
}
