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
    public partial class WebForm1 : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
        SqlCommand cmd = new SqlCommand();
        string uname;
        string res;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblRemTime.Text = DateTime.Now.ToString("hh:mm:ss");

        }

        protected void Rb1_CheckedChanged(object sender, EventArgs e)
        {
            if (Rb1.Checked == true)
            {
                Rb2.Checked = false;
                Rb3.Checked = false;
                Rb4.Checked = false;
                Rb5.Checked = false;
                Rb6.Checked = false;
            }


        }

        protected void Rb3_CheckedChanged(object sender, EventArgs e)
        {
            if (Rb3.Checked == true)
            {
                Rb1.Checked = false;
                Rb2.Checked = false;
                Rb4.Checked = false;
                Rb5.Checked = false;
                Rb6.Checked = false;
            }
        }

        protected void Rb5_CheckedChanged(object sender, EventArgs e)
        {
            if (Rb5.Checked == true)
            {
                Rb1.Checked = false;
                Rb3.Checked = false;
                Rb4.Checked = false;
                Rb2.Checked = false;
                Rb6.Checked = false;
            }
        }

        protected void Rb2_CheckedChanged(object sender, EventArgs e)
        {

            if (Rb2.Checked == true)
            {
                Rb1.Checked = false;
                Rb3.Checked = false;
                Rb4.Checked = false;
                Rb5.Checked = false;
                Rb6.Checked = false;
            }
        }

        protected void Rb4_CheckedChanged(object sender, EventArgs e)
        {
            if (Rb4.Checked == true)
            {
                Rb1.Checked = false;
                Rb3.Checked = false;
                Rb2.Checked = false;
                Rb5.Checked = false;
                Rb6.Checked = false;
            }
        }

        protected void Rb6_CheckedChanged(object sender, EventArgs e)
        {
            if (Rb6.Checked == true)
            {
                Rb2.Checked = false;
                Rb3.Checked = false;
                Rb4.Checked = false;
                Rb5.Checked = false;
                Rb1.Checked = false;
            }
        }

        protected void BtnVote_Click(object sender, EventArgs e)
        {
            con.Open();

            if (Rb1.Checked)
                res = "CONGRESS";
            else if (Rb2.Checked)
                res = "UML";
            else if (Rb3.Checked)
                res = "Maoist";

            else if (Rb4.Checked)
                res = "Ra. Pra. Pa";
            else if (Rb5.Checked)
                res = "Forum Nepal";
            else if (Rb6.Checked)
                res = "Others";
            cmd = new SqlCommand("insert into vote values('" + uname + "','" + res + "')", con);
            cmd.ExecuteNonQuery();

            cmd = new SqlCommand("update permission set status='Voted' where uname='" + uname + "'", con);
            cmd.ExecuteNonQuery();

            cmd.Dispose();
            con.Close();

        }
    }
}