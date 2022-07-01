using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    LoginInfo loginIn = new LoginInfo();
    LoginServices loginSer = new LoginServices();
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
    protected void imgBtnLogin_Click(object sender, ImageClickEventArgs e)
    {
        loginIn.userName = txtUsername.Text;
        loginIn.password = txtPassword.Text;
        DataTable dt = new DataTable();
        dt = loginSer.Check(loginIn);
        if (dt.Rows.Count != 0)
        {
            Session["loginId"] = dt.Rows[0]["loginId"].ToString();
            Session["userName"] = dt.Rows[0]["userName"].ToString();
            Session["password"] = dt.Rows[0]["password"].ToString();
            string userType = dt.Rows[0]["userType"].ToString();
            Session["userType"] = userType;
            if (userType == "Admin" || userType == "Employ")
            {
                Response.Redirect("Welcome.aspx");
            }
            
        }
        else
        {
            lblMessage.Visible = true;
            lblMessage.Text = "Invalid Username or Password";
        }
        
    }
}