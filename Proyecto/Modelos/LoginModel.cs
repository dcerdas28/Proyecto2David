using Proyecto.Datos;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using Dapper;

namespace Proyecto.Modelos
{
    public class LoginModel
    {

        public LoginObj Ingreso(string usuario, string password, string conn)
        {
            using (var connection = new SqlConnection(conn))
            {

                var login = connection.Query<LoginObj>("Obtener_Login", new { usuario, password }, commandType: CommandType.StoredProcedure).FirstOrDefault();
                return login;

            }
        }



    }
}