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
    public class Comprobantes : IComprobantes
    {
        public IEnumerable Comprobantes_Lista()
        {
            try
            {
                using (ServisSaltesaEntity db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();
                    var cata = db.Database.SqlQuery<Comprobante_Cata_Result>("Proc_Comprobantes_Cata_Lista");
                    
                    return cata.ToList();
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

        public IEnumerable Comprobantes_Secuencia_Consulta(int EmpresaID)
        {
            try
            {
                using (ServisSaltesaEntity db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();

                    var secuencia = db.Database.SqlQuery<Comprobantes_Secuencia_Result>("Proc_Comprobantes_x_Empresa_Consulta @Empresa_id",
                        new SqlParameter("@Empresa_id", EmpresaID)).ToList();

                    //var secuencia = db.Tipo_Comprobantes.Where(z => z.Empresa_ID == EmpresaID)
                    //    .Select(f => new
                    //    {
                    //        f.Tipo_Comprobante_id,
                    //        f.Tipo_Comprobante_Serie,
                    //        f.Comprobante_Nombre,
                    //        f.Tipo_Comprobante_Secuencia,
                    //        Comprobante_Secuencia = f.Tipo_Comprobante_Serie.Trim() + "" + f.Tipo_Comprobante_Numero + "" + f.Tipo_Comprobante_Secuencia

                //}).ToList();

                    return secuencia;
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
    }
}