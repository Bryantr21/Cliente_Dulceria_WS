<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listar_ventas.aspx.cs" Inherits="Cliente_Dulceria_WS.Catalogos.Ventas.listar_ventas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <h3>Lista de camiones</h3>
        </div>
        <div class="row">
            <asp:GridView ID="GVVentas" runat="server" CssClass="table table-bordered table-striped table-condensed" AutoGenerateColumns="false" DataKeyNames="Id_venta">
                <Columns>
                    <asp:BoundField DataField="Id_venta" HeaderText="Numero de Venta" ItemStyle-Width="85px" ReadOnly="true"></asp:BoundField>
                    <asp:BoundField DataField="Persona_Id" HeaderText="Persona" ItemStyle-Width="85px"></asp:BoundField>
                    <asp:BoundField DataField="Empresa_Id" HeaderText="Empresa" ItemStyle-Width="85px"></asp:BoundField>
                    <asp:BoundField DataField="SubTotal" HeaderText="Subtotal" ItemStyle-Width="85px"></asp:BoundField>
                    <asp:BoundField DataField="Descuento" HeaderText="Descuento" ItemStyle-Width="85px"></asp:BoundField>
                    <asp:BoundField DataField="Total" HeaderText="Total" ItemStyle-Width="85px"></asp:BoundField>
                    
                </Columns>
            </asp:GridView>

        </div>

    </div>
</asp:Content>
