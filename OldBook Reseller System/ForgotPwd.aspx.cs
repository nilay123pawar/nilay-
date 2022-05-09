using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class ForgotPwd : System.Web.UI.Page
{
    string ans = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGetPwd_Click(object sender, EventArgs e)
    {
        
        if (txtans.Text == hfAns.Value)
        {
            lblpwd.Visible = true;
           // lblpwd.Text = "";
        }
        else
        {
            lblpwd.Text = "Invalid answer !";
            lblpwd.Visible = true;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {      
        DataView dv=(DataView)SqlDataSource1.Select(new DataSourceSelectArguments());

        if (dv.Count > 0)
        {
            lblque.Text = dv[0][0].ToString();
            ans = dv[0][1].ToString();
            hfAns.Value = dv[0][1].ToString();
            lblpwd.Text = dv[0][2].ToString();
          //  lblpwd.Visible = true;

            txtpp.Text = "Password is : "+dv[0][1].ToString();
        }
        else
        {
            lblpwd.Text = "Invalid Username !";
            lblpwd.Visible = true;
        }

    }
    protected void txtans_TextChanged(object sender, EventArgs e)
    {
       
    }
}