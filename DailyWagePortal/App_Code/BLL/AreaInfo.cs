using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for AreaInfo
/// </summary>
public class AreaInfo
{
	public AreaInfo()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int areaId { get; set; }
    public string district { get; set; }
    public string area { get; set; }
    public long pincode { get; set; }
}