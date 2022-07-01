using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class EmployProfile : System.Web.UI.Page
{
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
    protected void ImgBtnEdit_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.SetActiveView(View2);
        int loginId=int.Parse(Session["loginId"].ToString());
        DataTable dt = new DataTable();
        dt=EmploySer.selectEmployProfile(loginId);
        txtUpdateMobile.Text = dt.Rows[0]["mob"].ToString();
        txtUpdateEmail.Text = dt.Rows[0]["email"].ToString();
        txtUpdateF.Text = dt.Rows[0]["empFemale"].ToString();
        txtUpdateM.Text = dt.Rows[0]["empMale"].ToString();
        ViewState["empId"] = dt.Rows[0]["empId"].ToString();
    }
    protected void ImgBtnCancel1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Welcome.aspx");
    }
    protected void ImgBtnUpdate_Click(object sender, ImageClickEventArgs e)
    {
        EmployIn.empId = int.Parse(ViewState["empId"].ToString());
        EmployIn.mob = long.Parse(txtUpdateMobile.Text.ToString());
        EmployIn.email = txtUpdateEmail.Text;
        EmployIn.empMale = int.Parse(txtUpdateM.Text);
        EmployIn.empFemale = int.Parse(txtUpdateF.Text);
        int val = 0;
        val = EmploySer.updateEmployDetails(EmployIn);
        if (val > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Message", "alert('Updated successfully')", true);
            DetailsView1.DataBind();
            MultiView1.SetActiveView(View1);

        }
       
    }
    protected void ImgBtnCancel2_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }
}