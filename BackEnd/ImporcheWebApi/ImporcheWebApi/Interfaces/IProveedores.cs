using ServisSaltesa.Models.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServisSaltesa.Interfaces
{
    interface IProveedores
    {
        DataTable Lista_Proveedores(int PageIndex, int PageSize, string orderby, bool orderbyeDirection, string Proveedor_Nombre);
        DataTable DetalleProveedor(int proveedorID);
        void AgregarProveedor(Proveedores_Trans pro);
        void EditarProveedor(Proveedores_Trans pro);
        void InactivarProveedor(Proveedores_Trans pro);
    }
}
