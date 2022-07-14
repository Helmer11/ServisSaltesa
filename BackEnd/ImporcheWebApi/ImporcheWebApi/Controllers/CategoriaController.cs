using ServisSaltesa.Interfaces;
using ServisSaltesa.Models.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web.Http;
using System.Web;
using System.Web.Mvc;


namespace ServisSaltesa.Controllers
{
    public class CategoriaController : ApiController
    {


        ICategoria categ = new Categoria();
        // GET: Categoria
        //public ActionResult Index()
        //{
        //    return View();
        //}

        [System.Web.Http.Route("api/Acceso/Lista_Categoria")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Categoria_Lista()
        {
            var cate = categ.Categoria_Lista();

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, cate);
        }
    }
}