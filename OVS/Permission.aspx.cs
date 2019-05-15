using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OVS
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da;
        DataSet ds;
        String status = "Not Yet";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cmd = new SqlCommand("select UName from VoterInfo", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    ddlUserName.Items.Add(dr[0].ToString());
                }
                con.Close();
            }


            con.Open();
            da = new SqlDataAdapter("select * from VoterInfo", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

            con.Open();
            da = new SqlDataAdapter("select * from VoterInfo", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
            con.Close();


        }

        protected void btnPermission_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into permission values('" + ddlUserName.Text + "','" + txtPassword.Text + "','" + status + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Permission granted')</script>");
            cmd.Dispose();
            con.Close();

            con.Open();
            da = new SqlDataAdapter("select * from permission", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
            con.Close();
        }
    }
}