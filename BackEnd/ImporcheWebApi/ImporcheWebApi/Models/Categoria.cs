using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ServisSaltesa.Models.Data;
using System.Data.Entity.Core;
using ServisSaltesa.Interfaces;
using System.Data.SqlClient;
using System.Data;
using System.Security.Policy;

namespace ServisSaltesa.Models.Data
{
    public class Categoria : ICategoria
    {
        private readonly Conexion conec;

        public Categoria()
        {
            conec = new Conexion();
        }

        public DataTable Categoria_Lista()
        {
            try
            {
                using (var conn = conec.AbrirConexion())
                {
                    SqlCommand cmd = new SqlCommand("Proc_Categoria_Consulta", conn);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
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
