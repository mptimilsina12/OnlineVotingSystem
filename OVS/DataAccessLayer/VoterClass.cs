using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace OVS.DataAccessLayer
{
    public class VoterClass
    {
        SqlConnection conn = new SqlConnection(ConnectionClass.ConnectionString);


        public int ManageVoters(int Voter_ID, string FName, string MName, string LName, string ParentName, string GPName, string UName, string Password, DateTime DOB, int Age,
            string Citizen, string ContactNumber, string Email, string Zone, string District, string Municipality, string Ward, string Tole, int Mode)
        {
            try
            {
                
                SqlCommand cmd = new SqlCommand("SP_ManageVoter", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Voter_ID", Voter_ID);
                cmd.Parameters.AddWithValue("@FName", FName);
                cmd.Parameters.AddWithValue("@MName", MName);
                cmd.Parameters.AddWithValue("@LName", LName);
                cmd.Parameters.AddWithValue("@ParentName", ParentName);
                cmd.Parameters.AddWithValue("@GPName", GPName);
                cmd.Parameters.AddWithValue("@UName", UName);
                cmd.Parameters.AddWithValue("@Password", Password);
                cmd.Parameters.AddWithValue("@DOB", DOB);
                cmd.Parameters.AddWithValue("@Age", Age);
                cmd.Parameters.AddWithValue("@Citizen", Citizen);
                cmd.Parameters.AddWithValue("@ContactNumber", ContactNumber);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Zone", Zone);
                cmd.Parameters.AddWithValue("@District", District);
                cmd.Parameters.AddWithValue("@Village", Municipality);
                cmd.Parameters.AddWithValue("@Ward", Ward);
                cmd.Parameters.AddWithValue("@Tole", Tole);
                cmd.Parameters.AddWithValue("@Mode", Mode);
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
        public DataTable getAllVoters()
        {
            try
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("select Voter_ID, FName, MName, LName,ParentName, GPName,UName,Password,DOB,Age,Citizen,ContactNumber,Email,Zone,District,Village,Ward,Tole from VoterInfo ", conn);
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
        public DataTable getAllVotersLists()
        {
            try
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("select Voter_ID, FName, MName, LName,ParentName, GPName, DOB, Age, Citizen, ContactNumber, Email, Zone, District, Village, Ward, Tole from VoterInfo;", conn);
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