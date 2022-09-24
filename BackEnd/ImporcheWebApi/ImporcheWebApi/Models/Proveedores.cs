using ServisSaltesa.Interfaces;
using ServisSaltesa.Models.Data;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ServisSaltesa.Models
{
    public class Proveedores : IProveedores
    {

        public IEnumerable<Proveedores_Trans_Result> Lista_Proveedores(int PageIndex, int PageSize, string orderby, bool orderbyeDirection, string Proveedor_Nombre)
        {
            try
            {

                string _ProveedorNombre = "";
                if (Proveedor_Nombre != null)
                {
                    _ProveedorNombre = Proveedor_Nombre;
                }
                else
                {
                    _ProveedorNombre = "";
                }
                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();

                    var proveedor = db.Database.SqlQuery<Proveedores_Trans_Result>("Proc_Proveedores_Lista_Consulta @PageIndex, @PageSize, @orderby, @orderbyeDirection, @Proveedor_Nombre",

                                    new SqlParameter("@PageIndex", PageIndex),
                                    new SqlParameter("@PageSize", PageSize),
                                    new SqlParameter("@orderby", orderby),
                                    new SqlParameter("@orderbyeDirection", orderbyeDirection),
                                    new SqlParameter("@Proveedor_Nombre", _ProveedorNombre)
                                    ).ToList();
                    return proveedor;
                }
            
            }catch(EntityException ee)
            {
                throw new EntityException(ee.Message);
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }


        public Proveedores_Trans DetalleProveedor(int proveedorID)
        {

            try
            {
                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();
                    var detalle = db.Database.SqlQuery<Proveedores_Trans>("Proc_Proveedor_Detalle_Consulta @proveedor_id",
                        new SqlParameter("@proveedor_id", proveedorID)).FirstOrDefault();

                    return detalle;
                }
            }catch (EntityException ee)
            {
                throw ee.InnerException;

            }catch(Exception ex)
            {
                throw ex.InnerException;
            }
            
        }

        public void AgregarProveedor(Proveedores_Trans pro)
        {
            try
            {
                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();
                    db.Proveedor.Add(pro);
                    db.SaveChanges();
                }
            }
            catch (EntityException ee)
            {
                throw ee.InnerException.InnerException;
            }
            catch (Exception ex)
            {
                throw ex.InnerException.InnerException;
            }

        }

        public void EditarProveedor(Proveedores_Trans pro)
        {
            try
            {
                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();
                    //db.Proveedor.Add(pro);
                    //db.Proveedor.Attach(entidad);
                    db.Entry(pro).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
              
                }
            }
            catch (EntityException ee)
            {
                throw ee.InnerException.InnerException;
            }
            catch (Exception ex)
            {
                throw ex.InnerException.InnerException;
            }

        }

        public void InactivarProveedor(Proveedores_Trans pro)
        {
            try
            {
                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();

                    db.Entry(pro.Registro_Estado).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();

                }
            }
            catch (EntityException ee)
            {
                throw ee.InnerException.InnerException;
            }
            catch (Exception ex)
            {
                throw ex.InnerException.InnerException;
            }

        }





    }
}