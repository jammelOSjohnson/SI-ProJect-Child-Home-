using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddNewRoles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PopulateGridview();
        }
    }

    private void PopulateGridview()
    {
        //SelectList sl = new SelectList(Roles.GetAllRoles().ToList(), "Id", "Name");
        gvRole.DataSource = Roles.GetAllRoles();
        gvRole.DataBind();

        ddlRoles.DataSource = Roles.GetAllRoles();
        ddlRoles.DataBind();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (!Roles.RoleExists(txtRole.Text.Trim()))
            {
                Roles.CreateRole(txtRole.Text.Trim());
                PopulateGridview();
                lblMessage.Text = txtRole.Text.Trim() + " role added successfully.";
                txtRole.Text = "";
            }
            else
            {
                lblMessage.Text = "Role Already Exists! Try Again";
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    protected void btnDeleteUser_Click(object sender, EventArgs e)
    {
        try
        {
            Roles.DeleteRole(ddlRoles.SelectedItem.Text);
            PopulateGridview();
            lblMessage2.Text = "Role Deleted Successfully.";

        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
}