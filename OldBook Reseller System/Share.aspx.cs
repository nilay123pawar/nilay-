using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;

public partial class Share : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
      //  Response.Write("Data : " + GridView1.SelectedRow.Cells[2].Text);
        SqlConnection cn;
        SqlCommand cmd;
        cn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        cn.Open();
       
        cmd.CommandText = "insert into Share(userfrom,userto,report,ddate)values(@userfrom,@userto,@report,@ddate)";
        
        cmd.Parameters.AddWithValue("@userfrom",Session["userid"].ToString());
        cmd.Parameters.AddWithValue("@userto",GridView1.SelectedRow.Cells[2].Text);
        cmd.Parameters.AddWithValue("@report",Request.QueryString["doc"].ToString());
        cmd.Parameters.AddWithValue("@ddate",DateTime.Now.ToString());

        cmd.Connection = cn;

        int n = cmd.ExecuteNonQuery();

        cn.Close();
        Response.Redirect("SuccessShared.aspx");
    }
}