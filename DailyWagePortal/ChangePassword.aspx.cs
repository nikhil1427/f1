using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ChangePassword : System.Web.UI.Page
{
    LoginInfo LoginIn = new LoginInfo();
    LoginServices LoginSer = new LoginServices();
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
    protected void ImgBtnSubmit_Click(object sender, ImageClickEventArgs e)
    {
        LoginIn.password = txtOldPassword.Text;
        LoginIn.loginId = int.Parse(Session["LoginId"].ToString()); 
        DataTable dt = new DataTable();
        dt = LoginSer.checkPassword(LoginIn);
        if (dt.Rows.Count > 0)
        {
            int val;
            LoginIn.password = txtConfirmPassword.Text;
            val = LoginSer.updatePassword(LoginIn);
            if (val > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Message", "alert('Password Changed Successfully')", true);
            }
        }
        else
        {
            lblMsg.Visible = true;
            lblMsg.Text = "Old Password Does not Match";
        }

    }
    protected void ImgBtnCancel_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Welcome.aspx");
    }
}