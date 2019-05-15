using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace OVS.DataAccessLayer
{
    public class CandidateClass
    {
        SqlConnection conn = new SqlConnection(ConnectionClass.ConnectionString);
        public int ManageCandidates(int Candidate_ID,string FName, string LName, string ParentName, string Citizen, string ContactNumber, string Email, string PartyName, int mode)
        {
            try
            {
                
                SqlCommand cmd = new SqlCommand("SP_ManageCandidate", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Candidate_ID", Candidate_ID);
                cmd.Parameters.AddWithValue("@FName", FName);
                cmd.Parameters.AddWithValue("@LName", LName);
                cmd.Parameters.AddWithValue("@ParentName", ParentName);
                cmd.Parameters.AddWithValue("@Citizen", Citizen);
                cmd.Parameters.AddWithValue("@ContactNumber", ContactNumber);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@PartyName", PartyName);
                cmd.Parameters.AddWithValue("@mode", mode);
                conn.Open();
                int result = cmd.ExecuteNonQuery();
                conn.Close();
                return result;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { conn.Close(); }
        }
        public DataTable getAllCandidates()
        {
            try
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("select c.Candidate_ID, c.FName, c.LName, c.ParentName, c.Citizen, c.ContactNumber, c.Email,  c.PartyName from CandidateDetails ", conn);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                dt.Load(dr);
                conn.Close();
                return dt;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { conn.Close(); }
        }
        public DataTable getAllCandidateLists()
        {
            try
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("select Candidate_ID, FName, LName, ParentName, Citizen, ContactNumber, Email,  PartyName from CandidateDetails ", conn);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                dt.Load(dr);
                conn.Close();
                return dt;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { conn.Close(); }
        }
    }

}