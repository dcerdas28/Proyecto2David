using Dapper;
using Proyecto.Datos;
using Proyecto.Modelos;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class _Default : Page
    {

        string conn = ConfigurationManager.ConnectionStrings["BaseDatos"].ConnectionString;
        LoginModel modelo = new LoginModel();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkRegistrarse_Click(object sender, EventArgs e)
        {

            Response.Redirect("/Vistas/Registro.aspx");
        }

        protected void btnLogin(object sender, EventArgs e)
        {


            string usuario = iduser.Text.Trim();
            string password = idpass.Text.Trim();


            var login = modelo.Ingreso(usuario, password, conn);

            if (login != null)
            {
                Session["Usuario"] = usuario;
                Session["IdEmpleado"] = login.IdEmpleado;

                Response.Redirect("/Vistas/Inicio.aspx");

            }
            else
            {
                mensaje.Text = "Usuario Invalido";
                mensaje.Visible = true;
            }


        }

    }
}