using Proyecto.Modelos;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


namespace Proyecto.Vistas
{
    public partial class ReporteVentas : System.Web.UI.Page
    {



        string conn = ConfigurationManager.ConnectionStrings["BaseDatos"].ConnectionString;
        ClientesModel modeloclientes = new ClientesModel();
        ReportesModel productosmodel = new ReportesModel();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                var clientes = modeloclientes.ObtenerClientes(conn);
                ddlClientes.DataSource = clientes;
                ddlClientes.DataTextField = "NombreCompleto";
                ddlClientes.DataValueField = "IdCliente";
                ddlClientes.DataBind();

               
                ddlClientes.Items.Insert(0, new ListItem("Clientes", ""));



                var productos = productosmodel.ReporteProductos(conn);

                ddlProductos.DataSource = productos;
                ddlProductos.DataTextField = "Nombre";
                ddlProductos.DataValueField = "IdProducto";
                ddlProductos.DataBind();
                ddlProductos.Items.Insert(0, new ListItem("Productos", ""));




            }
        }


        protected void GenerarReporteCliente_(object sender, EventArgs e)
        {
            string fechaInicio = txtFechaInicio.Text;
            string fechaFin = txtFechaFin.Text;
            string idCliente = ddlClientes.SelectedValue;
            string idProducto = ddlProductos.SelectedValue;

            var ventas = productosmodel.ReporteProductosClientes(conn,fechaInicio,fechaFin,idProducto,idCliente);
            GridViewVentas.DataSource = ventas;
            GridViewVentas.DataBind();
        }

        }
}