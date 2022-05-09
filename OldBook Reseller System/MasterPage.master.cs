using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["userid"].ToString() == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                DataView dv = (DataView)SqlDataSource1.Select(new DataSourceSelectArguments());
                if (dv.Count == 1)
                {
                    string photo = dv[0][0].ToString();
                    string name = dv[0][1].ToString();

                    string upath = Server.MapPath("photos");

                    // Image1.ImageUrl = "photos/" + photo;

                    Image2.ImageUrl = photo;

                    lbluser.Text = "welcome : " + name;

                }
            }
        }
        catch (Exception er)
        {
            Response.Redirect("InvalidSession.aspx");
        }
    }
}
