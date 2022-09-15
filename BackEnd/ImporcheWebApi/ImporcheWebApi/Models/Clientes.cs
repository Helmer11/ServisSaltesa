using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ServisSaltesa.Interfaces;
using ServisSaltesa.Models.Data;

namespace ImporcheWebApi.Models
{
    public class Clientes : IClientes
    {

        public IEnumerable<Cliente_Trans_Result> Clientes_Lista(int PageIndex, int PageSize, string orderby, bool orderbyeDirection, string Cliente_Nombre)
        {
            try
            {
                string _ClienteNombre = "";
               if(Cliente_Nombre != null)
                {
                    _ClienteNombre = Cliente_Nombre;

                } else
                {
                    _ClienteNombre = "";
                }
         
                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();

                    var lista = db.Database.SqlQuery<Cliente_Trans_Result>("Proc_Clientes_Lista_Consulta @PageIndex, @PageSize, @orderby, @orderbyeDirection, @Cliente_Nombre",
                    new SqlParameter("@PageIndex", PageIndex),
                    new SqlParameter("@PageSize", PageSize),
                    new SqlParameter("@orderby", orderby),
                    new SqlParameter("@orderbyeDirection", orderbyeDirection),
                    new SqlParameter("@Cliente_Nombre", _ClienteNombre)
                    ).ToList();

                    return lista;

                }

            } catch (EntityException ee)
            {
                throw ee;
            }

            catch(SqlException se)
            {
                throw se.InnerException;
            }
            catch (Exception ex)
            {
                throw ex.InnerException;
            }


        }


        public Cliente_Trans_Result DetalleCliente(int cliente_id)
        {

            try
            {
                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();
                    var detalle = db.Database.SqlQuery<Cliente_Trans_Result>("Proc_Cliente_detalle_Consulta @Cliente_id",
                        new SqlParameter("@Cliente_id", cliente_id)).FirstOrDefault();

                    return detalle;
                }
            }
            catch (EntityException ee)
            {
                throw ee;
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

        public void AgregarCliente(Clientes_Trans cli)
        {
            try
            {
                using(var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();                

                    var _client = new Clientes_Trans()
                    {
                        Cliente_Nombre = cli.Cliente_Nombre,
                        Cliente_Apellido = cli.Cliente_Apellido,
                        Cliente_Telefono = cli.Cliente_Telefono,
                        Cliente_Direccion = cli.Cliente_Direccion,
                        Cliente_Email = cli.Cliente_Email,
                        Cliente_Celular = cli.Cliente_Celular,
                        Cliente_RNC = cli.Cliente_RNC,
                        Registro_Usuario = cli.Registro_Usuario,
                    };

                    db.Cliente.Add(_client);
                    db.SaveChanges();

                    int _idCliente = db.Cliente.Select(p => p.Cliente_id).Max();
                    var _vehiculo = new Cliente_Vehiculo_Trans()
                    {
                        Cliente_id = _idCliente,
                        Marca_id = cli.Marca_id,
                        Modelo_id = cli.Modelo_id,
                    };

                    db.Vehiculo.Add(_vehiculo);
                    db.SaveChanges();
                }
            }
            catch (EntityException ee)
            {
                throw ee;
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

        public void EditarCliente(Clientes_Trans cli)
        {
            try
            {
                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();
                    var resultado = db.Cliente.SingleOrDefault(b => b.Cliente_id == cli.Cliente_id);

                    if(resultado != null)
                    {
                        resultado.Cliente_Nombre = cli.Cliente_Nombre;
                        resultado.Cliente_Apellido = cli.Cliente_Apellido;
                        resultado.Cliente_Telefono = cli.Cliente_Telefono;
                        resultado.Cliente_Direccion = cli.Cliente_Direccion;
                        resultado.Cliente_Email = cli.Cliente_Email;
                        resultado.Cliente_Celular = cli.Cliente_Celular;
                        resultado.Cliente_RNC = cli.Cliente_RNC;
                        resultado.Registro_Usuario = cli.Registro_Usuario;
                        db.SaveChanges();
                    }

                    var _idCliente = db.Vehiculo.SingleOrDefault(p => p.Cliente_id == cli.Cliente_id);

                    if (_idCliente != null)
                    {
                        _idCliente.Marca_id = cli.Marca_id;
                        _idCliente.Modelo_id = cli.Modelo_id;
                        db.SaveChanges();
                    }

                
                }
            }
            catch (EntityException ee)
            {
                throw new EntityException(ee.Message);
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

        public void InactivaCliente(Clientes_Trans cli)
        {
            try
            {
                using (var db = new ServisSaltesaEntity())
                {
                    db.Database.Connection.Open();
                    var resultado = db.Cliente.SingleOrDefault(b => b.Cliente_id == cli.Cliente_id);

                    if (resultado != null)
                    {
                        resultado.Cliente_Nombre = cli.Cliente_Nombre;
                        resultado.Cliente_Apellido = cli.Cliente_Apellido;
                        resultado.Cliente_Telefono = cli.Cliente_Telefono;
                        resultado.Cliente_Direccion = cli.Cliente_Direccion;
                        resultado.Cliente_Email = cli.Cliente_Email;
                        resultado.Cliente_Celular = cli.Cliente_Celular;
                        resultado.Cliente_RNC = cli.Cliente_RNC;
                        resultado.Registro_Usuario = cli.Registro_Usuario;
                        db.SaveChanges();
                    }

                    var _idCliente = db.Vehiculo.SingleOrDefault(p => p.Cliente_id == cli.Cliente_id);

                    if (_idCliente != null)
                    {
                        _idCliente.Marca_id = cli.Marca_id;
                        _idCliente.Modelo_id = cli.Modelo_id;
                        db.SaveChanges();
                    }


                }
            }
            catch (EntityException ee)
            {
                throw ee;
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

        public IEnumerable<Cliente_Vehiculo_Result> Cliente_Vehiculo(int Cliente_id)
        {
            try
            {
                using (var db = new ServisSaltesaEntity())
                {
                    var query = db.Database.SqlQuery<Cliente_Vehiculo_Result>("Proc_Cliente_Vehiculo_Trans_Consulta @cliente_id", 
                        new SqlParameter("@cliente_id", Cliente_id)).ToList();
                    return query;
                }
            }
            catch (EntityException ee)
            {
                throw ee;
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