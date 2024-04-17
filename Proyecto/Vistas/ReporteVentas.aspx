    <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReporteVentas.aspx.cs" Inherits="Proyecto.Vistas.ReporteVentas" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        
        <link rel="stylesheet" href="../Css/ReporteVentas.css" />
    </asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <h2 style="text-align: center;">Reporte de Ventas</h2>

    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-md-3 form-group">
                <label for="txtFechaInicio">Fecha Inicio:</label>

                <asp:TextBox type="date" ID="txtFechaInicio" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-3 form-group">
                <label for="txtFechaFin">Fecha Fin:</label>
                <asp:TextBox type="date"  ID="txtFechaFin" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-3 form-group">
                <label for="ddlClientes">Cliente:</label>
                <asp:DropDownList ID="ddlClientes" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="col-md-3 form-group">
                <label for="ddlProductos">Producto:</label>
                <asp:DropDownList ID="ddlProductos" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="col-md-2 form-group">
                <asp:Button ID="btnGenerarReporte" runat="server" Text="Generar Reporte" OnClick="GenerarReporteCliente_" CssClass="btn btn-primary btn-block" />
            </div>
        </div>
    </div>

    <hr />

    <asp:GridView ID="GridViewVentas" runat="server" AutoGenerateColumns="False" CssClass="custom-gridview">
        <Columns>
            <asp:BoundField DataField="Serie" HeaderText="Serie" />
            <asp:BoundField DataField="NumDocumento" HeaderText="Número Documento" />
            <asp:BoundField DataField="TipoDocumento" HeaderText="Tipo Documento" />
            <asp:BoundField DataField="FechaVenta" HeaderText="Fecha Venta" />
            <asp:BoundField DataField="Total" HeaderText="Total" DataFormatString="{0:C}" />
        </Columns>
    </asp:GridView>
</asp:Content>

