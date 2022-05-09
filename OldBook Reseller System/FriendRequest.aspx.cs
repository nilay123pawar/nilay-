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

public partial class FriendRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnReject_Click(object sender, EventArgs e)
    {
        sqlRequest.Delete();
        Server.Transfer("Home.aspx");
    }
    protected void btnAccept_Click(object sender, EventArgs e)
    {
        sqlRequest.Delete();
        sqlFriends1.Insert();
        sqlFriends2.Insert();
        Server.Transfer("Home.aspx");
    }
}
