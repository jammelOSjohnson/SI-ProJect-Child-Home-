using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Drawing;
using System.Web.Security;

public partial class Admin_AddMember : System.Web.UI.Page
{
    BusinessClass bs = new BusinessClass();
    Member mem = new Member();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        bool IsSuccess = false;

        try
        {
            MembershipUser newUser = Membership.CreateUser(txtUsername.Text.Trim(), txtPasswordConfirm.Text.Trim());

            if (!Roles.RoleExists("Regular Member of Staff"))
            {
                Roles.CreateRole("Regular Member of Staff");
            }

            if (!Roles.RoleExists("Super Member of Staff"))
            {
                Roles.CreateRole("Super Member of Staff");
            }

            if (!Roles.RoleExists("Admin"))
            {
                Roles.CreateRole("Admin");
            }
            Roles.AddUserToRole(txtUsername.Text, ddlrole.SelectedItem.Text.Trim());

            mem.Userid = newUser.ProviderUserKey.ToString();
            populatemember();
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
            bs.insert_member(mem.MemberID,mem.Trn,mem.Fname,mem.Lname,mem.DOB,mem.AddL1,mem.AddL2,mem.City,mem.Position,mem.Userid);
            lblMessage.Text = "Member was created successfully. The Page Will Refresh In 5 Seconds";
            lblMessage.ForeColor = Color.Green;

            Response.AddHeader("REFRESH", "5;URL=AddMember.aspx");

        }
    }

    public void populatemember()
    {
        mem.MemberID = txtMemberID.Text.Trim(); mem.Trn = Convert.ToInt32(txtTrn.Text.Trim()); mem.Fname = txtFname.Text.Trim();mem.Lname = txtLname.Text.Trim();
        mem.DOB = txtDob.Text.Trim(); mem.AddL1 = txtaddL1.Text.Trim(); mem.AddL2 = txtaddL2.Text.Trim(); mem.City = txtCity.Text.Trim(); mem.Position = Convert.ToInt32(ddlPosition.SelectedValue.Trim());
    }
}