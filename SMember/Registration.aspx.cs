using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SMember_Registration : System.Web.UI.Page
{
    BusinessClass bs = new BusinessClass();
    UserInfo UI = new UserInfo();
    bool IsSuccess;

    protected void Page_Load(object sender, EventArgs e)
    {
        Popoulateddl();
    }

    private void Popoulateddl()
    {
        string username = (string)Session["UserName-ID"];
        string UserID;

        UserID = BusinessClass.GetUserID(username);
        UI.Userid = UserID.Trim();

        Session["UserID"] = UserID;

        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        try
        {
            bs.insert_Record(Convert.ToInt32(ddlChild.SelectedValue),UI.Userid,ddlStatus.SelectedItem.Text.Trim(), Convert.ToInt32(ddlAllowance.SelectedValue));
            IsSuccess = true;
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
            lblMessage.ForeColor = Color.Red;
            return;
        }

        if (IsSuccess)
        {
            lblMessage.Text = "Child was registered successfully. The Page Will Refresh In 5 Seconds";
            lblMessage.ForeColor = Color.Green;

            Response.AddHeader("REFRESH", "5;URL=Registration.aspx");

        }
    }

   
}