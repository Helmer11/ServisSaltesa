using ServisSaltesa.Interfaces;
using ServisSaltesa.Models;
using ServisSaltesa.Models.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;

namespace ServisSaltesa.Controllers
{
    public class EmpleadosController : ApiController
    {
        private readonly IEmpleado empleado;


        public EmpleadosController()
        {
          empleado  = new Empleado();
        }

        [System.Web.Http.Route("api/Acceso/Empleado_Lista")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Lista_Empleado(int empresaID )
        {
            var lista = empleado.Empleados_Lista(empresaID);

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, lista);
        }


        [System.Web.Http.Route("api/Acceso/Empleado_Detalle")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Detalle_Empleado(int empresaID, int empleadoID)
        {
            var lista = empleado.Empleados_Detalle(empresaID, empleadoID);

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, lista);
        }

        [System.Web.Http.Route("api/Acceso/Empleado_Inserta")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage AgregarEmpleado(Empleados_Trans emp)
        {
            var guarda = empleado.AgregarEmpleado(emp);

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, guarda);
        }

        [System.Web.Http.Route("api/Acceso/Empleado_edita")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage EditaEmpleado(Empleados_Trans emp)
        {
            var edita = empleado.EditaEmpleado(emp);

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, edita);
        }

        [System.Web.Http.Route("api/Acceso/Empleado_Inactiva")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage InactivaEmpleado(int empresaID,int empleadoID)
        {
            var eliminar = empleado.InactivarEmpleado(empresaID, empleadoID);

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, eliminar);
        }



    }
}