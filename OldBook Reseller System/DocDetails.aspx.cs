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

public partial class DocDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String accesstype=DetailsView1.Rows[5].Cells[1].Text;
        if (accesstype == "public")
            pnl.Visible = true;

        hfOwner.Value = DetailsView1.Rows[3].Cells[1].Text;
        if (hfOwner.Value == (String)Session["userid"])
            pnl.Visible = true;

        DataView dv=(DataView)sqlFriends.Select(new DataSourceSelectArguments());
        if (dv.Count == 1)
            pnl.Visible = true;

        String fname = DetailsView1.Rows[1].Cells[1].Text;
        String url = "Users/" + hfOwner.Value + "/Documents/" + fname;
        Session.Add("docname",fname);

      //  hlinkDownload.NavigateUrl = url;
       // hlinkView.NavigateUrl = url;

    }
    protected void btnPay_Click(object sender, EventArgs e)
    {
        Session.Add("dcid",Session["docid"]);
        Response.Redirect("PaymentGateway1.aspx");
    }
}
