using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace OVS
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"]);
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_SelectionChanged(object sender, EventArgs e)
        {
            txtStartDate.Text = Convert.ToDateTime(calStart.SelectedDate, CultureInfo.GetCultureInfo("en-us")).ToString("mm/dd/yyyy");
            calStart.Visible = false;



        }

        protected void calEnd_SelectionChanged(object sender, EventArgs e)
        {
            txtEndDate.Text = Convert.ToDateTime(calEnd.SelectedDate, CultureInfo.GetCultureInfo("en-us")).ToString("mm/dd/yyyy");
            calEnd.Visible = false;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select * from date", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                //con.Open();
                //SqlCommand cmd = new SqlCommand();
                dr.Close();
                cmd.CommandText = "update date set StartDate='" + txtStartDate.Text + "',EndDate=' " + txtEndDate.Text + " ' ";
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Updated SucussFully')</script>");
                //con.Close();
                cmd.Dispose();
                dr.Close();
            }
            else
            {
                try
                {
                    dr.Close();

                    cmd = new SqlCommand("insert into date values('" + txtStartDate.Text + "','" + txtEndDate.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Updated SucussFully')</script>");
                    cmd.Dispose();
                }
                catch
                {


                }

            }
            con.Close();

        }
    }
}