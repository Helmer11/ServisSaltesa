using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServisSaltesa.Interfaces
{
    interface IComprobantes
    {

        DataTable Comprobantes_Lista();
        DataTable Comprobantes_Secuencia_Consulta(int EmpresaID);
    }
}
