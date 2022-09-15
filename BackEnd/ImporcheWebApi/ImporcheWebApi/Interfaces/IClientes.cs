using ServisSaltesa.Models.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServisSaltesa.Interfaces
{
    interface IClientes
    {
        IEnumerable<Cliente_Trans_Result> Clientes_Lista(int PageIndex, int PageSize, string orderby, bool orderbyDirection, string Cliente_Nombre);
        void AgregarCliente(Clientes_Trans clientes);
        Cliente_Trans_Result DetalleCliente(int cliente_id);
        IEnumerable<Cliente_Vehiculo_Result> Cliente_Vehiculo(int Cliente_id);

        void EditarCliente(Clientes_Trans cli);
        void InactivaCliente(Clientes_Trans cli);


    }
}
