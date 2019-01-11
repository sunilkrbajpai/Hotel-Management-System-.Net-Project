using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSaveEnquiry_Click(object sender, EventArgs e)
    {
        string mycommand="Insert into Tbl_Enquiry(UName,Mobno,emailid,msg,enquirydt) values('"+txtname.Text+"','"+txtMoNo.Text+"','"+txtEmail.Text+"','"+txtmsg.Text+"','"+DateTime.Now.ToString()+"')";
            DBManager dm=new DBManager();

            bool status = dm.ExecuteMyINsertUpdateOrDelete(mycommand);
        string msg="Hello"+txtname.Text+",Thanks for enquiry.Regards-Green Gas Limited";
        SmsSender ss = new SmsSender();
        ss.SendMySMS(txtMoNo.Text, msg);
            if (status == true)
            {
                txtEmail.Text = "";
                txtmsg.Text = "";
                txtMoNo.Text = "";
                txtname.Text = "";
                Response.Write("<script>alert('Thanks for Enquiry.');</script>");

            }
            else
            {
            Response.Write("<script>alert('Thanks for Enquiry.');</script>");
        }
    }
}