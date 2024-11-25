using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cliente_Dulceria_WS.Venta_Service;

namespace Cliente_Dulceria_WS.Catalogos.Ventas
{
    public partial class listar_ventas : System.Web.UI.Page
    {
        ventas_ServicesSoapClient cliente_WS;
        protected void Page_Load(object sender, EventArgs e)
        {
            cliente_WS = new ventas_ServicesSoapClient();

            if (!IsPostBack)
            {
                cargarGrid();

            }
        }
        public void cargarGrid()
        {
           
            //carga info desde bll al gv
            GVVentas.DataSource = cliente_WS.GetVentas(new ArrayOfAnyType { });
            GVVentas.DataBind();
        }

        

        protected void Insertar_Click(object sender, EventArgs e)
        {

        }
    }
}