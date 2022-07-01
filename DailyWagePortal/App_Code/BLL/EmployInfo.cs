using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EmployInfo
/// </summary>
public class EmployInfo
{
	public EmployInfo()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int empId { get; set; }
    public int loginId { get; set; }
    public int areaId { get; set; }
    public int jobId { get; set; }
    public string name { get; set; }
    public DateTime dob { get; set; }
    public string gender { get; set; }
    public string address { get; set; }
    public long pincode { get; set; }
    public long mob { get; set; }
    public string email { get; set; }
    public long empMale { get; set; }
    public long empFemale { get; set; }
}