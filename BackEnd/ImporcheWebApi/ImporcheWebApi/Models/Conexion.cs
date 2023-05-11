using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace ServisSaltesa.Models
{
    internal class Conexion
    {

        private static readonly string cadenaConexion = ConfigurationManager.ConnectionStrings["ServisSaltesaEntities"].ConnectionString;
        private SqlConnection conec = null;

        public SqlConnection AbrirConexion()
        {
            conec = new SqlConnection(cadenaConexion);
            if (conec.State == ConnectionState.Closed)
                conec.Open();
            return conec;
        }


        public SqlConnection CerrarConexion()
        {
            if (conec.State == ConnectionState.Open)
                conec.Close();
            return conec;
        }
    }
}