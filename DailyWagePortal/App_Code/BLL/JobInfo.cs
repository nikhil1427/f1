using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for JobInfo
/// </summary>
public class JobInfo
{
	public JobInfo()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int jobId { get; set; }
    public string jobName { get; set; }
    public long wage { get; set; }
    public long halfDay { get; set; }
    public string unit { get; set; }
}