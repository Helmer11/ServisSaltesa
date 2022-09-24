using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using ServisSaltesa.Interfaces;
using ImporcheWebApi.Models;
using ServisSaltesa.Models.Data;

namespace ImporcheWebApi.Controllers
{
    public class ClientesController : ApiController
    {
        IClientes cliente = new Clientes();

        [System.Web.Http.Route("api/Acceso/Cliente_Lista")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Lista_Clientes([FromUri]Int16 PageIndex, int PageSize, bool orderByDirection0, string Cliente_Nombre)
        {
            var client = cliente.Clientes_Lista(PageIndex, PageSize, " ", orderByDirection0, Cliente_Nombre);

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, client);
        }

        [System.Web.Http.Route("api/Acceso/detalleCliente")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Cliente_Detalle(int cliente_id)
        {
           var client =  cliente.DetalleCliente(cliente_id);

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, client);
        }

         [System.Web.Http.Route("api/Acceso/AgregarCliente")]
        [System.Web.Http.HttpPost]
        public HttpResponseMessage GuardarCliente(Clientes_Trans clien)
        {
                if (ModelState.IsValid)
                {
                 cliente.AgregarCliente(clien);
                }

                return Request.CreateResponse(System.Net.HttpStatusCode.OK, "Se ha guardado el cliente");
        }
    
        [System.Web.Http.Route("api/Acceso/EditaCliente")]
        [System.Web.Http.HttpPost]
        public HttpResponseMessage Cliente_Edita(Clientes_Trans cliente_id)
        {
                if (ModelState.IsValid)
                {
                    cliente.EditarCliente(cliente_id);
                }
                return Request.CreateResponse(System.Net.HttpStatusCode.OK, "Datos del Cliente Actualizado ");
        }


        [System.Web.Http.Route("api/Acceso/InactivaCliente")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Cliente_Inactiva(Clientes_Trans cliente_id)
        {
                if (ModelState.IsValid)
                {
                    cliente.InactivaCliente(cliente_id);
                }
       
            return Request.CreateResponse(System.Net.HttpStatusCode.OK, "Cliente Eliminado");
        }








        //---------------------------------------------- controladores para datos del vehiculo---------------------------------
        [System.Web.Http.Route("api/Acceso/VehiculoCliente")]
        [System.Web.Http.HttpGet]
        public HttpResponseMessage Cliente_vehiculo(int cliente_id)
        {
            var vehiculo = cliente.Cliente_Vehiculo(cliente_id);
            return Request.CreateResponse(System.Net.HttpStatusCode.OK, vehiculo);
        }
    }


    }

           