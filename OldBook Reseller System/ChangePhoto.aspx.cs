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

public partial class ChangePhoto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        hfPhotoUrl.Value = "Users/" + (String)Session["userid"] + "/" + fuPhoto.FileName;
        sqlPhoto.Update();
        String ppath=Server.MapPath("Users");
        String photopath = ppath + "\\" + (String)Session["userid"] + "\\" + fuPhoto.FileName;
        fuPhoto.SaveAs(photopath);
        Server.Transfer("Home.aspx");
    }
}
