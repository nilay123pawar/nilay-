using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

public partial class Client_Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Payment();
    }

    protected void Payment()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();

        con.Open();
        cmd.CommandText = "Update ProjectReg set status=@status where pid=@pid";

        cmd.Parameters.AddWithValue("@status","Active");
        cmd.Parameters.AddWithValue("@pid", Request.QueryString["pid"].ToString());
        
        cmd.Connection = con;

        int n = cmd.ExecuteNonQuery();
        if (n > 0)
        {
            Response.Redirect("PaymentSuccess.aspx");
        }
        else
        {

        }

    }
}