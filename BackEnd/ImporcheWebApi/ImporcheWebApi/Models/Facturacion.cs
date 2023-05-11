using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ImporcheWebApi.Interfaces;
using ServisSaltesa.Interfaces;
using System.Data.Entity.Core;
using ServisSaltesa.Models.Data;
using System.Security.Policy;
using System.Data;
using ServisSaltesa.Models;
using System.Drawing.Printing;

namespace ImporcheWebApi.Models
{
    public class Facturacion : IFacturacion 
    {
        private readonly Conexion conec;

        public Facturacion()
        {
            conec = new Conexion();
        }

        public DataTable Factura_Lista( int PageIndex, int PageSize, string Cliente_Nombre , string Fecha_Desde , string Fecha_Hasta, string Orderby)
        {

            try
            {
                string Nombre = Cliente_Nombre == null ? Cliente_Nombre = "" : Cliente_Nombre;
                string FechaDesde = Fecha_Desde == null ? Fecha_Desde = "" : Fecha_Desde;
                string FechaHasta = Fecha_Hasta == null ? Fecha_Hasta = "" : Fecha_Hasta;
                string order = Orderby == null ? Orderby = "" : Orderby;
                using (var conn = conec.AbrirConexion())
                {
                    DataTable dt = new DataTable();
                    SqlCommand cmd = new SqlCommand("Proc_Facturas_Lista", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@PageIndex", PageIndex);
                    cmd.Parameters.AddWithValue("@PageSize", PageSize);
                    cmd.Parameters.AddWithValue("@Cliente_Nombre", Nombre);
                    cmd.Parameters.AddWithValue("@Fecha_Desde", Fecha_Desde);
                    cmd.Parameters.AddWithValue("@Fecha_Hasta", Fecha_Hasta);
                    cmd.Parameters.AddWithValue("@orderby", order);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    conec.CerrarConexion();
                    return dt;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
           
        }

        public DataTable Factura_Detalle(int detalle_id)
        {
            try
            {
                using (var conn = conec.AbrirConexion())
                {
                    DataTable dt = new DataTable();
                    SqlCommand cmd = new SqlCommand("Proc_Factura_Detalle", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Detalle_id", detalle_id);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dt);
                    conec.CerrarConexion();
                    return dt;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        

    }
}