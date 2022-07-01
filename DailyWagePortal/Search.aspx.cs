using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Search : System.Web.UI.Page
{
    AreaInfo AreaIn = new AreaInfo();
    AreaServices AreaSer = new AreaServices();
    JobInfo JobIn = new JobInfo();
    JobServices JobSer = new JobServices();
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
    protected void ImgBtnSearch_Click(object sender, ImageClickEventArgs e)
    {
        if (validation())
        {
            Session["areaId"] = int.Parse(ddlArea.SelectedValue.ToString());
            Session["jobId"] = int.Parse(ddlJob.SelectedValue.ToString());
            MultiView1.SetActiveView(View2);
        }
    }
    public void bindArea()
    {
        try
        {
            DataTable dt = new DataTable();
            AreaIn.district = ddlDistrict.SelectedValue;
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
    protected void imgBtnView_Command(object sender, CommandEventArgs e)
    {
        MultiView1.SetActiveView(View3);
        ViewState["empId"] = int.Parse(e.CommandArgument.ToString());
        DataTable dt = new DataTable();
        EmployIn.empId = int.Parse(ViewState["empId"].ToString());
        dt = EmploySer.selectEmployDetails(EmployIn);
        lblName.Text = dt.Rows[0]["name"].ToString();
        lblJob.Text = dt.Rows[0]["jobName"].ToString();
        lblAddress.Text = dt.Rows[0]["address"].ToString();
        lblArea.Text = dt.Rows[0]["area"].ToString();
        lblMobile.Text = dt.Rows[0]["mob"].ToString();
        lblEmail.Text = dt.Rows[0]["email"].ToString();
        lblWage.Text = dt.Rows[0]["wage"].ToString();
        lblHalfday.Text = dt.Rows[0]["halfDay"].ToString();
        lblMale.Text = dt.Rows[0]["empMale"].ToString();
        lblFemale.Text = dt.Rows[0]["empFemale"].ToString();
        lblUnit.Text = dt.Rows[0]["unit"].ToString();
    }
    protected void ImgBtnBack_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Search.aspx");
    }
    protected void ImgBtnCancel_Click(object sender, ImageClickEventArgs e)
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
        if (ddlArea.SelectedIndex == 0)
        {
            lblValidationArea.Visible = true;
            lblValidationArea.Text = "Please Choose Area";
            return false;
        }
        if (ddlJob.SelectedIndex == 0)
        {
            lblValidationJob.Visible = true;
            lblValidationJob.Text = "Please Choose Job";
            return false;
        }
        return true;
    }
    protected void ddlArea_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindJob();
        lblValidationArea.Visible = false;
    }
    protected void ddlJob_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblValidationJob.Visible = false;
    }
    protected void ImgBtnBack_Click1(object sender, ImageClickEventArgs e)
    {
        MultiView1.SetActiveView(View1);
        ddlDistrict.SelectedIndex = 0;
        ddlArea.Items.Clear();
        ddlJob.Items.Clear();
        ddlArea.Items.Insert(0, "---Select---");
        ddlJob.Items.Insert(0, "---Select---");

    }
    protected void ImgBtnCancel2_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindArea();
        lblValidationDist.Visible = false;
    }
}