using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class HomeMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        if (Login1.UserName == "admin" && Login1.Password == "super")
        {
            Response.Redirect("admin/Default.aspx");
        }
        else
        {
            hfUserID.Value = Login1.UserName;
            hfPwd.Value = Login1.Password;
            DataView dv = (DataView)sqlLogin.Select(new DataSourceSelectArguments());
            if (dv.Count == 1)
            {
                Session.Add("userid", Login1.UserName);
                Session.Add("pwd", Login1.Password);
                Server.Transfer("home.aspx");
            }
            else
            {
                Login1.FailureText = "Invalid Username & Password !";
            }
        }
    }
}
