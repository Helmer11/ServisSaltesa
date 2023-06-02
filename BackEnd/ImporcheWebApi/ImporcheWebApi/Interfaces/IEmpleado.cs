using ServisSaltesa.Models.Data;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServisSaltesa.Interfaces
{
    interface IEmpleado
    {
        DataTable Empleados_Lista(Int32? Empresa_ID);
        DataTable Empleados_Detalle(Int32 Empresa_ID, int empleado_ID);

        int AgregarEmpleado(Empleados_Trans emp);
        int EditaEmpleado(Empleados_Trans empl);
        int InactivarEmpleado(Int32 Empresa_ID, int empleado_ID);
    }
}
