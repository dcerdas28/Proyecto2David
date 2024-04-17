<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Proyecto.Vistas.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registro de Empleado</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <link href="../Css/Registro.css" rel="stylesheet" />
</head>
<body>
    <div class="container-fluid d-flex justify-content-center align-items-center" style="min-height: 100vh;">
        <form id="form1" runat="server" class="p-4 bg-light rounded">
            <h2 class="text-center mb-4">Registro de Empleado</h2>

            <div class="mb-3">
                <label class="form-label">Cédula:</label>
                <asp:TextBox ID="txtCedula" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label class="form-label">Apellidos:</label>
                <asp:TextBox ID="txtApellidos" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label class="form-label">Nombres:</label>
                <asp:TextBox ID="txtNombres" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label class="form-label">Sexo:</label>
                <asp:DropDownList CssClass="form-control" ID="ddlSexo" runat="server">
                    <asp:ListItem Text="Masculino" Value="M"></asp:ListItem>
                    <asp:ListItem Text="Femenino" Value="F"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="mb-3">
                <label class="form-label">Fecha de Nacimiento:</label>
                <asp:TextBox  type="date" CssClass="form-control" ID="txtFechaNacimiento" runat="server"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label class="form-label">Dirección:</label>
                <asp:TextBox CssClass="form-control" ID="txtDireccion" runat="server"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label class="form-label">Estado Civil:</label>
                <asp:DropDownList CssClass="form-control" ID="ddlEstadoCivil" runat="server">
                    <asp:ListItem Text="Soltero/a" Value="Soltero"></asp:ListItem>
                    <asp:ListItem Text="Casado/a" Value="Casado"></asp:ListItem>
                    <asp:ListItem Text="Viudo/a" Value="Viudo"></asp:ListItem>
                    <asp:ListItem Text="Divorciado/a" Value="Divorciado"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="centro">
                <asp:Button ID="btnRegistrar" CssClass="btn btn-success" runat="server" Text="Registrar" OnClick="btnRegistrar_" />

                <asp:Button ID="Cancelar" CssClass="btn btn-danger" runat="server" Text="Cancelar" OnClick="Regresar" />

            </div>
        </form>
    </div>
</body>
</html>
