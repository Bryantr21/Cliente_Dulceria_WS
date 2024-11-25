<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listar_productos.aspx.cs" Inherits="Cliente_Dulceria_WS.Catalogos.Productos.listar_productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    <div class="row">
        <h3>Lista de Productos</h3>
    </div>
    <div class="row">
        <asp:GridView ID="GVProductos" runat="server" CssClass="table table-bordered table-striped table-condensed" AutoGenerateColumns="false" DataKeyNames="Id_producto">
            <Columns>
                <asp:BoundField DataField="Id_producto" HeaderText="Numero de Producto" ItemStyle-Width="85px" ReadOnly="true"></asp:BoundField>
                <asp:BoundField DataField="Categoria_Id" HeaderText="Persona" ItemStyle-Width="85px"></asp:BoundField>
                <asp:BoundField DataField="Nombre" HeaderText="Empresa" ItemStyle-Width="85px"></asp:BoundField>
                <asp:BoundField DataField="Precio" HeaderText="Subtotal" ItemStyle-Width="85px"></asp:BoundField>
                <asp:BoundField DataField="Marca" HeaderText="Descuento" ItemStyle-Width="85px"></asp:BoundField>
                <asp:BoundField DataField="Cantidad" HeaderText="Total" ItemStyle-Width="85px"></asp:BoundField>
                <asp:BoundField DataField="Caducidad" HeaderText="Total" ItemStyle-Width="85px"></asp:BoundField>
            </Columns>
        </asp:GridView>
    </div>
</div>
</asp:Content>
