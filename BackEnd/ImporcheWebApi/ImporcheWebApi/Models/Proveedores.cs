using ServisSaltesa.Interfaces;
using ServisSaltesa.Models.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Core;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;

namespace ServisSaltesa.Models
{
    public class Proveedores : IProveedores
    {
        private readonly Conexion conec;

        public Proveedores()
        {
            conec = new Conexion();
        }

        public DataTable Lista_Proveedores(int PageIndex, int PageSize, string orderby, bool orderbyeDirection, string Proveedor_Nombre)
        {
            try
            {
                string _ProveedorNombre = "";
                using (var conn = conec.AbrirConexion())
                {
                    DataTable dt = new DataTable();
                    SqlCommand cmd = new SqlCommand("Proc_Proveedores_Lista_Consulta", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@PageIndex", PageIndex);
                    cmd.Parameters.AddWithValue("@PageSize", PageSize);
                    cmd.Parameters.AddWithValue("@orderby", orderby);
                    cmd.Parameters.AddWithValue("@orderbyeDirection", orderbyeDirection);
                    cmd.Parameters.AddWithValue("@Cliente_Nombre", _ProveedorNombre);
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


        public DataTable DetalleProveedor(int proveedorID)
        {

            try
            {
                using (var conn = conec.AbrirConexion())
                {
                    SqlCommand cmd = new SqlCommand("Proc_Cliente_detalle_Consulta", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@proveedorID", proveedorID);
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

        public void AgregarProveedor(Proveedores_Trans pro)
        {
            try
            {
                using (var conn = conec.AbrirConexion())
                {
                    SqlCommand cmd = new SqlCommand("Proc_Proveedore_Trans_Inserta", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Proveedor_Nombre", pro.Proveedor_Nombre);
                    cmd.Parameters.AddWithValue("@Proveedor_RNC", pro.Proveedor_RNC);
                    cmd.Parameters.AddWithValue(" @Proveedor_Email", pro.Proveedor_Email);
                    cmd.Parameters.AddWithValue("@Proveedor_Telefono", pro.Proveedor_Telefono);
                    cmd.Parameters.AddWithValue("@Proveedor_Celular", pro.Proveedor_Celular);
                    cmd.Parameters.AddWithValue("@Proveedor_Direccion", pro.Proveedor_Direccion);
                    cmd.Parameters.AddWithValue("@Registro_Usuario", pro.Registro_Usuario);
                    cmd.ExecuteNonQuery();
                    conec.CerrarConexion();
                }
            }

            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }

        public void EditarProveedor(Proveedores_Trans pro)
        {
            try
            {
                using (var conn = conec.AbrirConexion())
                {
                    SqlCommand cmd = new SqlCommand("Proc_Proveedore_Trans_Edita", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Proveedor_id", pro.Proveedor_id);
                    cmd.Parameters.AddWithValue("@Proveedor_Nombre", pro.Proveedor_Nombre);
                    cmd.Parameters.AddWithValue("@Proveedor_RNC", pro.Proveedor_RNC);
                    cmd.Parameters.AddWithValue(" @Proveedor_Email", pro.Proveedor_Email);
                    cmd.Parameters.AddWithValue("@Proveedor_Telefono", pro.Proveedor_Telefono);
                    cmd.Parameters.AddWithValue("@Proveedor_Celular", pro.Proveedor_Celular);
                    cmd.Parameters.AddWithValue("@Proveedor_Direccion", pro.Proveedor_Direccion);
                    cmd.Parameters.AddWithValue("@Registro_Usuario", pro.Registro_Usuario);
                    cmd.ExecuteNonQuery();
                    conec.CerrarConexion();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }

        public void InactivarProveedor(Proveedores_Trans pro)
        {
            try
            {
                using (var conn = conec.AbrirConexion())
                {
                    SqlCommand cmd = new SqlCommand("Proc_Proveedore_Trans_Inactivar", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Proveedor_id", pro.Proveedor_id);

                    cmd.ExecuteNonQuery();
                    conec.CerrarConexion();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }

    }
}