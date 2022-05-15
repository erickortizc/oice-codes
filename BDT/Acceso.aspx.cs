using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //Ejecutar el control de acceso
        wsBuscaTuDoctor.conexcionesSoapClient obj = new wsBuscaTuDoctor.conexcionesSoapClient();

        DataSet ds = new DataSet();
        ds = obj.Acceso(txtUsername.Text, txtPassword.Text);
        // Validar las banderas del ds, envio de mensajes y 
        // Configuracion de la seguridad
        DataTable dt = ds.Tables["acceso"];
        String bandera = "";
        foreach (DataRow dr in dt.Rows)
        {
            bandera = dr[0].ToString();
            // Actualizacion de variables de sesion del usuariop
            if (bandera == "1")
            {
                Session["Nombre"] = dr[1].ToString();
                Session["Usuario"] = dr[2].ToString();
                Session["Rol"] = dr[3].ToString();
            }
            else
            {
                //Cierre de sesion del usuario que este activo.
                Session["Nombre"] = "";
                Session["Usuario"] = "";
                Session["Rol"] = "";
            }
            // -----------------

        }
        if (bandera == "0")
        {
            Response.Write("<script language ='javascript'> alert('Usuario no autorizado...'); </script>");
        }
        else
        {
            Response.Write("<script language ='javascript'> alert('Bienvenide " +
                            Session["nombre"] + "[" + Session["Rol"]
                            + "]'); </script>");
            if (Session["Rol"].ToString() == "Doctor")
            {
                Response.Write("<script language ='javascript'>" +
                             "document.location.href='registra_direccion.aspx'" +
                             "</script>");
            }
            else
            {
                Response.Write("<script language ='javascript'>" +
                                 "document.location.href='usuario.aspx'" +
                                 "</script>");
            }


        }
    }
}
