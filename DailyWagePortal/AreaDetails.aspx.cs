using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AreaDetails : System.Web.UI.Page
{
    AreaInfo AreaIn = new AreaInfo();
    AreaServices AreaSer = new AreaServices();
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

    protected void lnkAdd_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
    }
    protected void lnkView_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View3);
    }
    protected void ImgBtnSubmit_Click(object sender, ImageClickEventArgs e)
    {
        if (validation())
        {
            AreaIn.district = ddlDistrict.SelectedValue.ToString();
            AreaIn.area = txtArea.Text;
            AreaIn.pincode = long.Parse(txtPincode.Text.ToString());
            DataTable dt = new DataTable();
            dt = AreaSer.checkArea(AreaIn);
            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Message", "alert('Area Already Exist')", true);
            }
            else
            {
                int val = 0;
                val = AreaSer.insertArea(AreaIn);
                if (val > 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Message", "alert('Inserted successfully')", true);
                    clear();
                }
            }
        }
    }
    public void clear()
    {
        txtArea.Text = "";
        txtPincode.Text = "";
        ddlDistrict.SelectedIndex = 0;
    }

    protected void ImgBtnCancel1_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }
    protected void ImgBtnCancelUpdate_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.SetActiveView(View3);
    }
    protected void ImgBtnCancelView_Click(object sender, ImageClickEventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }

    protected void imgBtnEdit_Command(object sender, CommandEventArgs e)
    {
        MultiView1.SetActiveView(View4);
        ViewState["areaId"] = int.Parse(e.CommandArgument.ToString());
        DataTable dt = new DataTable();
        AreaIn.areaId = int.Parse(ViewState["areaId"].ToString());
        dt = AreaSer.selectAreaById(AreaIn);
        txtUpdateArea.Text = dt.Rows[0]["area"].ToString();
        txtUpdatePincode.Text = dt.Rows[0]["pincode"].ToString();
    }
    protected void ImgBtnUpdate_Click(object sender, ImageClickEventArgs e)
    {
        AreaIn.areaId = (int)ViewState["areaId"];
        AreaIn.area = txtUpdateArea.Text;
        AreaIn.pincode = long.Parse(txtUpdatePincode.Text);
        int val = 0;
        val = AreaSer.updatetArea(AreaIn);
        if (val > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Alert Message", "alert('Updated successfully')", true);
            GridView1.DataBind();
            MultiView1.SetActiveView(View3);
        }
    }

    protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblValidationDist.Visible = false;
    }
    public bool validation()
    {
        if (ddlDistrict.SelectedIndex == 0)
        {
            lblValidationDist.Visible = true;
            lblValidationDist.Text = "Please Choose District";
            return false;
        }
        return true;
    }
}