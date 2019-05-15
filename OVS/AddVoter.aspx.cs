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
    public partial class WebForm5 : System.Web.UI.Page
    {
        VoterClass VClass = new VoterClass();
        BusinessLogicClass blc = new BusinessLogicClass();
        public int Voter_ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            gvVoter.DataSource = VClass.getAllVoters();


        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {

                bool result = blc.ManageVoters(0, txtFName.Text, txtMName.Text, txtLName.Text, txtParent.Text, txtGPName.Text, txtUName.Text,txtPass.Text ,Convert.ToDateTime(txtDOB.Text), 
                    Convert.ToInt32(txtAge.Text),txtCitizen.Text, txtEmail.Text, txtContact.Text, Zone.Text, District.Text,municipality.Text, ward.Text, txtTole.Text, 1);
                if (result == true)
                {
                    Response.Write("<script>alert('New Voter Added Successfully');</script>");
                    gvVoter.DataSource = VClass.getAllVoters();

                }
                else
                {
                    Response.Write("<script>alert('Error In Adding New Voters');</script>");
                    gvVoter.DataSource = VClass.getAllVoters();
                }
            }

            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            try
            {

                bool result = blc.ManageVoters(0, txtFName.Text, txtMName.Text, txtLName.Text, txtParent.Text, txtGPName.Text, txtUName.Text, txtPass.Text, Convert.ToDateTime(txtDOB.Text),
                    Convert.ToInt32(txtAge.Text), txtCitizen.Text, txtEmail.Text, txtContact.Text, Zone.Text, District.Text, municipality.Text, ward.Text, txtTole.Text, 2);
                if (result == true)
                {
                    Response.Write("<script>alert('New Voter Added Successfully');</script>");
                    gvVoter.DataSource = VClass.getAllVoters();

                }
                else
                {
                    Response.Write("<script>alert('Error In Adding New Voters');</script>");
                    gvVoter.DataSource = VClass.getAllVoters();
                }
            }

            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}