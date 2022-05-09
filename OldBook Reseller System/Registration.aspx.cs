using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String ipath = Server.MapPath("Images");
        String cpath = ipath + "\\captcha.jpg";
       // String ctext = Captcha.Generate(6, cpath);

        for (int i = 1; i <= 31; i++)
            ddlDD.Items.Add(i.ToString());

        String[] mons = { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" };
        foreach (String mon in mons)
            ddlMM.Items.Add(mon);

        int year = DateTime.Today.Year;
        for (int y = year - 15; y >= year - 25; y--)
            ddlYY.Items.Add(y.ToString());
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            String bd = ddlDD.SelectedValue + " " + ddlMM.SelectedValue + " " + ddlYY.SelectedValue;
            DateTime bdate = DateTime.Parse(bd);
            hfBDate.Value = bdate.ToShortDateString();
        }
        catch (Exception er)
        {
            lblmsg.Text = "InValid BirthDate";
            return;
        }

        DataView dv = (DataView)sqlUserMaster.Select(new DataSourceSelectArguments());
        if (dv.Count == 1)
        {
            lblmsg.Text = "Select another ID";
            return;
        }


        String ppath = Server.MapPath("Users");
        String upath = ppath + "\\" + txtUserID.Text;
        System.IO.Directory.CreateDirectory(upath);
        System.IO.Directory.CreateDirectory(upath + "\\Documents");
        if (fuPhoto.HasFile)
        {
            String photopath = upath + "\\" + fuPhoto.FileName;
            fuPhoto.SaveAs(photopath);
            hfPhotoUrl.Value = "Users/" + txtUserID.Text + "/" + fuPhoto.FileName;

            


        }
        sqlUserMaster.Insert();
        lblmsg.Text = "You are Successfully Registered..";
        btnRegister.Enabled = false;
        Response.Redirect("Success.aspx");
    }

    protected void txtUserID_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtUserID.Text))
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from UserMaster where UserID=@Name", con);
            cmd.Parameters.AddWithValue("@Name", txtUserID.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                checkusername.Visible = true;
                //imgstatus.ImageUrl = "NotAvailable.jpg";    
                lblStatus.ForeColor = System.Drawing.Color.Red;
                lblStatus.Text = "UserName Already Taken";
            }
            else
            {
                checkusername.Visible = true;
                //imgstatus.ImageUrl = "Icon_Available.gif";
                lblStatus.ForeColor = System.Drawing.Color.Green;
               // lblStatus.Text = "UserName Available";
            }
        }
        else
        {
            checkusername.Visible = false;
        }
    }

    

}