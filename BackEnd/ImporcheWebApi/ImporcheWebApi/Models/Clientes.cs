using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using ServisSaltesa.Interfaces;
using ServisSaltesa.Models.Data;
using ServisSaltesa.Models;
using System.Data;

namespace ImporcheWebApi.Models
{
    public class Clientes : IClientes
    {
        private readonly Conexion conec;

        public Clientes()
        {
            conec = new Conexion();
        }


        public DataTable Clientes_Lista(int PageIndex, int PageSize, string orderby, bool orderbyeDirection, string Cliente_Nombre)
        {
             try
                {
                string _ClienteNombre = Cliente_Nombre != null ? Cliente_Nombre : Cliente_Nombre = "";
                using (var conn = conec.AbrirConexion())
                    {
                        DataTable dt = new DataTable();
                        SqlCommand cmd = new SqlCommand("Proc_Clientes_Lista_Consulta", conn);
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@PageIndex", PageIndex);
                        cmd.Parameters.AddWithValue("@PageSize", PageSize);
                        cmd.Parameters.AddWithValue("@orderby", orderby);
                        cmd.Parameters.AddWithValue("@orderbyeDirection", orderbyeDirection);
                        cmd.Parameters.AddWithValue("@Cliente_Nombre", _ClienteNombre);
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

        public DataTable DetalleCliente(int cliente_id)
        {

            try
            {
                using (var conn = conec.AbrirConexion())
                {
                    SqlCommand cmd = new SqlCommand("Proc_Cliente_detalle_Consulta", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@cliente_id", cliente_id);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    conec.CerrarConexion();
                    return dt;
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
                using (var conn = conec.AbrirConexion())
                {
                    SqlCommand cmd = new SqlCommand("Proc_Cliente_Inserta", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Cliente_Nombre", cli.Cliente_Nombre);
                    cmd.Parameters.AddWithValue("@Cliente_Apellido", cli.Cliente_Apellido);
                    cmd.Parameters.AddWithValue("@Cliente_Email", cli.Cliente_Email);
                    cmd.Parameters.AddWithValue("@Marca_id", cli.Marca_id);
                    cmd.Parameters.AddWithValue("@Modelo_id", cli.Modelo_id);
                    cmd.Parameters.AddWithValue("@Cliente_Telefono", cli.Cliente_Telefono);
                    cmd.Parameters.AddWithValue("@Cliente_Celular", cli.Cliente_Celular);
                    cmd.Parameters.AddWithValue("@Cliente_RNC", cli.Cliente_RNC);
                    cmd.Parameters.AddWithValue("@Cliente_Direccion", cli.Cliente_Direccion);
                    cmd.ExecuteNonQuery();
                    conec.CerrarConexion();
                }
            }

            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }

        public void EditarCliente(Clientes_Trans cli)
        {
            try
            {
                using (var conn = conec.AbrirConexion())
                {

                    SqlCommand cmd = new SqlCommand("Proc_Cliente_edita", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Cliente_id", cli.Cliente_id);
                    cmd.Parameters.AddWithValue("@Cliente_Nombre", cli.Cliente_Nombre);
                    cmd.Parameters.AddWithValue("@Cliente_Apellido", cli.Cliente_Apellido);
                    cmd.Parameters.AddWithValue("@Cliente_Email", cli.Cliente_Email);
                    cmd.Parameters.AddWithValue("@Marca_id", cli.Marca_id);
                    cmd.Parameters.AddWithValue("@Modelo_id", cli.Modelo_id);
                    cmd.Parameters.AddWithValue("@Cliente_Telefono", cli.Cliente_Telefono);
                    cmd.Parameters.AddWithValue("@Cliente_Celular", cli.Cliente_Celular);
                    cmd.Parameters.AddWithValue("@Cliente_RNC", cli.Cliente_RNC);
                    cmd.Parameters.AddWithValue("@Cliente_Direccion", cli.Cliente_Direccion);
                    cmd.ExecuteNonQuery();
                    conec.CerrarConexion();

                }
            }catch (SqlException se)
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
                using (var conn = conec.AbrirConexion())
                {
                    SqlCommand cmd = new SqlCommand("Proc_Cliente_Inactivar", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Cliente_id", cli.Cliente_id);
                    cmd.ExecuteNonQuery();
                    conec.CerrarConexion();
                }
            }

            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }

        public DataTable Cliente_Vehiculo(int Cliente_id)
        {
            try
            {
                using (var conn = conec.AbrirConexion())
                {
                    DataTable dt = new DataTable();
                    SqlCommand cmd = new SqlCommand("Proc_Cliente_Vehiculo_Trans_Consulta", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Cliente_id", Cliente_id);
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