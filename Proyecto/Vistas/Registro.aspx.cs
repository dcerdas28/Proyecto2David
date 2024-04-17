using Proyecto.Modelos;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.Vistas
{
    public partial class Registro : System.Web.UI.Page
    {


        string conn = ConfigurationManager.ConnectionStrings["BaseDatos"].ConnectionString;
        EmpleadosModel model = new EmpleadosModel();


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnRegistrar_(object sender, EventArgs e)
        {

            string Cedula = txtCedula.Text.Trim();
            string Apellido = txtApellidos.Text.Trim();
            string Nombres = txtNombres.Text.Trim();
            string Sexo = ddlSexo.SelectedValue;
            string EstadoCivil = ddlEstadoCivil.SelectedValue;
            string FechaNacimiento = txtFechaNacimiento.Text.Trim();
            string Direccion = txtDireccion.Text.Trim();

            model.InsertarEmpleados(conn, Cedula, Apellido, Nombres, Sexo, FechaNacimiento, Direccion, EstadoCivil);

            Response.Redirect("/Default.aspx");

        }


        protected void Regresar(object sender, EventArgs e)
        {
            Response.Redirect("/Default.aspx");
        }
    }
}