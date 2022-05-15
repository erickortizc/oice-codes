<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registra_direccion.aspx.cs" Inherits="registra_direccion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link href="resources/css/styles.css" rel="stylesheet" />
    <title>REGISTRO DE DIRECCION</title>
</head>
<body>
     <nav class="navbar navbar-dark bg-primary">
         <!-- Navbar content -->
            <h2 class="text-white ps-3">BuscaTuDoctor</h2>
        </nav>
    <form id="form1" runat="server" class="registro_dentista container">
              <div class="form-horizontal"> 
            <h2 class="form-signin-heading text-center fs-4">
       REGISTRO DE DIRECCION DE CONSULTORIO</h2>
            <div class="form-group mt-4">
                 <div class="row">
                     <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Calle:"></asp:Label>
                     <asp:TextBox ID="calle" CssClass="form-control" runat="server"></asp:TextBox>
                 </div>
            </div>
             <div class="form-group mt-4">
                 <div class="row">
                     <asp:Label ID="Label2" runat="server" CssClass="control-label" Text="Numero de local:"></asp:Label>
                     <asp:TextBox ID="numero" CssClass="form-control" runat="server"></asp:TextBox>
                 </div>
            </div>
            <div class="form-group mt-4">
                 <div class="row">
                     <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Municpio:"></asp:Label>
                     <asp:DropDownList ID="municpio" runat="server">
                    <asp:ListItem>Atitalaquia</asp:ListItem>
                    <asp:ListItem>Tizayuca</asp:ListItem>
                    <asp:ListItem>Tolcayuca</asp:ListItem>
                </asp:DropDownList>
                 </div>
            </div>
             <div class="form-group mt-4">
                 <div class="row">
                     <asp:Label ID="Label4" runat="server" CssClass="control-label" Text="Localidad:"></asp:Label>
                     <asp:TextBox ID="localidad" CssClass="form-control" runat="server"></asp:TextBox>
                 </div>
            </div>
                  <div class="form-group mt-4">
                 <div class="row">
                     <asp:Label ID="Label5" runat="server" CssClass="control-label" Text="Codigo postal:"></asp:Label>
                     <asp:TextBox ID="cp" CssClass="form-control" runat="server"></asp:TextBox>
                 </div>
            </div>
        <div class="col-md-3 col-lg-offset-4 mt-2 mb-4 " align="center" >
                <asp:Button ID="registrar" runat="server" CssClass="btn btn-primary" Text="REGISTRAR DIRECCION" OnClick="registrar_Click" />
            </div>
        </div>
    </form>
</body>
</html>
