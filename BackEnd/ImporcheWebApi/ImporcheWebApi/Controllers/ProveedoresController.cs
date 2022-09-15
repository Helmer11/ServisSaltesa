using ServisSaltesa.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ServisSaltesa.Models;
using System.Net.Http;
using System.Web.Http;
using ServisSaltesa.Models.Data;

namespace ServisSaltesa.Controllers
{
    public class ProveedoresController : ApiController
    {
        IProveedores proveedor = new Proveedores();

        // GET: Proveedores
        //public ActionResult Index()
        //{
        //    return View();
        //}

        [System.Web.Http.Route("api/Acceso/Proveedores_Lista")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Lista_Proveedor([FromUri]Int16 PageIndex, int PageSize, bool orderByDirection0, string Proveedor_Nombre)
        {
           var proveer =  proveedor.Lista_Proveedores(PageIndex, PageSize," ", orderByDirection0, Proveedor_Nombre);

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, proveer);
        }

        [System.Web.Http.Route("api/Acceso/Proveedor_Detalle")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Detalle_Proveedor(int proveedorID)
        {
           var detalle = proveedor.DetalleProveedor(proveedorID);

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, detalle);
        }

        [System.Web.Http.Route("api/Acceso/Proveedor_Agregar")]
        [System.Web.Http.HttpPost]
        public HttpResponseMessage anadirProveedor(Proveedores_Trans prov)
        {
            proveedor.AgregarProveedor(prov);

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, "Proveedor Guardado");
        }


        [System.Web.Http.Route("api/Acceso/Proveedor_Edita")]
        [System.Web.Http.HttpPost]
        public HttpResponseMessage EditaProveedor(Proveedores_Trans prov)
        {
            proveedor.EditarProveedor(prov);

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, "Proveedor Actualizado");
        }

    }
}