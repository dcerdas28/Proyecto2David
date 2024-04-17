<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearProducto.aspx.cs" Inherits="Proyecto.Vistas.CrearProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Contenido principal de la página CrearProducto.aspx -->
    <h2 style="text-align: center;">Crear Nuevo Producto</h2>
    <asp:Panel ID="panelMensaje" runat="server" Visible="false" CssClass="alert" />
    <div class="form-group">
        <asp:Label runat="server" ID="lblNombre" Text="Nombre del Producto:" AssociatedControlID="txtNombre" />
        <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" ID="lblMarca" Text="Marca:" AssociatedControlID="txtMarca" />
        <asp:TextBox runat="server" ID="txtMarca" CssClass="form-control" />
    </div>
            <div class="col-md-3 form-group">
                <label for="ddlProductos">Producto:</label>
                <asp:DropDownList ID="ddlProductos" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
    <div class="form-group">
        <asp:Label runat="server" ID="lblStock" Text="Stock:" AssociatedControlID="txtStock" />
        <asp:TextBox type="number" runat="server" ID="txtStock" CssClass="form-control" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" ID="lblPrecioCompra" Text="Precio de Compra:" AssociatedControlID="txtPrecioCompra" />
        <asp:TextBox    runat="server" ID="txtPrecioCompra" CssClass="form-control" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" ID="lblPrecioVenta" Text="Precio de Venta:" AssociatedControlID="txtPrecioVenta" />
        <asp:TextBox runat="server" ID="txtPrecioVenta" CssClass="form-control" />
    </div>
    <div class="form-group">
        <asp:Label runat="server" ID="lblFechaVencimiento" Text="Fecha de Vencimiento:" AssociatedControlID="txtFechaVencimiento" />
        <asp:TextBox  type="date" runat="server" ID="txtFechaVencimiento" CssClass="form-control" />
    </div>
    <asp:Button runat="server" ID="btnCrear" Text="Crear Producto" CssClass="btn btn-success" OnClick="btnCrear_Click" />
</asp:Content>



