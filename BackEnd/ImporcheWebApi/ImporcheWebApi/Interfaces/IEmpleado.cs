using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServisSaltesa.Interfaces
{
    interface IEmpleado
    {
        IEnumerable Empleados_Lista(Int32? Empresa_ID);
    }
}
