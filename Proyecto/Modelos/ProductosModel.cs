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

    public class ProductosModel
    {
        public List<Categoria> ObtenerCategorias(string conn)
        {
            using (var connection = new SqlConnection(conn))
            {

                var categorias = connection.Query<Categoria>("Obtener_Categorias", new { }, commandType: CommandType.StoredProcedure).ToList();
                return categorias;

            }
        }



        public void CrearProducto(string conn, int idCategoria, string nombre, string marca, int stock, double precioCompra, double precioVenta, string fechaVencimiento)
        {
            using (var connection = new SqlConnection(conn))
            {

                connection.Query<Categoria>("Crear_Producto", new {idCategoria,nombre,marca,stock,precioCompra,precioVenta,fechaVencimiento }, commandType: CommandType.StoredProcedure).ToList();


            }
        }

    }

}