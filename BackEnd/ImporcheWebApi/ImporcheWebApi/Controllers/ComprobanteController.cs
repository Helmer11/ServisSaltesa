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
    public class ComprobanteController : ApiController
    {
        IComprobantes comprobante = new Comprobantes();

        [System.Web.Http.Route("api/Acceso/Comprobantes_Lista")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Comprobantes_Cata()
        {
            var lista = comprobante.Comprobantes_Lista();

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, lista);
        }

        [System.Web.Http.Route("api/Acceso/Comprobantes_Secuencia")]
        // GET: Comprobante
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Comprobantes_Secuencia(int comprobante_ID, int empresa_ID)
        {
            var lista = comprobante.Comprobantes_Secuencia_Consulta(comprobante_ID, empresa_ID);

            return Request.CreateResponse(System.Net.HttpStatusCode.OK,lista);
        }
    }
}