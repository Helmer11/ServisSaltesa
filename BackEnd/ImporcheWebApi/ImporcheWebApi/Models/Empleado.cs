using ServisSaltesa.Interfaces;
using ServisSaltesa.Models.Data;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Linq;
using System.Web;

namespace ServisSaltesa.Models
{
    public class Empleado : IEmpleado
    {

        public IEnumerable Empleados_Lista(Int32? Empresa_ID)
        {
            try
            {
                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();
                    var query = db.Empleados.Select(x => new {
                        x.Empleado_id,
                        Empleado_Nombre_Completo = x.Empleado_Nombre + " " + x.Empleado_Apellido
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






    }
}