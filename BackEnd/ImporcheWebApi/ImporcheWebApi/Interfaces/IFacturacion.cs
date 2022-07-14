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
        
        IEnumerable Empleados_Lista( int? Empresa_ID = 1);
        IEnumerable Comprobantes_Lista();
        IEnumerable Comprobantes_Secuencia_Consulta(int Comprobante_ID, int Empresa_ID);
    }
}
