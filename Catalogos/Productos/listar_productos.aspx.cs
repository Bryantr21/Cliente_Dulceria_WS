using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cliente_Dulceria_WS.Producto_Service;
using Cliente_Dulceria_WS.Venta_Service;

namespace Cliente_Dulceria_WS.Catalogos.Productos
{
    public partial class listar_productos : System.Web.UI.Page
    {
        productos_ServicesSoapClient cliente_WS;
        protected void Page_Load(object sender, EventArgs e)
        {
            cliente_WS = new productos_ServicesSoapClient();

            if (!IsPostBack)
            {
                cargarGrid();

            }
        }
        public void cargarGrid()
        {

            //carga info desde bll al gv
            GVProductos.DataSource = cliente_WS.GetProductos(new Producto_Service.ArrayOfAnyType { });
            GVProductos.DataBind();
        }
    }
}