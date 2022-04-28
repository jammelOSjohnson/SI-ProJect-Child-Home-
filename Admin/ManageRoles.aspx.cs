using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ManageRoles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PopulateControls();
        }
    }

    private void PopulateControls()
    {
        DataSet ds = new DataSet();
        ds = BusinessClass.UsersInRoles_SelectAll_Dataset();

        //Populate Controls to view all User Roles
        gvUsersInRoles.DataSource = ds;
        gvUsersInRoles.DataBind();

        //Populate Controls for Adding a User to a Role
        ddlAddUser.DataSource = Membership.GetAllUsers();
        ddlAddUser.DataBind();
        ddlAddRole.DataSource = Roles.GetAllRoles();
        ddlAddRole.DataBind();

        //Populate Controls for Removing a User from a Role
        ddlRemoveUser.DataSource = Membership.GetAllUsers();
        ddlRemoveUser.DataBind();
        ddlRemoveRole.DataSource = Roles.GetAllRoles();
        ddlRemoveRole.DataBind();

        //lbUsersInRoles.DataSource = BusinessClass.UsersInRoles_SelectAll_Dataset();
        //lbUsersInRoles.DataTextField = ds.Tables[0].Columns["UserName"].ToString() + " " + ds.Tables[0].Columns["RoleName"].ToString();
        //lbUsersInRoles.DataValueField = ds.Tables[0].Columns["UserName"].ToString();
        //lbUsersInRoles.DataBind();

    }

    protected void btnAddUserToRole_Click(object sender, EventArgs e)
    {
        try
        {
            if (!Roles.IsUserInRole(ddlAddUser.SelectedItem.Text, ddlAddRole.SelectedItem.Text))
            {
                Roles.AddUserToRole(ddlAddUser.SelectedItem.Text, ddlAddRole.SelectedItem.Text);
                PopulateControls();
                lblMessage.Text = "User Has Been Assigned To Role";
            }
            else
            {
                lblMessage.Text = "Role Was Already Assigned To User";
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
    protected void btnRemoveUserFromRole_Click(object sender, EventArgs e)
    {
        try
        {
            if (Roles.IsUserInRole(ddlRemoveUser.SelectedItem.Text, ddlRemoveRole.SelectedItem.Text))
            {
                Roles.RemoveUserFromRole(ddlRemoveUser.SelectedItem.Text, ddlRemoveRole.SelectedItem.Text);
                PopulateControls();
                lblMessage.Text = "User had been removed from Role.";
            }
            else
            {
                lblMessage.Text = "User was not assigned to Role.";
            }
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
}