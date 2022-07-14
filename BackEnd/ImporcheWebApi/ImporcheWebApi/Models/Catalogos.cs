using ServisSaltesa.Interfaces;
using ServisSaltesa.Models.Data;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ServisSaltesa.Models
{
    public class Catalogos : ICatalogo
    {
        public IEnumerable Marcas_Cata()
        {
            try
            {
                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();
                    var query = db.Marcas.Select(x => new { x.Marca_id, x.Marca_Nombre });
                    //var query = db.Database.SqlQuery<Marcas_Cata>("Proc_Marcas_Lista")
                    //    .Select(x => new
                    //    {
                    //        Marca_id = x.Marca_id,
                    //        Marca_Nombre = x.Marca_Nombre
                    //    });

                    return query.ToList();
                }

            }
            catch (EntityException ee)
            {
                throw ee.InnerException;

            }
            catch(SqlException se)
            {
                throw se.InnerException;
            }
            catch (Exception ex)
            {
                throw ex.InnerException;
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
                throw ee.InnerException;
            }
            catch (SqlException se)
            {
                throw se.InnerException;
            }
            catch (Exception ex)
            {
                throw ex.InnerException;
            }

        }
    }
}