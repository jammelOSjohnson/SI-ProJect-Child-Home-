using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;

public partial class Member_ClientSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       lblMessage.Visible = false;
    }

    private void rep_bind()
    {
        bool ISSuccess = true;
        if (ISSuccess)
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            con.Open();
            string query="";
            if (rblSoptions.Text == "Firstname")
            {
                query = "select TRN,Fname,Lname,DOB,SupervisorID from Client where Fname like'" + txtSearch.Text + "%'";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
                if (rblSoptions.Text == "Lastname")
                {
                    query = "select TRN,Fname,Lname,DOB,SupervisorID from Client where Lname like'" + txtSearch.Text + "%'";
                    SqlDataAdapter da = new SqlDataAdapter(query, con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                }
                else
                    if (rblSoptions.Text == "TRN")
                    {
                        query = "select TRN,Fname,Lname,DOB,SupervisorID from Client where TRN like'" + Convert.ToInt32(txtSearch.Text) + "%'";
                        SqlDataAdapter da = new SqlDataAdapter(query, con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                    }
                    else
                        if (rblSoptions.Text == "SupervisorID")
                        {
                            query = "select TRN,Fname,Lname,DOB,SupervisorID from Client where SupervisorID like'" + txtSearch.Text + "%'";
                            SqlDataAdapter da = new SqlDataAdapter(query, con);
                            DataSet ds = new DataSet();
                            da.Fill(ds);
                            GridView1.DataSource = ds;
                            GridView1.DataBind();
                        }
            
        }
    }

    private static string GetConnectionString()
    {
        return ConfigurationManager.ConnectionStrings["CHConnectionString"].ConnectionString;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(GetConnectionString());
        con.Open();
        string query = "";

        if (rblSoptions.Text == "Firstname")
        {
            query = "select TRN,Fname,Lname,DOB,SupervisorID from Client where Fname like'" + txtSearch.Text + "%'";
        }
        else
            if (rblSoptions.Text == "Lastname")
            {
                query = "select TRN,Fname,Lname,DOB,SupervisorID from Client where Lname like'" + txtSearch.Text + "%'";
            }
            else
                if (rblSoptions.Text == "TRN")
                {
                    query = "select TRN,Fname,Lname,DOB,SupervisorID from Client where TRN like'" + Convert.ToInt32(txtSearch.Text) + "%'";
                }
                else
                    if (rblSoptions.Text == "SupervisorID")
                    {
                        query = "select TRN,Fname,Lname,DOB,SupervisorID from Client where SupervisorID like'" + txtSearch.Text + "%'";
                    }
        SqlCommand com = new SqlCommand(query, con);

        SqlDataReader dr = com.ExecuteReader();
      


        if (dr.HasRows)
        {
            dr.Read();

            rep_bind();
            GridView1.Visible = true;

            txtSearch.Text = "";
            lblMessage.Text = "";
        }
        else
        {
            GridView1.Visible = false;
            lblMessage.Visible = true;
            lblMessage.Text = "The search Term " + txtSearch.Text + " &nbsp;Is Not Available in the Records"; ;

        }
    }
}