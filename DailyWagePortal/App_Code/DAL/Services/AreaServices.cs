using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for AreaServices
/// </summary>
public class AreaServices:DBConnection
{
	public AreaServices()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int insertArea(AreaInfo inf)
    {
        int count = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Area", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@district", inf.district);
            p = cmd.Parameters.AddWithValue("@area", inf.area);
            p = cmd.Parameters.AddWithValue("@pincode", inf.pincode);
            p = cmd.Parameters.AddWithValue("@operation", 'i');
            count = (int)cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
        }
        return count;
    }
    public int deleteArea(AreaInfo inf)
    {
        int count = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Area", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@areaId", inf.areaId);
            p = cmd.Parameters.AddWithValue("@operation", 'd');
            count = (int)cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
        }
        return count;
    }
    public DataTable selectAreaById(AreaInfo inf)
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Area", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@areaId", inf.areaId);
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
    public int updatetArea(AreaInfo inf)
    {
        int count = 0;
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Area", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@areaId", inf.areaId);
            p = cmd.Parameters.AddWithValue("@district", inf.district);
            p = cmd.Parameters.AddWithValue("@area", inf.area);
            p = cmd.Parameters.AddWithValue("@pincode", inf.pincode);
            p = cmd.Parameters.AddWithValue("@operation", 'u');
            count = (int)cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception e)
        {
        }
        return count;
    }
    public DataTable selectAreaOrderbyArea(AreaInfo inf)
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Area", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@district", inf.district);
            p = cmd.Parameters.AddWithValue("@operation", "sel");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
        }
        catch (Exception e)
        {
        }
        return dt;
    }
    public DataTable checkArea(AreaInfo inf)
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Area", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@area", inf.area);
            p=cmd.Parameters.AddWithValue("@pincode",inf.pincode);
            p = cmd.Parameters.AddWithValue("@operation","chk");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
        }
        catch (Exception e)
        {
        }
        return dt;
    }
    public DataTable selectAreaOrderbyDistrict()
    {
        DataTable dt = new DataTable();
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SP_Area", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter();
            p = cmd.Parameters.AddWithValue("@operation", "seldist");
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