using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;

/// <summary>
/// Summary description for BusinessClass
/// </summary>

[DataObject(true)]
public class BusinessClass
{
	public BusinessClass()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    #region Member
    [DataObjectMethod(DataObjectMethodType.Insert)]
    public int insert_member(String MemberID, Int32 TRN, String Fname, String Lname, String DOB, String AddL1, String AddL2, String City, Int32 PositionID, String UserID)
    {
        try
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("InsertMember", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            //Stored Procedure Parameters
            cmd.Parameters.AddWithValue("@MemberID", MemberID);
            cmd.Parameters.AddWithValue("@TRN", TRN);
            cmd.Parameters.AddWithValue("@FName", Fname);
            cmd.Parameters.AddWithValue("@LName", Lname);
            cmd.Parameters.AddWithValue("@DOB", DOB);
            cmd.Parameters.AddWithValue("@AddressLine1", AddL1);
            cmd.Parameters.AddWithValue("@AddressLine2", AddL2);
            cmd.Parameters.AddWithValue("@City", City);
            cmd.Parameters.AddWithValue("@PositionID", PositionID);
            cmd.Parameters.AddWithValue("@Userid", UserID);

            con.Open();
            int response = cmd.ExecuteNonQuery();
            con.Close();

            return response;
        }
        catch (Exception)
        {
            throw;
        }
    }

    
    [DataObjectMethod(DataObjectMethodType.Update)]
    public static int update_member(String MemberID, Int32 TRN, String Fname, String Lname, String DOB, String AddL1, String AddL2, String City, Int32 PositionID, String UserID)
    {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("UpdateMember", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            //Stored Procedure Parameters
            cmd.Parameters.AddWithValue("@MemberID", MemberID);
            cmd.Parameters.AddWithValue("@TRN", TRN);
            cmd.Parameters.AddWithValue("@FName", Fname);
            cmd.Parameters.AddWithValue("@LName", Lname);
            cmd.Parameters.AddWithValue("@DOB", DOB);
            cmd.Parameters.AddWithValue("@AddressLine1", AddL1);
            cmd.Parameters.AddWithValue("@AddressLine2", AddL2);
            cmd.Parameters.AddWithValue("@City", City);
            cmd.Parameters.AddWithValue("@PositionID", PositionID);
            cmd.Parameters.AddWithValue("@Userid", UserID);

            try
            {
                con.Open();
                int updateCount = cmd.ExecuteNonQuery();
                con.Close();
                return updateCount;
            }
            catch (Exception) { throw; }
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public DataSet select_all_Members()
    {
        try
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("SelectMembers", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }
        catch (Exception) { throw; }

    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public DataSet select_Member()
    {
        try
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("SelectMember", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }
        catch (Exception) { throw; }
    }

    public static string GetUserID(string username)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        SqlCommand cmd = new SqlCommand("SpGetUseridByUsername", con);

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Username", username);
        cmd.Parameters.Add("@MemberID", SqlDbType.Char,30);
        cmd.Parameters["@MemberID"].Direction = ParameterDirection.Output;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        return cmd.Parameters["@MemberID"].Value.ToString();
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public static DataSet SelectSupervisorPortfolio(string UserId)
    {
        try
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("SupervisorPortfolio", con);
            cmd.Parameters.Add("@UserID", UserId);
            con.Open();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }
        catch (Exception)
        {
            throw;
        }
    }
    #endregion

    #region Client
    [DataObjectMethod(DataObjectMethodType.Insert)]
    public int insert_client(Int32 TRN, String FName, String LName, String DOB, String AddressLine1, String AddressLine2, String City, Int32 PositionID, String SupervisorID)
    {
        try
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("InsertClient", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            //Stored Procedure Parameters
            cmd.Parameters.AddWithValue("@TRN", TRN);
            cmd.Parameters.AddWithValue("@FName", FName);
            cmd.Parameters.AddWithValue("@LName", LName);
            cmd.Parameters.AddWithValue("@DOB", Convert.ToDateTime(DOB));
            cmd.Parameters.AddWithValue("@AddressLine1", AddressLine1);
            cmd.Parameters.AddWithValue("@AddressLine2", AddressLine2);
            cmd.Parameters.AddWithValue("@City", City);
            cmd.Parameters.AddWithValue("@SupervisorID", SupervisorID);

            con.Open();
            int response = cmd.ExecuteNonQuery();
            con.Close();

            return response;
        }
        catch (Exception)
        {
            throw;
        }
    }


    [DataObjectMethod(DataObjectMethodType.Update)]
    public static int update_client(String ClientID, Int32 TRN, String FName, String LName, String DOB, String AddressLine1, String AddressLine2, String City, Int32 PositionID, String SupervisorID)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        SqlCommand cmd = new SqlCommand("UpdateClient", con);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;

        //Stored Procedure Parameters
        cmd.Parameters.AddWithValue("@ClientID", Convert.ToInt32(ClientID));
        cmd.Parameters.AddWithValue("@TRN", TRN);
        cmd.Parameters.AddWithValue("@FName", FName);
        cmd.Parameters.AddWithValue("@LName", LName);
        cmd.Parameters.AddWithValue("@DOB", Convert.ToDateTime(DOB));
        cmd.Parameters.AddWithValue("@AddressLine1", AddressLine1);
        cmd.Parameters.AddWithValue("@AddressLine2", AddressLine2);
        cmd.Parameters.AddWithValue("@City", City);
        cmd.Parameters.AddWithValue("@SupervisorID", SupervisorID);

        try
        {
            con.Open();
            int updateCount = cmd.ExecuteNonQuery();
            con.Close();
            return updateCount;
        }
        catch (Exception) { throw; }
    }

    [DataObjectMethod(DataObjectMethodType.Select)]
    public DataSet select_all_Clients()
    {
        try
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("SelectClients", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }
        catch (Exception) { throw; }

    }

    #endregion

    #region Register
    [DataObjectMethod(DataObjectMethodType.Insert)]
    public int insert_Record(Int32 Clientid, String SupervisoriD, String Status, Int32 AllowanceID)
    {
        try
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("InsertRegistrationRecord", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            //Stored Procedure Parameters
            cmd.Parameters.AddWithValue("@Clientid", Clientid );
            cmd.Parameters.AddWithValue("@SupervisoriD", SupervisoriD);
            cmd.Parameters.AddWithValue("@Status", Status);
            cmd.Parameters.AddWithValue("@AllowanceID", AllowanceID);

            con.Open();
            int response = cmd.ExecuteNonQuery();
            con.Close();

            return response;
        }
        catch (Exception)
        {
            throw;
        }
    }
    #endregion

    #region Manage User And Manage Roles
    [DataObjectMethod(DataObjectMethodType.Select)]
    public static DataSet UsersInRoles_SelectAll_Dataset()
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        SqlDataAdapter da = new SqlDataAdapter("aspnet_UsersInRoles_GetALL", con);
        DataSet ds = new DataSet();

        da.Fill(ds, "UsersInRoles");

        return ds;
    }
    #endregion

    #region Connection String
    private static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["CHConnectionString"].ConnectionString;
        }
    #endregion 
}