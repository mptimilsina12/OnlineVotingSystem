using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OVS
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into feedback values('" + txtName.Text + "','" + txtEmail.Text + "','" + txtSubject.Text + ",'" + txtComments.Text + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Thank You  for Feedback !!')</script>");
            cmd.Dispose();
            con.Close();
        }
    }
}