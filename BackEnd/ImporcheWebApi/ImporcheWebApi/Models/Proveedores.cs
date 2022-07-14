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
                        new SqlParameter("proveedor_id", proveedorID)).FirstOrDefault();


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
                    var _proveedor = new Proveedores_Trans()
                    {
                        Proveedor_Nombre = pro.Proveedor_Nombre,
                        Proveedor_Telefono = pro.Proveedor_Telefono,
                        Proveedor_Direccion = pro.Proveedor_Direccion,
                        Proveedor_Email = pro.Proveedor_Email,
                        Proveedor_Celular = pro.Proveedor_Celular,
                        Proveedor_RNC = pro.Proveedor_RNC,
                        Categoria_id = pro.Categoria_id,
                        Registro_Usuario = pro.Registro_Usuario,
                    };

                    db.Proveedor.Add(_proveedor);
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
                    var _proveedor = new Proveedores_Trans()
                    {
                        Proveedor_Nombre = pro.Proveedor_Nombre,
                        Proveedor_Telefono = pro.Proveedor_Telefono,
                        Proveedor_Direccion = pro.Proveedor_Direccion,
                        Proveedor_Email = pro.Proveedor_Email,
                        Proveedor_Celular = pro.Proveedor_Celular,
                        Proveedor_RNC = pro.Proveedor_RNC,
                        Registro_Usuario = pro.Registro_Usuario,
                    };

                    db.Proveedor.Add(_proveedor);
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