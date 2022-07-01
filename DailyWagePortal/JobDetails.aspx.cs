using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class JobDetails : System.Web.UI.Page
{
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
    protected void lnkAddJob_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void ImgBtnSubmit_Click(object sender, ImageClickEventArgs e)
    {
        JobIn.jobName = txtJobName.Text;
        JobIn.wage = int.Parse(txtWage.Text.ToString());
        JobIn.halfDay = int.Parse(txtHalfDay.Text.ToString());
        JobIn.unit = txtUnit.Text;
        DataTable dt = new DataTable();
        dt = JobSer.checkJob(JobIn);
        if (dt.Rows.Count > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Message", "alert('Job Already Exist')", true);
        }
        else
        {
            int val = 0;
            val = JobSer.insertJob(JobIn);
            if (val > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Message", "alert('Inserted successfully')", true);
                clear();
            }
        }
    }
        public void clear()
    {
        txtJobName.Text = "";
        txtWage.Text = "";
        txtHalfDay.Text="";
        txtUnit.Text="";
    }
       
    protected void lnkViewJob_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View3);
    }

    protected void imgBtnEdit_Command(object sender, CommandEventArgs e)
    {
        MultiView1.SetActiveView(View4);
        ViewState["jobId"] = int.Parse(e.CommandArgument.ToString());
        DataTable dt = new DataTable();
        JobIn.jobId = int.Parse(ViewState["jobId"].ToString());
        dt = JobSer.selectJobByJobId(JobIn);
        txtUpdateJob.Text = dt.Rows[0]["jobName"].ToString();
        txtUpdateWage.Text = dt.Rows[0]["wage"].ToString();
        txtUpdateHalfday.Text = dt.Rows[0]["halfDay"].ToString();
        txtUpdateUnit.Text = dt.Rows[0]["unit"].ToString();
    }
    protected void ImgBtnCancel_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }
    protected void ImgBtnUpdate_Click(object sender, ImageClickEventArgs e)
    {
        JobIn.jobName = txtUpdateJob.Text;
        JobIn.wage = int.Parse(txtUpdateWage.Text.ToString());
        JobIn.halfDay = int.Parse(txtUpdateHalfday.Text.ToString());
        JobIn.unit = txtUpdateUnit.Text;
        JobIn.jobId = int.Parse(ViewState["jobId"].ToString());
        int val = 0;
        val = JobSer.updateJob(JobIn);
        if (val > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Message", "alert('Updated successfully')", true);
            GridView1.DataBind();
            MultiView1.SetActiveView(View3);
        }
    }
    protected void ImgBtnCancelUpdate_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.SetActiveView(View3);
    }
    protected void ImgBtnCancelView_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }
}