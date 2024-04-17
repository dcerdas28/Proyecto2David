<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proyecto._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="Css/Login.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div id="login-container">
            <h2>Login</h2>
            <asp:Label ID="mensaje" runat="server" ForeColor="Red" Visible="false"></asp:Label>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label>
            <asp:TextBox ID="iduser" runat="server" placeholder="Usuario"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="validarUser" runat="server" ControlToValidate="iduser"
                ErrorMessage="¡El usuario es requerido!" ForeColor="Red" ValidationGroup="loginValidation" />
            <asp:TextBox ID="idpass" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox><br />
            <asp:Button ID="btlogin" CssClass="btn btn-info" runat="server" Text="Ingresar" OnClick="btnLogin" ValidationGroup="loginValidation" />

            <div id="registro-container">
                <asp:LinkButton ID="lnkRegistrarse" runat="server" Text="No tiene cuenta? Registrarse"
                    OnClick="lnkRegistrarse_Click" CssClass="btn btn-link" />
            </div>
    </form>
</body>
</html>
