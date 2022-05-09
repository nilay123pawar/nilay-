using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class SearchFriends : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["fid"] != null)
            lbl.Text = "Request Send to " + Request.QueryString["fid"];

        String msql = "";
        if(ddlSearchBy.SelectedValue=="Name")
            msql = "SELECT [UserID], [Name], [City], [College], [Branch], [PhotoFile] FROM [UserMaster] WHERE [Name] LIKE '%" + txtSearch.Text + "%'";
        if (ddlSearchBy.SelectedValue == "City")
            msql = "SELECT [UserID], [Name], [City], [College], [Branch], [PhotoFile] FROM [UserMaster] WHERE [city] = '" + txtSearch.Text + "'";
        if (ddlSearchBy.SelectedValue == "College")
            msql = "SELECT [UserID], [Name], [City], [College], [Branch], [PhotoFile] FROM [UserMaster] WHERE [college] LIKE '%" + txtSearch.Text + "%'";
        if (ddlSearchBy.SelectedValue == "Branch")
            msql = "SELECT [UserID], [Name], [City], [College], [Branch], [PhotoFile] FROM [UserMaster] WHERE [Branch] = '" + txtSearch.Text + "'";

        msql = msql + " and userid<>'"+(String)Session["userid"]+"'";

        //not to list from pending request
        DataView dv=(DataView)SqlPending.Select(new DataSourceSelectArguments());
        if (dv.Count > 0)
        {
            String lst = "";
            for (int i = 0; i < dv.Count; i++)
            {
                String uid = (String)dv[i][0];
                if(lst!="")
                    lst = lst + ",";
                lst = lst + "'"+uid+"'";
            }
            msql = msql + " and userid not in (" + lst + ")";
        }

        //not to list from friends
        DataView dvx = (DataView)sqlFriends.Select(new DataSourceSelectArguments());
        if (dvx.Count > 0)
        {
            String lst = "";
            for (int i = 0; i < dvx.Count; i++)
            {
                String uid = (String)dvx[i][0];
                if (lst != "")
                    lst = lst + ",";
                lst = lst + "'" + uid + "'";
            }
            msql = msql + " and userid not in (" + lst + ")";
        }

        //lbl.Text = msql;
        sqlSearch.SelectCommand = msql;
       
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
}
