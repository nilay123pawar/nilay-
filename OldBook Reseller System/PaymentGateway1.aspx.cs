using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class PaymentGateway : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String url = "Users/" + Session["userid"] + "/Documents/" + Session["docname"];
        Session.Add("url", url);



        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();

        con.Open();
        cmd.CommandText = "Update Documents set status=@status where docid=@pid";

        cmd.Parameters.AddWithValue("@status", "Done");
        cmd.Parameters.AddWithValue("@pid",Session["dcid"]);

        cmd.Connection = con;

        int n = cmd.ExecuteNonQuery();
      

        Response.Redirect("PaymentSuccess.aspx");
    }
}