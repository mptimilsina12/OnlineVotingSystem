using OVS.BusinessLogicLayer;
using OVS.DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OVS
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        BusinessLogicClass blc = new BusinessLogicClass();
        CandidateClass cc = new CandidateClass();
    

        protected void Page_Load(object sender, EventArgs e)
        {
            gvCandidateDetails.DataSource = cc.getAllCandidates();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {

                bool result = blc.ManageCandidates(0, txtFName.Text, txtLName.Text, txtParent.Text, txtCitizen.Text, txtContact.Text, txtEmail.Text,
                    cmbParty.Text, 1);
                if (result == true)
                {
                    Response.Write("<script>alert('New Candidate Added Successfully');</script>");
                    gvCandidateDetails.DataSource = cc.getAllCandidates();

                }
                else
                {
                    Response.Write("<script>alert('Error In Adding  Candidate Voters');</script>");
                    gvCandidateDetails.DataSource = cc.getAllCandidates();
                }
            }

            catch (Exception ex)
            {

                throw ex;
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            try
            {

                bool result = blc.ManageCandidates(0, txtFName.Text, txtLName.Text, txtParent.Text, txtCitizen.Text, txtContact.Text, txtEmail.Text,
                    cmbParty.Text, 2);
                if (result == true)
                {
                    Response.Write("<script>alert('Existing Candidate Update Successfully');</script>");
                    gvCandidateDetails.DataSource = cc.getAllCandidates();

                }
                else
                {
                    Response.Write("<script>alert('Error In  Updating Candidate.');</script>");
                    gvCandidateDetails.DataSource = cc.getAllCandidates();
                }
            }

            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {

                bool result = blc.ManageCandidates(0, txtFName.Text, txtLName.Text, txtParent.Text, txtCitizen.Text, txtContact.Text, txtEmail.Text,
                    cmbParty.Text, 2);
                if (result == true)
                {
                    Response.Write("<script>alert('Existing Candidate Deleted Successfully');</script>");
                    gvCandidateDetails.DataSource = cc.getAllCandidates();

                }
                else
                {
                    Response.Write("<script>alert('Error In Deleting Existing Candidate ');</script>");
                    gvCandidateDetails.DataSource = cc.getAllCandidates();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

    }


}
