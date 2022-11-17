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
    public class CatalogosController : ApiController
    {
        ICatalogo catalogos = new Catalogos();

        // GET: Catalogos
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
    }
}