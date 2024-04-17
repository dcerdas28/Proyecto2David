using System;
using Proyecto.Modelos;

using System.Configuration;
using System.Web.UI.WebControls;

namespace Proyecto.Vistas
{
    public partial class CrearProducto : System.Web.UI.Page
    {

        string conn = ConfigurationManager.ConnectionStrings["BaseDatos"].ConnectionString;
        ProductosModel modelo = new ProductosModel();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                var categorias = modelo.ObtenerCategorias(conn);

                ddlProductos.DataSource = categorias;
                ddlProductos.DataTextField = "Descripcion";
                ddlProductos.DataValueField = "IdCategoria";
                ddlProductos.DataBind();
                ddlProductos.Items.Insert(0, new ListItem("Categorias", ""));






            }

        }



        protected void btnCrear_Click(object sender, EventArgs e)
        {

            string nombre = txtNombre.Text;
            string marca = txtMarca.Text;
            int idCategoria = Convert.ToInt32(ddlProductos.SelectedValue);
            int stock = Convert.ToInt32(txtStock.Text);
            double precioCompra = Convert.ToDouble(txtPrecioCompra.Text);
            double precioVenta = Convert.ToDouble(txtPrecioVenta.Text);
            string fechaVencimiento = txtFechaVencimiento.Text;

            modelo.CrearProducto(conn, idCategoria, nombre, marca, stock, precioCompra, precioVenta, fechaVencimiento);

            Response.Redirect("../Vistas/AdministracionCatalogos.aspx");

        }
    }
}