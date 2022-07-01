using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for LoginServices
/// </summary>
public class LoginServices:DBConnection
{
	public LoginServices()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int insertLogin(LoginInfo inf)
    {
        int count = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@userName", inf.userName);
            p = cmd.Parameters.AddWithValue("@password", inf.password);
            p = cmd.Parameters.AddWithValue("@userType", inf.userType);
            p = cmd.Parameters.AddWithValue("@userStatus", inf.userStatus);
            p = cmd.Parameters.AddWithValue("@operation", 'i');
            count = (int)cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
        }
        return count;
    }
    public int deleteLogin(LoginInfo inf)
    {
        int count = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@loginId", inf.loginId);
            p = cmd.Parameters.AddWithValue("@operation", 'd');
            count = (int)cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
        }
        return count;
    }
    public DataTable selectLogin()
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@operation", 's');
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
        }
        catch(Exception e)
        {
        }
        return dt;
    }
    public int updateLogin(LoginInfo inf)
    {
        int count = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@loginId", inf.loginId);
            p = cmd.Parameters.AddWithValue("@userName", inf.userName);
            p = cmd.Parameters.AddWithValue("@password", inf.password);
            p = cmd.Parameters.AddWithValue("@userType", inf.userType);
            p = cmd.Parameters.AddWithValue("@userStatus", inf.userStatus);
            p = cmd.Parameters.AddWithValue("@operation", 'u');
            count = (int)cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
        }
        return count;
    }
    public int Maximum()
    {
        int i = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@operation", 'M');
            i = (int)cmd.ExecuteScalar();
            con.Close();
        }
        catch (Exception e)
        {
        }
        return i;
    }
    public int updatePassword(LoginInfo inf)
    {
        int id = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@loginId", inf.loginId);
            p = cmd.Parameters.AddWithValue("@password", inf.password);
            p = cmd.Parameters.AddWithValue("@operation","UP");
            id=cmd.ExecuteNonQuery();
            con.Close();
        }
        catch(Exception e)
        {
        }
        return id;
    }
    public DataTable checkPassword(LoginInfo inf)
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@loginId", inf.loginId);
            p = cmd.Parameters.AddWithValue("@password", inf.password);
            p = cmd.Parameters.AddWithValue("@operation", "CP");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
        }
        catch (Exception e)
        {
        }
        return dt;
    }
    public DataTable checkUserName(LoginInfo inf)
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@userName", inf.userName);
            p = cmd.Parameters.AddWithValue("@operation", "CUN");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
        }
        catch (Exception e)
        {
        }
        return dt;
    }
    public DataTable Check(LoginInfo inf)
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Login", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@userName", inf.userName);
            p = cmd.Parameters.AddWithValue("@password", inf.password);
            p = cmd.Parameters.AddWithValue("@operation", "CHK");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
        }
        catch (Exception e)
        {
        }
        return dt;
    }
}