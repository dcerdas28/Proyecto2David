using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Datos
{
    public class ProductoObj
    {
        public int IdProducto { get; set; }


        public int IdCategoria { get; set; }    
        public string Nombre { get; set; }
        public string Marca { get; set; }
        public int Stock { get; set; }
        public double PrecioCompra {get; set; }
        public double PrecioVenta { get; set; }

        public string FechaVencimiento { get; set; }

    }



    public class Categoria
    {

        public int IdCategoria { get; set; }

        public string Descripcion { get; set; }
    }


}