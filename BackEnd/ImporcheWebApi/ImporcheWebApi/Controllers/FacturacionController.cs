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
        private readonly IFacturacion factura;

        public FacturacionController()
        {
            factura = new Facturacion();
        }

        [System.Web.Http.Route("api/Acceso/factura_Lista")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Lista_Factura(int PageIndex, int PageSize, string Cliente_Nombre, string Fecha_Desde, string Fecha_Hasta, string Orderby)
        {
            var empleado = factura.Factura_Lista( PageIndex,PageSize, Cliente_Nombre, Fecha_Desde, Fecha_Hasta, Orderby);
            return Request.CreateResponse(System.Net.HttpStatusCode.OK, empleado);
        }

        [System.Web.Http.Route("api/Acceso/detalle_factura")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Factura_detalle(int detalleID)
        {
            var empleado = factura.Factura_Detalle(detalleID);
            return Request.CreateResponse(System.Net.HttpStatusCode.OK, empleado);
        }


        //[System.Web.Http.Route("api/Acceso/Comprobantes_Secuencia")]
        //[System.Web.Http.HttpGet]
        //public HttpResponseMessage Comprobante_Secuencia(int comprobante_ID, int empresa_ID)
        //{
        //    var comprobanteSecuencia = factura.Comprobantes_Secuencia_Consulta(comprobante_ID, empresa_ID);
        //    return Request.CreateResponse(System.Net.HttpStatusCode.OK, comprobanteSecuencia);
        //}

    }
}