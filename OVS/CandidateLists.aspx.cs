using OVS.DataAccessLayer;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OVS
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        CandidateClass cc = new CandidateClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvCandidateList.DataSource = cc.getAllCandidateLists();

        }

        protected void btnexport_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.AppendHeader("content-disposition", "attachment; VotersLists.xls");
            Response.ContentType = "application/excel";

            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            gvCandidateList.RenderControl(htw);
            Response.Write(sw.ToString());
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
        }
    }
}