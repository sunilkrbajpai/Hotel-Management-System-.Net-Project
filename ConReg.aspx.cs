using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class ConReg : System.Web.UI.Page
{
    static string ccode;
    CaptchaCode ccg = new CaptchaCode();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {             
            ccode = ccg.GetCode();
            Lblcaptcha.Text = ccode;
            Lblcaptcha.Font.Strikeout = true;
            Lblcaptcha.Font.Size = FontUnit.Large;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string gender = "";
        if (rdbmale.Checked == true)
            gender = "male";
        else
            gender = "female";
        if (txtcaptcha.Text == ccode)
        {
            DBManager dm = new DBManager();
            string code = "select * from customer where EmailId='" + txtEmail.Text + "' ";
            DataTable dt = dm.ExecuteMySelect(code);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Email ID already REGISTERED!');</script>");
                txtEmail.Text = "";

            }
            else
            {

                string mycommand = "Insert into customer(cust_name,Gender,MobileNo,EmailId,Address, ID_proof,RegDT) values('" + txtname.Text + "','" + gender + "','" + txtMoNo.Text + "','" + txtEmail.Text + "','" + txtaddress.Text + "','" + IDproof.FileName + "','" + DateTime.Now.ToString() + "')";

                bool b = dm.ExecuteMyINsertUpdateOrDelete(mycommand);
                if (b == true)
                {
                        IDproof.SaveAs(Server.MapPath("~/UserPics/" + IDproof.FileName));
                        string cmd = "select CustomerId from customer where EmailId='" + txtEmail.Text + "'";
                        DataTable d = dm.ExecuteMySelect(cmd);
                        string s = d.Rows[0][0].ToString();
                     //   msgbox("You are registered successfully. Your Customer Id is:  " + s+ "                    Please note it successfully.");
                        txtaddress.Text = "";
                        txtcaptcha.Text = "";
                        txtEmail.Text = "";
                        txtMoNo.Text = "";
                        txtname.Text = "";                        
                    }
                    else
                    {
                        Response.Write("<script>alert('Your registration failed.')</script>");
                    }
                }
            }
        }
    }
    //public void msgbox(string msg)
    //{
    //    Page.ClientScript.RegisterStartupScript(Page.GetType(), "message box", "<script language= 'javascript'>alert('" + msg + "')</script>");

    //}
    //protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    //{
    //    ccode = ccg.GetCode();
    //    Lblcaptcha.Text = ccode;
    //}
