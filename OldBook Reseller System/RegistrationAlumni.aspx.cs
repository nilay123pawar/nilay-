using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class RegistrationAlumni : System.Web.UI.Page
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
        

        String ppath = Server.MapPath("Users");
        String upath = ppath + "\\" + txtUserID.Text;
        System.IO.Directory.CreateDirectory(upath);
        System.IO.Directory.CreateDirectory(upath + "\\Documents");
        if (fuPhoto.HasFile)
        {
            //String photopath = upath + "\\" + fuPhoto.FileName;
            //fuPhoto.SaveAs(photopath);
            //hfPhotoUrl.Value = "Users/" + txtUserID.Text + "/" + fuPhoto.FileName;

            //SaveData();
        }

        String photopath = upath + "\\" + fuPhoto.FileName;
        Response.Write("Photo : " + photopath);
        hfPhotoUrl.Value = "Users/" + txtUserID.Text + "/" + fuPhoto.FileName;
        fuPhoto.SaveAs(photopath);
        

        SaveData();
       // Response.Write("Data4 ");
        
        //lblmsg.Text = "You are Successfully Registered..";
      //  btnRegister.Enabled = false;
       // Response.Redirect("Success.aspx");
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
                txtUserID.Text = "";
                txtUserID.Focus();
            }
            else
            {
               // checkusername.Visible = true;
                //imgstatus.ImageUrl = "Icon_Available.gif";
              //  lblStatus.ForeColor = System.Drawing.Color.Green;
               // lblStatus.Text = "UserName Available";
            }
        }
        else
        {
            checkusername.Visible = false;
        }
    }

    protected void SaveData()
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);

        SqlCommand cmd = new SqlCommand();
        cn.Open();
        Response.Write("Data1 ");
        cmd.CommandText = "insert into UserMaster(UserID,Pwd,Name,Address,City,College,Branch,Year,Gender,BirthDate,PhotoFile,EmailID,ContactNo,que,ans,usertype,company,post,tech)values(@UserID,@Pwd,@Name,@Address,@City,@College,@Branch,@Year,@Gender,@BirthDate,@PhotoFile,@EmailID,@ContactNo,@que,@ans,@usertype,@company,@post,@tech)";

        cmd.Parameters.AddWithValue("@UserID", txtUserID.Text);
        cmd.Parameters.AddWithValue("@Pwd", txtPwd.Text);
        cmd.Parameters.AddWithValue("@Name",txtName.Text);
        cmd.Parameters.AddWithValue("@Address",txtAddress.Text);
        
        cmd.Parameters.AddWithValue("@City", txtCity.Text);
        cmd.Parameters.AddWithValue("@College", txtCollege.Text);
        cmd.Parameters.AddWithValue("@Branch",ddlBranch.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@Year", ddlYear.SelectedItem.ToString());

        cmd.Parameters.AddWithValue("@Gender",rbGender.SelectedItem.Value.ToString());
        cmd.Parameters.AddWithValue("@BirthDate",hfBDate.Value);
        cmd.Parameters.AddWithValue("@PhotoFile",hfPhotoUrl.Value);
        cmd.Parameters.AddWithValue("@EmailID",txtEmail.Text);
        
        cmd.Parameters.AddWithValue("@ContactNo",txtContactNo.Text);
        cmd.Parameters.AddWithValue("@que",ddlQue.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@ans", txtans.Text);
        cmd.Parameters.AddWithValue("@usertype", Request.QueryString["utype"].ToString());
                
        cmd.Parameters.AddWithValue("@company", txtCompany.Text);
        cmd.Parameters.AddWithValue("@post",txtDesignation.Text);
        cmd.Parameters.AddWithValue("@tech",txtTech.Text);
        Response.Write("Data2 ");
        cmd.Connection = cn;

        int n = cmd.ExecuteNonQuery();
        cn.Close();
        if (n > 0)
        {
            Response.Redirect("Success.aspx");
        }
       // Response.Write("Data3 ");

    }

    protected void checkAlumni()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["LIS"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "Select name from AlumniData where email=@email ";
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        object obj = cmd.ExecuteScalar();
        if (obj == null)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Alumni Record Not Found')", true);
        }
        else
        {
            
        }
        con.Close();
    }
    protected void txtEmail_TextChanged(object sender, EventArgs e)
    {
      //  checkAlumni();
       // txtEmail.Focus();
    }
}