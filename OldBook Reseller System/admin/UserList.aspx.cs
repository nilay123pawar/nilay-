using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_UserList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string q = "";
        q="SELECT [UserID], [Pwd], [Name], [City], [Branch], [usertype], [PhotoFile] FROM [UserMaster] where usertype='"+ddlType.SelectedItem.Value.ToString()+"'";

        SqlDataGetUser.SelectCommand = q;

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("ViewDetails.aspx?user=" + GridView1.SelectedRow.Cells[2].Text);
    }
}