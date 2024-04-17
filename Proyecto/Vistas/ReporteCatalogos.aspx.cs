using Proyecto.Modelos;
using System;
using System.Configuration;


namespace Proyecto.Vistas
{
    public partial class ReporteCatalogos : System.Web.UI.Page
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