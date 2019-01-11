using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Consumer_Zone_My_Profile : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            DisplayProfile();
            DisableControls();
        }
    }
    void DisplayProfile()
    {
        string mycommand = "Select * from Employee where emailID='" + Session["userid"].ToString() + "'";
        DataTable dt = dm.ExecuteMySelect(mycommand);
        Lblid.Text = dt.Rows[0][0].ToString();
        TxtUName.Text = dt.Rows[0][1].ToString();
        TxtMobno.Text = dt.Rows[0][2].ToString();
        TxtAddress.Text = dt.Rows[0][3].ToString();
        Txtjob.Text=dt.Rows[0][4].ToString();
        TxtSal.Text=dt.Rows[0][5].ToString();
        string gen = dt.Rows[0][6].ToString();
        if (gen == "Male")
            RdbMale.Checked = true;
        else
            RdbFemale.Checked = true;
        LblEmail.Text = dt.Rows[0][7].ToString();
        FUPicture.ImageUrl = "~/UserPics/employee/" + dt.Rows[0][8].ToString();
        LblDT.Text = dt.Rows[0][9].ToString();
    }
    void DisableControls()
    {
        TxtAddress.ReadOnly = true;
        TxtSal.ReadOnly = true;
        TxtMobno.ReadOnly = true;
        TxtUName.ReadOnly = true;
        RdbFemale.Enabled = false;
        RdbMale.Enabled = false;
        FileUpload.Visible = false;
        BtnUpdate.Visible = false;
        BtnEdit.Visible = true;
        Txtjob.ReadOnly = true;
    }
    void EnableControls()
    {
        TxtAddress.ReadOnly = false;
        TxtSal.ReadOnly = true ;
        TxtMobno.ReadOnly = false;
        TxtUName.ReadOnly = true;
        RdbFemale.Enabled = false ;
        RdbMale.Enabled = false ;
       FileUpload.Visible = true;
        BtnUpdate.Visible = true;
        BtnEdit.Visible = false;
        Txtjob.ReadOnly = true;
    }
    protected void TxtEdit_Click(object sender, EventArgs e)
    {
        EnableControls();
    }
    protected void TxtUpdate_Click(object sender, EventArgs e)
    {
        string mycmd;
        string fname;
        if (FileUpload.HasFile == true)
        {
            FileUpload.SaveAs(Server.MapPath("~/UserPics/employee/" + FileUpload.FileName));
            fname = FileUpload.FileName;
        }
        else
        {
            string s= FUPicture.ImageUrl;
            fname = s.Substring(s.LastIndexOf('/') + 1);
        }
        mycmd = "Update Employee set contact='" + TxtMobno.Text + "',address='" + TxtAddress.Text + "',profilepic='" + fname + "' where emailid='" + Session["userid"].ToString() + "'";
        bool b = dm.ExecuteMyINsertUpdateOrDelete(mycmd);
        if (b == true)
        {
           BtnEdit.Visible = true;
            DisableControls();
            DisplayProfile();
            Response.Write("<script>alert('Profile Upload Successfully');</script>");
        }
        else
        {
        Response.Write("<script>alert('Unable to Update profile');</script>");
        }
    }
}