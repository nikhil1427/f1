using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for EmployServices
/// </summary>
public class EmployServices : DBConnection
{
    public EmployServices()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public int insertEmploy(EmployInfo inf)
    {
        int count = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Employ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@loginId", inf.loginId);
            p = cmd.Parameters.AddWithValue("@name", inf.name);
            p = cmd.Parameters.AddWithValue("@dob", inf.dob);
            p = cmd.Parameters.AddWithValue("@gender", inf.gender);
            p = cmd.Parameters.AddWithValue("@address", inf.address);
            p = cmd.Parameters.AddWithValue("@pincode", inf.pincode);
            p = cmd.Parameters.AddWithValue("@mob", inf.mob);
            p = cmd.Parameters.AddWithValue("@email", inf.email);
            p = cmd.Parameters.AddWithValue("@areaId", inf.areaId);
            p = cmd.Parameters.AddWithValue("@jobId", inf.jobId);
            p = cmd.Parameters.AddWithValue("@empMale", inf.empMale);
            p = cmd.Parameters.AddWithValue("@empFemale", inf.empFemale);
            p = cmd.Parameters.AddWithValue("@operation", 'i');
            count = (int)cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        { 
        }
        return count;
    }
    public int deleteEmploy(EmployInfo inf)
    {
        int count = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Employ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@empId", inf.empId);
            p = cmd.Parameters.AddWithValue("@operation", 'd');
            count = (int)cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
        }
        return count;
    }
    public DataTable selectEmploy(EmployInfo inf)
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Employ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@operation", 's');
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
        }
        catch (Exception e)
        {
        }
        return dt;
    }
    public int updateEmploy(EmployInfo inf)
    {
        int count = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Employ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@empId", inf.empId);
            p = cmd.Parameters.AddWithValue("@loginId", inf.loginId);
            p = cmd.Parameters.AddWithValue("@name", inf.name);
            p = cmd.Parameters.AddWithValue("@dob", inf.dob);
            p = cmd.Parameters.AddWithValue("@gender", inf.gender);
            p = cmd.Parameters.AddWithValue("@address", inf.address);
            p = cmd.Parameters.AddWithValue("@pincode", inf.pincode);
            p = cmd.Parameters.AddWithValue("@mob", inf.mob);
            p = cmd.Parameters.AddWithValue("@email", inf.email);
            p = cmd.Parameters.AddWithValue("@areaId", inf.areaId);
            p = cmd.Parameters.AddWithValue("@jobId", inf.jobId);
            p = cmd.Parameters.AddWithValue("@empMale", inf.empMale);
            p = cmd.Parameters.AddWithValue("@empFemale", inf.empFemale);
            p = cmd.Parameters.AddWithValue("@operation", 'u');
            count = (int)cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
        }
        return count;
    }
    public DataTable selectEmployByAreaAndJob(int areaId,int jobId)
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Employ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@areaId", areaId);
            p = cmd.Parameters.AddWithValue("@jobId", jobId);
            p = cmd.Parameters.AddWithValue("@operation", "SER");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
        }
        catch (Exception e)
        {
        }
        return dt;
    }
    public DataTable selectEmployDetails(EmployInfo inf)
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Employ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@empId", inf.empId);
            p = cmd.Parameters.AddWithValue("@operation", "DET");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
        }
        catch (Exception e)
        {
        }
        return dt;
    }
    public DataTable selectEmployProfile(int loginId)
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Employ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@loginId",loginId);
            p = cmd.Parameters.AddWithValue("@operation", "PRO");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
        }
        catch (Exception e)
        {
        }
        return dt;
    }
    public int updateEmployDetails(EmployInfo inf)
    {
        int count = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Employ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@empId", inf.empId);
            p = cmd.Parameters.AddWithValue("@loginId", inf.loginId);
            p = cmd.Parameters.AddWithValue("@mob", inf.mob);
            p = cmd.Parameters.AddWithValue("@email", inf.email);
            p = cmd.Parameters.AddWithValue("@empMale", inf.empMale);
            p = cmd.Parameters.AddWithValue("@empFemale", inf.empFemale);
            p = cmd.Parameters.AddWithValue("@operation", "UD");
            count = (int)cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
        }
        return count;
    }
    public DataTable selectAllEmploy()
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Employ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@operation", "all");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
        }
        catch (Exception e)
        {
        }
        return dt;
    }
    public int deleteEmployByLoginId(EmployInfo inf)
    {
        int count = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Employ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@loginId", inf.loginId);
            p = cmd.Parameters.AddWithValue("@operation", "del");
            count = (int)cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
        }
        return count;
    }
}