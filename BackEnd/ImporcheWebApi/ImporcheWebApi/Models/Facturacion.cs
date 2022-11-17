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


namespace ImporcheWebApi.Models
{
    public class Facturacion : IFacturacion 
    {
      

        public IEnumerable Factura_Lista( int PageIndex, int PageSize, string Cliente_Nombre , string Fecha_Desde , string Fecha_Hasta, string Orderby )
        {
            try
            {
                string Nombre = Cliente_Nombre == null ? Cliente_Nombre = "" : Cliente_Nombre;
                string FechaDesde = Fecha_Desde == null ? Fecha_Desde = "" : Fecha_Desde;
                string FechaHasta = Fecha_Hasta == null ? Fecha_Hasta = "" : Fecha_Hasta;
                string order = Orderby == null ? Orderby = "" : Orderby;

                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();
                    var lista = db.Database.SqlQuery<Facturas_Lista_Result>("Proc_Facturas_Lista @PageIndex,@PageSize, @Cliente_Nombre,@Fecha_Desde,@Fecha_Hasta, @Orderby",
                                                       new SqlParameter("@PageIndex", PageIndex),
                                                       new SqlParameter("@PageSize", PageSize),
                                                       new SqlParameter("@Cliente_Nombre", Nombre),
                                                       new SqlParameter("@Fecha_Desde", FechaDesde),
                                                       new SqlParameter("@Fecha_Hasta", FechaHasta),
                                                       new SqlParameter("@Orderby", order));
                    return lista.ToList();
                }

            }catch(EntityException ee)
            {
                throw ee;

            }catch (Exception ex)
            {
                throw ex;
            }
            finally
            {

            }
           
        }

        public IEnumerable Factura_Detalle(int detalle_id)
        {
            try
            {
                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();
                    var detalle = db.Database.SqlQuery<Factura_Detalle_Result>("Proc_Factura_Detalle @Detalle_id",
                                                                                new SqlParameter("@Detalle_id", detalle_id)).ToList();
                    return detalle;
                }

            }
            catch (EntityException ee)
            {
                throw ee;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public IEnumerable Comprobantes_Lista()
        {
            try
            {
                using (ServisSaltesaEntity db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();
                    var query = db.Comprobantes.Select(w => new { w.Comprobante_id, w.Comprobante_Nombre, w.Comprobante_Descripcion }).AsEnumerable();
                        
                    return query.ToList();
                }           
            }catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}