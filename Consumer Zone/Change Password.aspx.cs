using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Consumer_Zone_Change_Password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnChange_Click(object sender, EventArgs e)
    {
        EnCryptionManager em=new EnCryptionManager();
        string  ecurpass=em.encryptmydata(TxtCurPass.Text);
        string enewpass=em.encryptmydata(TxtNewPass.Text);
        string cmd="Update Login set Pass='" + enewpass +"' where userid='" + Session["Userid"].ToString() +"' and pass='"+ ecurpass +"'";
        DBManager dm = new DBManager();
        bool x = dm.ExecuteMyINsertUpdateOrDelete(cmd);
        if (x == true)
            Response.Write("<script>alert('Password updated successfiully.');</script>");
        else
            Response.Write("<script>alert('Unable to update password. your current password in invalid.');</script>");
    }
}