using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OVS
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void SendMail()
        {
            using (System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage())
            {
                message.From = new MailAddress(txtUser.ToString());
                message.From = new MailAddress(txtEmail.Text.ToString());
                message.To.Add(new MailAddress("mptimilsina12@outlook.com"));
                //message.CC.Add(new MailAddress("copy@domain.com"));  
                message.Subject = "Message via Online Voting from " + txtSubject.Text.ToString();
                message.IsBodyHtml = true;
                message.Body = "<html><body>" + txtMessage.Text.ToString() + "</body></html>";
                SmtpClient client = new SmtpClient();
                client.Host = "smtp.1and1.com";
                client.Send(message);
            }

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                SendMail();
            }
            catch (Exception) { }
        }
    }
}