<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Acceso.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link href="resources/css/styles.css" rel="stylesheet" />

    <title>LOGIN</title>
</head>
<body class="LOGIN">
            <nav class="navbar navbar-dark bg-primary">
         <!-- Navbar content -->
            <h2 class="text-white">BuscaTuDoctor</h2>
        </nav>
    <main class="d-flex align-items-center justify-content-center flex-column mt-5">

     <form id="form1" runat="server" class="formulario">
    <div class="w-100">
    <h2 class="form-signin-heading ">
        INICIO DE SESION</h2>
    <label for="txtUsername">
        Usuario:</label>
    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter Username"
         />
    <br />
    <label for="txtPassword">
        Contraseña:</label>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"
        placeholder="Enter Password"  />
    <asp:Button ID="btnLogin" Text="Login" runat="server" Class="btn btn-primary mt-3" OnClick="btnLogin_Click" />
   
    
    </div>

</form>
   </main> 
</body>
</html>
