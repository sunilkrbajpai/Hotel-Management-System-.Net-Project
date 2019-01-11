using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnChange_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        EnCryptionManager em = new EnCryptionManager();
        string OldPass = em.encryptmydata(TxtOldPass.Text);
        string  newpass=em.encryptmydata(TxtNewPass.Text);
        string cm = "Update Login set Pass='" + newpass + "' where pass='" + OldPass + "' and userid='" + Session["adminid"] + "'";
        bool b = dm.ExecuteMyINsertUpdateOrDelete(cm);
        if (b == true)
            Response.Write("<script>alert('Password updated successfiully.');</script>");
        else
            Response.Write("<script>alert(' password not updated.');</script>");
    }
}