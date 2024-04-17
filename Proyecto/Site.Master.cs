using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                var usuario = (string)Session["Usuario"];

                lblUsuario.Text = "Usuario: " + usuario;

                lblFechaHora.Text = DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
            }
        }
    }
}