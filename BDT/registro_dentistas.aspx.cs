using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class registro_dentistas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void registrar_Click(object sender, EventArgs e)
    {
        try
        {
            //Validacion de datos 
            if (nombre.Text == "")
            {
                //Nombre complejo
                Response.Write("<script language ='javascript'> alert('Debe de capturar su nombre'); </script>");
            }
            else
            {
                if (apellido_p.Text == "")
                {
                    //Descripcion
                    Response.Write("<script language ='javascript'> alert('Debe de capturar su apelldo paterno'); </script>");
                }
                else
                {

                    if (telefono.Text == "")
                    {
                        //Area total
                        Response.Write("<script language ='javascript'> alert('Debe de capturar su apelldo materno'); </script>");
                    }
                    else
                    {
                        if (email.Text == "")
                        {
                            //Jefe organizacional
                            Response.Write("<script language ='javascript'> alert('Debe de capturar su email'); </script>");
                        }
                        else
                        {
                            if (nombre_usuario.Text == "")
                            {
                                //Area total
                                Response.Write("<script language ='javascript'> alert('Debe de capturar un nombre de usuario'); </script>");
                            }
                            else
                            {
                                if (pass.Text == "")
                                {
                                    //Area total
                                    Response.Write("<script language ='javascript'> alert('Debe de capturar una contraseña'); </script>");
                                }
                                else
                                {
                                    //Boton Registrar Complejo
                                    wsBuscaTuDoctor.conexcionesSoapClient obj = new wsBuscaTuDoctor.conexcionesSoapClient();

                                    DataSet ds = new DataSet();

                                    ds = obj.insDentista(apellido_m.Text, apellido_p.Text, nombre.Text, sexo.SelectedValue, telefono.Text, email.Text, especialidad.SelectedValue, nombre_usuario.Text, pass.Text, "3");
                                    //Validacion de la bandera recibida de la ejecucion del metodo de insercion complejo
                                    DataTable dt = ds.Tables["insertardentista"];

                                    String bandera = "";
                                    //Obtencion del dato recibido para validar mensjes
                                    foreach (DataRow dr in dt.Rows)
                                    {
                                        bandera = dr[0].ToString();
                                    }
                                    //Validacion de mensajes
                                    if (bandera == "1")
                                    {
                                        Response.Write("<script language ='javascript'> alert('REGISTRADO EXISTOSAMENTE, porfavor incia sesion'); </script>");
                                        nombre.Text = "";
                                        apellido_m.Text = "";
                                        apellido_p.Text = "";
                                        telefono.Text = "";
                                        email.Text = "";
                                        nombre_usuario.Text = "";
                                        pass.Text = "";
                                        Response.Write("<script language ='javascript'>" +
                                        "document.location.href='Acceso.aspx'" +
                                        "</script>");
                                    }
                                    if (bandera == "0")
                                    {
                                        Response.Write("<script language ='javascript'> alert('No se registro el usuario, el nombre de usuario ya existe'); </script>");
                                    }
                                    if (bandera == "-1")
                                    {
                                        Response.Write("<script language ='javascript'> alert('No se registro el USUARIO, el rol no existe'); </script>");
                                    }
                                }
                            }
                        }
                    }
                }
            }

        }
        catch (Exception ex)
        {
            Response.Write("<script language ='javascript'> alert('Ha ocurrido un error, verificar la captura de datos'); </script>");
        }
    }
}