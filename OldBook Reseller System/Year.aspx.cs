using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Year : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn;
        SqlCommand cmd;
        cn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        cmd = new SqlCommand();
        cn.Open();

        cmd.CommandText = "select count(year) from AlumniData where year=2018";
        
        cmd.Connection = cn;

        object obj = cmd.ExecuteScalar();
        cn.Close();
        if (obj == null)
        {
            lblyear.Text = "No record !";
        }
        else
        {
            lblyear.Text = obj.ToString();
        }
    }
}