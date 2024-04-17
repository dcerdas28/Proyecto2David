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
    public partial class AdministracionCatalogos : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["BaseDatos"].ConnectionString;
        ReportesModel modelo = new ReportesModel();
        AdministracionModel admin = new AdministracionModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
                var productos = modelo.ReporteProductos(conn);

                GridViewProductos.DataSource = productos;
                GridViewProductos.DataBind();
                GridViewProductos.DataKeyNames = new string[] { "IdProducto" };

            }
        }

        protected void GridViewProductos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewProductos.EditIndex = e.NewEditIndex;
            BindGridView();
        }

        protected void GridViewProductos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewProductos.EditIndex = -1;
            BindGridView();
        }

        protected void GridViewProductos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridViewProductos.Rows[e.RowIndex];
            int productId = Convert.ToInt32(GridViewProductos.DataKeys[e.RowIndex].Value);

            TextBox txtNombre = (TextBox)row.FindControl("txtNombre");
            TextBox txtMarca = (TextBox)row.FindControl("txtMarca");
            TextBox txtPrecioCompra = (TextBox)row.FindControl("txtPrecioCompra");
            TextBox txtPrecioVenta = (TextBox)row.FindControl("txtPrecioVenta");
            decimal precioCompra = Convert.ToDecimal(txtPrecioCompra.Text);
            decimal precioVenta = Convert.ToDecimal(txtPrecioVenta.Text);

            GridViewProductos.EditIndex = -1;
            admin.Actualizar(conn,productId,txtMarca.Text,txtNombre.Text,precioCompra,precioVenta);

            BindGridView();
        }



        private void BindGridView()
        {
            var productos = modelo.ReporteProductos(conn);
            GridViewProductos.DataSource = productos;
            GridViewProductos.DataBind();
        }


        protected void btnCrearProducto_Click(object sender, EventArgs e)
        {
            // Aquí puedes redirigir a la página de creación de productos o ejecutar otra lógica de creación
            Response.Redirect("/Vistas/CrearProducto.aspx");
        }

    }
}