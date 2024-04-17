using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Modelos
{
    public class VentasObj
    {
        public int idCliente { get; set; }
        public string Serie { get; set; }

        public string NumDocumento { get; set; }
        public string TipoDocumento { get; set; }

        public string FechaVenta { get; set; }

        public double Total { get; set; }



    }
}