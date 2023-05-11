using ServisSaltesa.Models.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServisSaltesa.Interfaces
{
    interface IClientes
    {
        DataTable Clientes_Lista(int PageIndex, int PageSize, string orderby, bool orderbyDirection, string Cliente_Nombre);
        void AgregarCliente(Clientes_Trans clientes);
        DataTable DetalleCliente(int cliente_id);
        DataTable Cliente_Vehiculo(int Cliente_id);

        void EditarCliente(Clientes_Trans cli);
        void InactivaCliente(Clientes_Trans cli);


    }
}
