using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServisSaltesa.Interfaces
{
    internal interface ICotizacion
    {
        DataTable getListaCotizacion();

        DataTable getDetalleCotizacion();

        string setAgregarCotizacion();

        string setEditaCotizacion();

        string setInactivarCotizacion();


    }
}
