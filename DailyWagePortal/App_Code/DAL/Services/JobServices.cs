using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for JobServices
/// </summary>
public class JobServices:DBConnection
{
	public JobServices()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int insertJob(JobInfo inf)
    {
        int count = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Job", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@jobName", inf.jobName);
            p = cmd.Parameters.AddWithValue("@wage", inf.wage);
            p = cmd.Parameters.AddWithValue("@halfDay", inf.halfDay);
            p = cmd.Parameters.AddWithValue("@unit", inf.unit);
            p = cmd.Parameters.AddWithValue("@operation", 'i');
            count = (int)cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
        }
        return count;
    }
    public int deleteJob(JobInfo inf)
    {
        int count = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Job", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@jobId", inf.jobId);
            p = cmd.Parameters.AddWithValue("@operation", 'd');
            count = (int)cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
        }
        return count;
    }
    public DataTable selectJobByJobId(JobInfo inf)
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Job", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@jobId", inf.jobId);
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
    public int updateJob(JobInfo inf)
    {
        int count = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Job", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@jobId", inf.jobId);
            p = cmd.Parameters.AddWithValue("@jobName", inf.jobName);
            p = cmd.Parameters.AddWithValue("@wage", inf.wage);
            p = cmd.Parameters.AddWithValue("@halfDay", inf.halfDay);
            p = cmd.Parameters.AddWithValue("@unit", inf.unit);
            p = cmd.Parameters.AddWithValue("@operation", 'u');
            count = (int)cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
        }
        return count;
    }
    public DataTable selectJobOrderByJob()
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Job",con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@operation","sel");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
        }
        catch (Exception e)
        {
        }
        return dt;
    }
    public DataTable checkJob(JobInfo inf)
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Job", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@jobName", inf.jobName);
            p = cmd.Parameters.AddWithValue("@operation", "chk");
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