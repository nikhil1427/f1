using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Registration : System.Web.UI.Page
{
    EmployInfo EmployIn = new EmployInfo();
    EmployServices EmploySer = new EmployServices();
    LoginInfo LoginIn = new LoginInfo();
    LoginServices LoginSer = new LoginServices();
    AreaInfo AreaIn = new AreaInfo();
    AreaServices AreaSer = new AreaServices();
    JobInfo JobIn = new JobInfo();
    JobServices JobSer = new JobServices();
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
    
    protected void lbtnCheck_Click(object sender, EventArgs e)
    {
        if (txtUserName.Text == "")
        {
            lblMsg.Text = "Enter a Username";
        }
        else
        {
            DataTable dt = new DataTable();
            LoginIn.userName = txtUserName.Text;
            dt = LoginSer.checkUserName(LoginIn);
            if (dt.Rows.Count > 0)
            {
                lblAvail.Visible = false;
                lblMsg.Visible = true;
                lblMsg.Text = "Username Already Exist..!!";
            }
            else
            {
                lblMsg.Visible = false;
                lblAvail.Visible = true;
                lblAvail.Text = "Username Available";
            }
        }

    }
    public void bindArea()
    {
        try
        {
            AreaIn.district = ddlDistrict.SelectedValue.ToString();
            DataTable dt = new DataTable();
            dt = AreaSer.selectAreaOrderbyArea(AreaIn);
            ddlArea.Items.Clear();
            ddlArea.Items.Insert(0, "---Select---");
            ddlArea.DataSource = dt;
            ddlArea.DataTextField = "area";
            ddlArea.DataValueField = "areaId";
            ddlArea.DataBind();
        }
        catch
        {
        }
    }
    public void bindJob()
    {
        try
        {
            DataTable dt = new DataTable();
            dt = JobSer.selectJobOrderByJob();
            ddlJob.Items.Clear();
            ddlJob.Items.Insert(0, "---Select---");
            ddlJob.DataSource = dt;
            ddlJob.DataTextField = "jobName";
            ddlJob.DataValueField = "jobId";
            ddlJob.DataBind();
        }
        catch
        {
        }
    }
    protected void ImgBtnNext1_Click(object sender, ImageClickEventArgs e)
    {
        DataTable dt = new DataTable();
        LoginIn.userName = txtUserName.Text;
        ViewState["password"]=txtConfirmPassword.Text;
        dt = LoginSer.checkUserName(LoginIn);
        if (dt.Rows.Count > 0)
        {
            lblMsg.Text = "Username Already Exist..!!";
        }
        else
        {
            MultiView1.SetActiveView(View2);
        }

    }
    protected void ImgBtnNext2_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.SetActiveView(View3);
        bindJob();
    }
    protected void ImgBtnSubmit_Click(object sender, ImageClickEventArgs e)
    {
        if (validation())
        {
            int i = 0;
            int l = 0;
            LoginIn.userName = txtUserName.Text;
            LoginIn.password = ViewState["password"].ToString();
            LoginIn.userType = "Employ";
            LoginIn.userStatus = "Active";
            i = LoginSer.insertLogin(LoginIn);
            if (i > 0)
            {
                l = LoginSer.Maximum();
                ViewState["loginId"] = l;
            }
            EmployIn.loginId = int.Parse(ViewState["loginId"].ToString());
            EmployIn.name = txtName.Text;
            EmployIn.dob = bdpDob.SelectedDate;
            EmployIn.gender = rblGender.SelectedValue;
            EmployIn.address = txtAddress.Text;
            EmployIn.pincode = long.Parse(txtPincode.Text);
            EmployIn.mob = long.Parse(txtMob.Text);
            EmployIn.email = txtEmail.Text;
            EmployIn.areaId = int.Parse(ddlArea.SelectedValue.ToString());
            EmployIn.jobId = int.Parse(ddlJob.SelectedValue.ToString());
            EmployIn.empMale = int.Parse(txtMaleNo.Text);
            EmployIn.empFemale = int.Parse(txtFemaleNo.Text);
            int val = 0;
            val = EmploySer.insertEmploy(EmployIn);
            if (val > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Mssage", "alert('Registered Successfully'); window.location='Login.aspx';", true);
            }
        }
    }
    public void clear()
    {
        txtUserName.Text = "";
        txtPassword.Text = "";
        txtConfirmPassword.Text = "";
        txtName.Text = "";
        bdpDob.SelectedValue = "";
        rblGender.SelectedIndex = 0;
        txtAddress.Text = "";
        txtPincode.Text = "";
        txtEmail.Text = "";
        txtMob.Text = "";
        ddlJob.SelectedIndex = 0;
        ddlArea.SelectedIndex = 0;
        txtMaleNo.Text = "0";
        txtFemaleNo.Text = "0";
    }
    protected void ImgBtnCancel1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void ImgBtnCancel3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void ImgBtnCancel2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    public bool validation()
    {
        if (ddlDistrict.SelectedIndex == 0)
        {
            lblValidationDist.Visible = true;
            lblValidationDist.Text = "Please Choose District";
            return false;
        }
        if (ddlJob.SelectedIndex == 0)
        {
            lblValidationJob.Visible = true;
            lblValidationJob.Text = "Please Choose Job";
            return false;
        }
        if (ddlArea.SelectedIndex == 0)
        {
            lblValidationArea.Visible = true;
            lblValidationArea.Text = "Please Choose Area";
            return false;
        }
        return true;
    }
    protected void ddlJob_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblValidationJob.Visible = false;
    }
    protected void ddlArea_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblValidationArea.Visible = false;
    }
    protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblValidationDist.Visible = false;
        bindArea();
    }
}