using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServisSaltesa.Interfaces
{
    interface IComprobantes
    {

        IEnumerable Comprobantes_Lista();
        IEnumerable Comprobantes_Secuencia_Consulta(int ComprobanteID, int EmpresaID);
    }
}
