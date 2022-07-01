using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewEmployees : System.Web.UI.Page
{
    LoginServices loginSer = new LoginServices();
    LoginInfo LoginIn = new LoginInfo();
    EmployInfo EmployIn = new EmployInfo();
    EmployServices EmploySer = new EmployServices();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                MultiView1.SetActiveView(View1);
            }
            catch
            {
            }
        }
    }
    protected void ImgBtnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Welcome.aspx");
    }
    protected void ImgBtnDelete_Command(object sender, CommandEventArgs e)
    {
        EmployIn.loginId = int.Parse(e.CommandArgument.ToString());
        LoginIn.loginId = int.Parse(e.CommandArgument.ToString());
        int i = 0;
        i = EmploySer.deleteEmployByLoginId(EmployIn);
        if (i > 0)
        {
            int j = 0;
            j = loginSer.deleteLogin(LoginIn);
            if (j > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Message", "alert('Employ Removed Successfully')", true);
                GridView1.DataBind();
            }
        }
        
    }
}