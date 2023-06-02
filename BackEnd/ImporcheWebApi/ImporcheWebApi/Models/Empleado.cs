using ServisSaltesa.Interfaces;
using ServisSaltesa.Models.Data;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Core;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ServisSaltesa.Models
{
    public class Empleado : IEmpleado
    {
        private readonly Conexion conec;

        public Empleado()
        {
            conec = new Conexion();
        }


        public DataTable Empleados_Lista(Int32? Empresa_ID)
        {
            try
            {
                using (var conn = conec.AbrirConexion())
                {
                    DataTable dt = new DataTable();
                    SqlCommand cmd = new SqlCommand("Proc_Empleados_Lista", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Empresa_id", Empresa_ID);
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


        public DataTable Empleados_Detalle(Int32 Empresa_ID, int empleado_ID)
        {
            try
            {
                using (var conn = conec.AbrirConexion())
                {
                    DataTable dt = new DataTable();
                    SqlCommand cmd = new SqlCommand("Proc_Empleados_Lista", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Empresa_id", Empresa_ID);
                    cmd.Parameters.AddWithValue("@Empleado_ID", empleado_ID);
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

        public int AgregarEmpleado(Empleados_Trans emp)
        {
            try
            {
                int resultado;
                using (var conn = conec.AbrirConexion())
                {
                    SqlCommand cmd = new SqlCommand("Proc_Empleado_Inserta", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Empleado_Nombre", emp.Empleado_Nombre);
                    cmd.Parameters.AddWithValue("@Empleado_Apellido", emp.Empleado_Apellido);
                    cmd.Parameters.AddWithValue("@Empleado_Direccion", emp.Empleado_Direccion);
                    cmd.Parameters.AddWithValue("@Empleado_Telefono", emp.Empleado_Telefono);
                    cmd.Parameters.AddWithValue("@Empleado_Celular", emp.Empleado_Celular);
                    cmd.Parameters.AddWithValue("@Empresa_ID", emp.Empresa_ID);
                    cmd.Parameters.AddWithValue("@Empleado_Edad", emp.Empleado_Edad);
                    resultado = cmd.ExecuteNonQuery();
                    conec.CerrarConexion();
                   
                }
                return resultado;
            }

            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }

        public int EditaEmpleado(Empleados_Trans empl)
        {
            try
            {
                int resultado;
                using (var conn = conec.AbrirConexion())
                {
                    SqlCommand cmd = new SqlCommand("Proc_Empleado_Edita", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Empleado_Nombre", empl.Empleado_Nombre);
                    cmd.Parameters.AddWithValue("@Empleado_Apellido", empl.Empleado_Apellido);
                    cmd.Parameters.AddWithValue("@Empleado_Direccion", empl.Empleado_Direccion);
                    cmd.Parameters.AddWithValue("@Empleado_Telefono", empl.Empleado_Telefono) ;
                    cmd.Parameters.AddWithValue("@Empleado_Celular", empl.Empleado_Celular);
                    cmd.Parameters.AddWithValue("@Empresa_ID", empl.Empresa_ID);
                    cmd.Parameters.AddWithValue("@Empleado_Edad", empl.Empleado_Edad);
                    resultado = cmd.ExecuteNonQuery();
                    conec.CerrarConexion();
                }
                return resultado;
            }

            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }

        public int InactivarEmpleado(Int32 Empresa_ID, int empleado_ID)
        {
            try
            {
                int resultado;
                using (var conn = conec.AbrirConexion())
                {
                    SqlCommand cmd = new SqlCommand("Proc_Empleado_Inactiva", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Empresa_id", Empresa_ID);
                    cmd.Parameters.AddWithValue("@Empleado_ID", empleado_ID);
                    resultado = cmd.ExecuteNonQuery();
                    conec.CerrarConexion();
                }
                return resultado;
            }

            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }

    }
}