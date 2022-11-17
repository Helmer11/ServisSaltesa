using ServisSaltesa.Interfaces;
using ServisSaltesa.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;

namespace ServisSaltesa.Controllers
{
    public class EmpleadoController : ApiController
    {
        IEmpleado empleado = new Empleado();

        // GET: Empleado
        [System.Web.Http.Route("api/Acceso/Empleado_Lista")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Lista_Empleado(int empresaID )
        {
            var lista = empleado.Empleados_Lista(empresaID);

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, lista);
        }
    }
}