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
      

        public IEnumerable Marcas_Cata()
        {
            try
            {
                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();
                     var query =  db.Marcas.Select(x => new { x.Marca_id, x.Marca_Nombre });
                    //var query = db.Database.SqlQuery<Marcas_Cata>("Proc_Marcas_Lista")
                    //    .Select(x => new
                    //    {
                    //        Marca_id = x.Marca_id,
                    //        Marca_Nombre = x.Marca_Nombre
                    //    });

                    return query.ToList();
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

        public IEnumerable Modelo_Cata(int marca_id)
        {
            try
            {
                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();
                    var query = db.Modelos.Where(z => z.Marca_ID == marca_id).Select(t => new { t.Modelo_id, t.Modelo_Nombre });

                    return query.ToList();
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

        public IEnumerable Empleados_Lista( Int32? Empresa_ID )
        {
            try
            {
                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();
                    var query = db.Empleados.Select(x => new {
                        x.Empleado_id,
                        Empleado_Nombre_Completo = x.Empleado_Nombre + " "+ x.Empleado_Apellido
                    }).AsEnumerable();
                    return query.ToList();
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


        public IEnumerable Comprobantes_Secuencia_Consulta(int ComprobanteID, int EmpresaID)
        {
            try
            {
                using (ServisSaltesaEntity db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();

                    //var secuencia = db.Database.SqlQuery<Tipo_Comprobantes_Trans>("Proc_Comprobantes_Secuencia_Consulta @Comprobante_id, @Empresa_id",
                    //    new SqlParameter("@Comprobante_id", ComprobanteID),
                    //    new SqlParameter("@Empresa_id", EmpresaID)).ToList();


                    var secuencia = db.Tipo_Comprobantes.Where(z => z.Comprobante_ID == ComprobanteID & z.Empresa_ID == EmpresaID)
                        .Select(f => new
                        {
                            f.Tipo_Comprobante_Serie,
                            f.Tipo_Comprobante_Numero,
                            f.Tipo_Comprobante_Secuencia,
                            Comprobante_Secuencia = f.Tipo_Comprobante_Serie.Trim() + "" + f.Tipo_Comprobante_Numero + "" + f.Tipo_Comprobante_Secuencia

                        }).ToList();


                    return secuencia;
                }
            }
            catch (EntityException ee)
            {
                throw ee;
            
            }catch( Exception ex)
            {
                throw ex;
            }
        }

    }
}