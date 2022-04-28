using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (Membership.ValidateUser(txtUsername.Text.Trim(), txtPassword.Text.Trim()))
            {
                FormsAuthentication.RedirectFromLoginPage(txtUsername.Text, false);
                Session["UserName-ID"] = txtUsername.Text;
                //Response.Redirect("Personal.aspx");
                if (Roles.IsUserInRole(txtUsername.Text.ToString(), "Admin") == true)
                {

                    Response.Redirect(("~/Admin/Admin.aspx"));

                }
                else
                    if (Roles.IsUserInRole(txtUsername.Text.ToString(), "Regular Member of Staff") == true)
                    {

                        Response.Redirect(("~/Member/MemberWelcome.aspx"));

                    }
                    else
                        if (Roles.IsUserInRole(txtUsername.Text.ToString(), "Super Member of Staff") == true)
                        {

                            Response.Redirect(("~/SMember/SStaffMember.aspx"));
                        }
            }

            else
            {
                lblMessage.Text = "Username and\\or password is incorrect. Please try again.";
            }

        }
        catch (Exception ex) { Response.Write("Error: " + ex.Message); }
    }
}