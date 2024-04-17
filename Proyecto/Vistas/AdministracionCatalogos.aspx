<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdministracionCatalogos.aspx.cs" Inherits="Proyecto.Vistas.AdministracionCatalogos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Css/ReporteCatalogos.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="text-align: center;">Administración de Catálogo</h2>

    <div style="text-align: center; margin-bottom: 10px;">
        <asp:Button ID="btnCrearProducto" runat="server" Text="Crear Producto" CssClass="btn btn-success"
            OnClick="btnCrearProducto_Click" />
    </div>

   <asp:GridView ID="GridViewProductos" runat="server" AutoGenerateColumns="False"
    OnRowEditing="GridViewProductos_RowEditing"
    OnRowCancelingEdit="GridViewProductos_RowCancelingEdit"
    OnRowUpdating="GridViewProductos_RowUpdating">
    <Columns>
        <asp:BoundField DataField="IdProducto" HeaderText="ID Producto" ReadOnly="True" />
        <asp:TemplateField HeaderText="Nombre">
            <ItemTemplate>
                <asp:Label ID="lblNombre" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtNombre" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Marca">
            <ItemTemplate>
                <asp:Label ID="lblMarca" runat="server" Text='<%# Eval("Marca") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtMarca" runat="server" Text='<%# Bind("Marca") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Precio Compra">
            <ItemTemplate>
                <asp:Label ID="lblPrecioCompra" runat="server" Text='<%# Eval("PrecioCompra", "{0:C}") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtPrecioCompra" runat="server" Text='<%# Bind("PrecioCompra", "{0:N2}") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Precio Venta">
            <ItemTemplate>
                <asp:Label ID="lblPrecioVenta" runat="server" Text='<%# Eval("PrecioVenta", "{0:C}") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtPrecioVenta" runat="server" Text='<%# Bind("PrecioVenta", "{0:N2}") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Stock" HeaderText="Stock" />
        <asp:TemplateField HeaderText="Acciones">
            <ItemTemplate>
                <asp:Button runat="server" CommandName="Edit" Text="Editar" CssClass="btn btn-info" />
            </ItemTemplate>
            <EditItemTemplate>
                <asp:Button runat="server" CommandName="Update" CssClass="btn btn-info" Text="Actualizar" />
                <asp:Button runat="server" CommandName="Cancel" CssClass="btn btn-warning" Text="Cancelar" />
            </EditItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>


</asp:Content>
