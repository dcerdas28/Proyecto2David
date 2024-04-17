using Proyecto.Datos;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using Dapper;
using System.Text;

namespace Proyecto.Modelos
{   
    public class EmpleadosModel
    {

        public void InsertarEmpleados(string conn, string Cedula, string Apellidos, string Nombres,string Sexo, string FechaNacimiento, string Direccion,string EstadoCivil) 
        {

            int longitud = 12; 
            string caracteresPermitidos = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()-_+=";
            StringBuilder sb = new StringBuilder();
            Random random = new Random();

            for (int i = 0; i < longitud; i++)
            {
                int indice = random.Next(caracteresPermitidos.Length);
                sb.Append(caracteresPermitidos[indice]);
            }

            string Password = sb.ToString();


            using (var connection = new SqlConnection(conn))
            {

                    connection.Execute("Insertar_Empleado", new {Cedula,Apellidos,Nombres,Sexo,FechaNacimiento,Direccion,EstadoCivil,Password }, commandType: CommandType.StoredProcedure);
                
            }

        }

    }
}