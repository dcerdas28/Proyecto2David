<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReporteCatalogos.aspx.cs" Inherits="Proyecto.Vistas.ReporteCatalogos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link rel="stylesheet" href="../Css/ReporteCatalogos.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Contenido principal de la página ReporteCatalogos.aspx -->
    <h2 style="text-align: center;">Catalogo</h2>
    <asp:GridView ID="GridViewProductos" runat="server" AutoGenerateColumns="False" CssClass="custom-gridview">
        <Columns>
            <asp:BoundField DataField="IdProducto" HeaderText="ID Producto" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="Marca" HeaderText="Marca" />
            <asp:BoundField DataField="Stock" HeaderText="Stock" />
            <asp:BoundField DataField="PrecioCompra" HeaderText="Precio Compra" />
            <asp:BoundField DataField="PrecioVenta" HeaderText="Precio Venta" />
            <asp:BoundField DataField="FechaVencimiento" HeaderText="Fecha Vencimiento" />
        </Columns>
    </asp:GridView>
</asp:Content>
