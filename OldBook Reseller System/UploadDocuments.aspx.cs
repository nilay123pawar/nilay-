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

public partial class UploadDocuments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        hfCDate.Value = DateTime.Now.ToString();
        sqlDocuments.Insert();
        String ppath=Server.MapPath("Users");
        String dpath = ppath + "\\" + (String)Session["userid"] + "\\Documents\\" + fuFile.FileName;
        fuFile.SaveAs(dpath);
        btnUpload.Enabled = false;
        lblmsg.Text = "Book Uploaded..";
    }
}
