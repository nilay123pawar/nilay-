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

public partial class SearchDocuments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            chkDocs.DataBind();
            foreach (ListItem li in chkDocs.Items)
                li.Selected = true;


           
        }
        else
        {
            String msql = "SELECT [DocID], [Title], [DocType], [Details],cost,status FROM [Documents] WHERE ((([Title] LIKE '%" +txtPattern.Text + "%') OR ([Details] LIKE '%" + txtPattern.Text + "%') OR ([FileName] LIKE '%" + txtPattern.Text + "%')) AND ([AccessType] <>'private' )) and owner='"+Session["userid"]+"' ";
            String lst = "";
            foreach (ListItem li in chkDocs.Items)
                if (li.Selected == true)
                {
                    if(lst!="")
                        lst = lst + ",";
                    lst = lst + "'" + li.Text + "'";
                }
            if (lst != "")
                msql = msql + " and doctype in (" + lst + ")";

            msql = msql + " order by hitcount desc";
            SqlDocuments.SelectCommand = msql;
            GridView1.DataBind();
            //Label3.Text = msql;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //SqlDocuments.Update();
        //Session.Add("docid", GridView1.SelectedDataKey.Value);
        //Server.Transfer("PurchaseDetails.aspx?docid=" + GridView1.SelectedDataKey.Value);
        

       // Response.Redirect("DocDetails.aspx?docid=" + GridView1.SelectedDataKey.Value);
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

    }
}
