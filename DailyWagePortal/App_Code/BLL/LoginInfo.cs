using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for LoginInfo
/// </summary>
public class LoginInfo
{
	public LoginInfo()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int loginId { get; set; }
    public string userName { get; set; }
    public string password { get; set; }
    public string userType { get; set; }
    public string userStatus { get; set; }
}