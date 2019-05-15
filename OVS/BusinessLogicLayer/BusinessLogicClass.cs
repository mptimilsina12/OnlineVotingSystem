using OVS.DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OVS.BusinessLogicLayer
{
    public class BusinessLogicClass
    {
        VoterClass VC = new VoterClass();
        CandidateClass CC = new CandidateClass();



        /// <returns></returns>
        public bool ManageVoters(int Voter_ID,
           string FName, string MName, string LName, string ParentName, string GPName, string UName, string Password, DateTime DOB, int Age,
           string Citizen, string Email, string ContactNumber, string Zone, string District, string Village, string Ward, string Tole, int Mode)
        {
            try
            {
                bool result = false;
                int rs = VC.ManageVoters(Voter_ID, FName, MName, LName,ParentName, GPName, UName,Password,
           DOB, Age, Citizen, Email, ContactNumber, Zone, District, Village, Ward, Tole, Mode);
                if (rs > 0)
                    result = true;
                else
                    result = false;
                return result;
            }
            catch (Exception)
            {

                throw;
            }
        }

        public bool ManageCandidates(int Candidate_ID,
         String FName,
         String LName,
         String ParentName,
         String Citizen,
         String ContactNumber,
         String Email,
         String PartyName,
         int Mode)
        {
            try
            {
                bool result = false;
                int rs = CC.ManageCandidates(Candidate_ID,
                    FName,
                    LName,
                    ParentName,
                    Citizen,
                    ContactNumber,
                    Email,
                    PartyName,
                    Mode);
                if (rs > 0)
                    result = true;
                else
                    result = false;
                return result;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }


    }
}