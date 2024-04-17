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
    public class ReportesModel
    {

        public List<ProductoObj> ReporteProductos(string conn)
        {
            using (var connection = new SqlConnection(conn))
            {

                var productos = connection.Query<ProductoObj>("Obtener_Productos", new {  }, commandType: CommandType.StoredProcedure).ToList();
                return productos;

            }
        }


        public List<VentasObj> ReporteProductosClientes(string conn, string fechaInicio, string fechaFin, string idProducto, string idCliente)
        {
            using (var connection = new SqlConnection(conn))
            {



                if(string.IsNullOrEmpty(fechaInicio)){
                    fechaInicio = null;
                }

                if (string.IsNullOrEmpty(fechaFin))
                {
                    fechaFin = null;
                }
;
                var productos = connection.Query<VentasObj>("Obtener_VentasClientes", new { fechaInicio , fechaFin , idProducto, idCliente }, commandType: CommandType.StoredProcedure).ToList();
                return productos;

            }
        }

    }
}