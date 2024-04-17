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
    public class AdministracionModel
    {

        public void Actualizar(string conn, int IdProducto, string Marca, string Nombre, decimal PrecioCompra, decimal PrecioVenta)
        {

            using (var connection = new SqlConnection(conn))
            {

                connection.Execute("Actualizar_Catalogo", new { IdProducto, Nombre, Marca, PrecioCompra, PrecioVenta }, commandType: CommandType.StoredProcedure);

            }
        }

        public void Eliminar(string conn, int IdProducto)
        {

            using (var connection = new SqlConnection(conn))
            {

                var login = connection.Execute("Eliminar_Catalogo", new { IdProducto }, commandType: CommandType.StoredProcedure);

            }
        }




    }
}