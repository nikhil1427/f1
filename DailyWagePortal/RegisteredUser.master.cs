using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegisteredUser : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string UserType = Session["userType"].ToString();
        if (UserType == "Admin")
        {
            MultiView1.SetActiveView(View1);
        }
        else if (UserType == "Employ")
        {
            MultiView1.SetActiveView(View2);
        }

    }
}
