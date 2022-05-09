using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string q = "";

        if (ddlSearchBy.SelectedItem.Value.ToString() == "Name")
        {
            q = "SELECT [UserID], [Pwd], [Name], [City], [Branch], [usertype], [PhotoFile] FROM [UserMaster] where Name like '%"+txtSearch.Text+"%' ";
        }

        if (ddlSearchBy.SelectedItem.Value.ToString() == "City")
        {
            q = "SELECT [UserID], [Pwd], [Name], [City], [Branch], [usertype], [PhotoFile] FROM [UserMaster] where City like '%" + txtSearch.Text + "%' ";
        }


        if (ddlSearchBy.SelectedItem.Value.ToString() == "College")
        {
            q = "SELECT [UserID], [Pwd], [Name], [City], [Branch], [usertype], [PhotoFile] FROM [UserMaster] where College like '%" + txtSearch.Text + "%' ";
        }


        if (ddlSearchBy.SelectedItem.Value.ToString() == "Branch")
        {
            q = "SELECT [UserID], [Pwd], [Name], [City], [Branch], [usertype], [PhotoFile] FROM [UserMaster] where Branch like '%" + txtSearch.Text + "%' ";
        }



        
        SqlDataGetUser.SelectCommand = q;

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("ViewDetails.aspx?user=" + GridView1.SelectedRow.Cells[2].Text);
    }
}