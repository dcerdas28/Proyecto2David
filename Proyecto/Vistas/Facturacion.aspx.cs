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
    public partial class Facturacion : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["BaseDatos"].ConnectionString;
        ReportesModel modelo = new ReportesModel();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                var productos = modelo.ReporteProductos(conn);

                GridViewProductos.DataSource = productos;
                GridViewProductos.DataBind();

            }
        }
    }
}