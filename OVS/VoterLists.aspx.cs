using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;
using OVS.DataAccessLayer;
using System.IO;
using System.Configuration;

namespace OVS
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        VoterClass vc = new VoterClass();
        protected void Page_Load(object sender, EventArgs e)
        {

            gvVoterList.DataSource = vc.getAllVotersLists();

        }

        protected void btnexport_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.AppendHeader("content-disposition", "attachment; VotersLists.xls");
            Response.ContentType = "application/excel";

            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            gvVoterList.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
        }


        //private void ClearControls(Control control)
        //{
        //    for (int i = control.Controls.Count - 1; i >= 0; i--)
        //    {
        //        ClearControls(control.Controls[i]);
        //    }
        //    if (!(control is TableCell))
        //    {
        //        if (control.GetType().GetProperty("SelectedItem") != null)
        //        {
        //            LiteralControl literal = new LiteralControl();
        //            control.Parent.Controls.Add(literal);
        //            try
        //            {
        //                literal.Text = (string)control.GetType().GetProperty("SelectedItem").GetValue(control, null);
        //            }
        //            catch
        //            {
        //            }
        //            control.Parent.Controls.Remove(control);
        //        }
        //        else
        //        if (control.GetType().GetProperty("Text") != null)
        //        {
        //            LiteralControl literal = new LiteralControl();
        //            control.Parent.Controls.Add(literal);
        //            literal.Text = (string)control.GetType().GetProperty("Text").GetValue(control, null);
        //            control.Parent.Controls.Remove(control);
        //        }
        //    }
        //    return;
        //}
    }
}