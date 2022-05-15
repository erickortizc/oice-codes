using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class registra_direccion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void registrar_Click(object sender, EventArgs e)
    {
        try
        {
            //Validacion de datos 
            if (calle.Text == "")
            {
                //Nombre complejo
                Response.Write("<script language ='javascript'> alert('Debe de capturar una calle'); </script>");
            }
            else
            {
                if (numero.Text == "")
                {
                    //Descripcion
                    Response.Write("<script language ='javascript'> alert('Debe de capturar su numero de local o casa o departamente donde ofreza sus servicio); </script>");
                }
                else
                {

                    if (localidad.Text == "")
                    {
                        //Area total
                        Response.Write("<script language ='javascript'> alert('Debe de capturar la localidad'); </script>");
                    }
                    else
                    {
                        if (cp.Text == "")
                        {
                            //Jefe organizacional
                            Response.Write("<script language ='javascript'> alert('Debe de capturar el codifo postal'); </script>");
                        }
                       
                                else
                                {
                                    //Boton Registrar Complejo
                                    wsBuscaTuDoctor.conexcionesSoapClient obj = new wsBuscaTuDoctor.conexcionesSoapClient();
                                    String usuario = Session["Usuario"].ToString();
                                    DataSet ds2 = new DataSet();
                                    ds2 = obj.qrycveDen(usuario);
                                    // Validar las banderas del ds, envio de mensajes y 
                                    // Configuracion de la seguridad
                                    DataTable dt2 = ds2.Tables["saberid"];
                                    String cve_den = "";
                                    foreach (DataRow dr2 in dt2.Rows)
                                    {
                                        cve_den = dr2[0].ToString();
                                    }

                                DataSet ds = new DataSet();
                           
             
                            ds = obj.insDireccion(calle.Text,numero.Text,municpio.SelectedValue, localidad.Text,cp.Text, cve_den);
                                    //Validacion de la bandera recibida de la ejecucion del metodo de insercion complejo
                                    DataTable dt = ds.Tables["insDireccion"];
                                
                                    String bandera = "";
                                    //Obtencion del dato recibido para validar mensjes
                                    foreach (DataRow dr in dt.Rows)
                                    {
                                        bandera = dr[0].ToString();
                                    }
                                    //Validacion de mensajes
                                    if (bandera == "1")
                                    {
                                        Response.Write("<script language ='javascript'> alert('DIRECCION REGISTRADA CORRECTAMENTE'); </script>");
                                        calle.Text = "";
                                        numero.Text = "";
                                        localidad.Text = "";
                                        cp.Text = "";
                                 
                  
                                    }
                                    if (bandera == "0")
                                    {
                                        Response.Write("<script language ='javascript'> alert('No se registro el la direccion, ya existe una direccion asociada a este usuario'); </script>");
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
        catch (Exception ex)
        {
            Response.Write("<script language ='javascript'> alert('Ha ocurrido un error, verificar la captura de datos'); </script>");
        }
    }
}
