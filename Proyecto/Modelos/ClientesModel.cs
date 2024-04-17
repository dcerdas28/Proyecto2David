using Proyecto.Datos;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using Dapper;

namespace Proyecto.Modelos
{
    public class ClientesModel
    {

        public List<ClientesObj> ObtenerClientes(string conn)
        {
            using (var connection = new SqlConnection(conn))
            {

                var clientes = connection.Query<ClientesObj>("Obtener_Clientes", new { }, commandType: CommandType.StoredProcedure).ToList();
                return clientes;

            }
        }



    }
}