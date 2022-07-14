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
    
    [System.Web.Http.Route("api/Acceso/AgregarCliente")]
    [System.Web.Http.HttpPost]
    public HttpResponseMessage GuardarCliente(Clientes_Trans clien)
        {
             cliente.AgregarCliente(clien);

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, "Se ha guardado el cliente");
        }
    
    [System.Web.Http.Route("api/Acceso/detalleCliente")]
    [System.Web.Http.HttpGet]
    public HttpResponseMessage Cliente_Detalle(int cliente_id)
        {
            var detalle = cliente.DetalleCliente(cliente_id);

            return Request.CreateResponse(System.Net.HttpStatusCode.OK, detalle);
        }


    [System.Web.Http.Route("api/Acceso/VehiculoCliente")]
    [System.Web.Http.HttpGet]
    public HttpResponseMessage Cliente_Vehiculos(int cliente_id)
    {
        var carros = cliente.Cliente_Vehiculo(cliente_id);
        return Request.CreateResponse(System.Net.HttpStatusCode.OK, carros);
    }

    }


    }

           