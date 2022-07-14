using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using ImporcheWebApi.Interfaces;
using ImporcheWebApi.Models;
using ServisSaltesa.Interfaces;
using ServisSaltesa.Models;

namespace ImporcheWebApi.Controllers
{
    public class FacturacionController : ApiController
    {
         IFacturacion factura = new Facturacion();
         ICatalogo catalogos = new Catalogos();


        // GET: Facturacion
        [System.Web.Http.Route("api/Acceso/Marcas_Lista")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Marcas()
        { 
            var marca = catalogos.Marcas_Cata();
            return Request.CreateResponse(System.Net.HttpStatusCode.OK, marca);
        }
      
        [System.Web.Http.Route("api/Acceso/Modelo_Lista")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Modelos(int marcaID)
        {
            var modelo = catalogos.Modelo_Cata(marcaID);
            return Request.CreateResponse(System.Net.HttpStatusCode.OK, modelo);
        }

        [System.Web.Http.Route("api/Acceso/Empleado_Lista")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Lista_Empleado()
        {
            var empleado = factura.Empleados_Lista();
            return Request.CreateResponse(System.Net.HttpStatusCode.OK, empleado);
        }


        [System.Web.Http.Route("api/Acceso/Comprobantes_Lista")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Lista_Comprobante()
        {
            var empleado = factura.Comprobantes_Lista();
            return Request.CreateResponse(System.Net.HttpStatusCode.OK, empleado);
        }


        [System.Web.Http.Route("api/Acceso/Comprobantes_Secuencia")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Comprobante_Secuencia(int comprobante_ID, int empresa_ID)
        {
            var comprobanteSecuencia = factura.Comprobantes_Secuencia_Consulta(comprobante_ID, empresa_ID);
            return Request.CreateResponse(System.Net.HttpStatusCode.OK, comprobanteSecuencia);
        }

    }
}