<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registro_dentistas.aspx.cs" Inherits="registro_dentistas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link href="resources/css/styles.css" rel="stylesheet" />
    <title>REGISTRO DE DENTISTA.</title>
    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 100%;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-clip: padding-box;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-dark bg-primary">
         <!-- Navbar content -->
            <h2 class="text-white ps-3">BuscaTuDoctor</h2>
        </nav>
   <form id="form1" runat="server" class="container registro_dentista mt-5">
        <div class="form-horizontal"> 
            <h2 class="form-signin-heading text-center">
       REGISTRO DE DENTISTA</h2>
            <div class="form-group mt-4">
                 <div class="row">
                     <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Nombre:"></asp:Label>
                     <asp:TextBox ID="nombre" CssClass="form-control" runat="server"></asp:TextBox>
                 </div>
            </div>
             <div class="form-group mt-2">
                 <div class="row">
                     <asp:Label ID="Label2" runat="server" CssClass="control-label" Text="Apellido paterno:"></asp:Label>
                     <asp:TextBox ID="apellido_p" CssClass="form-control" runat="server"></asp:TextBox>
                 </div>
            </div>
            <div class="form-group mt-2">
                 <div class="row">
                     <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Apellido materno:"></asp:Label>
                     <asp:TextBox ID="apellido_m" CssClass="form-control" runat="server"></asp:TextBox>
                 </div>
            </div>
            <div class="form-group mt-2">
                 <div class="row">
                     <asp:Label ID="Label4" runat="server" CssClass="control-label" Text="Sexo:"></asp:Label>
                     <asp:DropDownList ID="sexo" runat="server">
                    <asp:ListItem>Masculino</asp:ListItem>
                    <asp:ListItem>Femenino</asp:ListItem>
                </asp:DropDownList>
                 </div>
            </div>
            <div class="form-group mt-2">
                 <div class="row">
                     <asp:Label ID="Label5" runat="server" CssClass="control-label" Text="Numero de telefono:"></asp:Label>
                     <asp:TextBox ID="telefono" CssClass="form-control" runat="server" TextMode="Phone"></asp:TextBox>
                 </div>
            </div>
              <div class="form-group mt-2">
                 <div class="row">
                     <asp:Label ID="Label6" runat="server" CssClass="control-label" Text="Correo electronico:"></asp:Label>
                     <asp:TextBox ID="email" CssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                 </div>
            </div>
            <div class="form-group mt-2">
                 <div class="row">
                     <asp:Label ID="Label7" runat="server" CssClass="control-label" Text="Especialidad:"></asp:Label>
                     <asp:DropDownList ID="especialidad" runat="server">
                    <asp:ListItem>Odontologo general</asp:ListItem>
                    <asp:ListItem>Odontopediatra</asp:ListItem>
                    <asp:ListItem>Ortodoncista</asp:ListItem>
                    <asp:ListItem>Periodoncista</asp:ListItem>
                    <asp:ListItem>Endodoncista</asp:ListItem>
                    <asp:ListItem>Cirujano oral</asp:ListItem>
                    <asp:ListItem>Prostodoncista</asp:ListItem>
                </asp:DropDownList>
                 </div>
            </div>
             <div class="form-group mt-2">
                 <div class="row">
                     <asp:Label ID="Label8" runat="server" CssClass="control-label" Text="Nombre de usuario:"></asp:Label>
                     <asp:TextBox ID="nombre_usuario" CssClass="form-control" runat="server"></asp:TextBox>
                 </div>
            </div>
            <div class="form-group mt-2">
                 <div class="row">
                     <asp:Label ID="Label9" runat="server" CssClass="control-label" Text="Contraseña:"></asp:Label>
                     <asp:TextBox ID="pass" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                 </div>
            </div>
            <div class="col-md-3 col-lg-offset-4 mt-2 mb-4 d-flex justify-content-around" align="center">
                <asp:Button ID="registrar" runat="server" CssClass="btn btn-primary" Text="REGISTRARSE" OnClick="registrar_Click" />
            </div>
        </div>
    </form>
</body>
</html>
