using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Windows.Forms;

namespace BlogDiegoTorres.Pages
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
      
        protected void btnSend_Click(object sender, EventArgs e)
        {
            string miMail = "Sucuenta@hotmail.com";
            try
            {
                MailMessage msj = new MailMessage();
                msj.From = new MailAddress(miMail);
                msj.ReplyToList.Add(txtEmail.Text);
                msj.To.Add(miMail);
                msj.Subject = txtName.Text;
                msj.Body = txtMensaje.Text;

                SmtpClient sc = new SmtpClient("smtp.live.com");
                sc.Port = 25;
                sc.Credentials = new NetworkCredential("Sucuenta@hotmail.com", "su Contraseña hotmail");

                sc.EnableSsl = true;
                sc.Send(msj);                

                MessageBox.Show("Correo Enviado");

                limpiarText();

            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
        }


        private void limpiarText()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtMensaje.Text = "";
        }
      
    }
}