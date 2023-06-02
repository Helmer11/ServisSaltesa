using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServisSaltesa.Interfaces
{
    interface ICatalogo
    {
        DataTable Marcas_Cata();
        DataTable Modelo_Cata(int marca_id);
    }
}
