using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServisSaltesa.Interfaces
{
    interface ICatalogo
    {
        IEnumerable Marcas_Cata();
        IEnumerable Modelo_Cata(int marca_id);
    }
}
