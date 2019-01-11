using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, ImageClickEventArgs e)
    {
        DBManager dm = new DBManager();
        EnCryptionManager em = new EnCryptionManager();
        string epass = em.encryptmydata(txtpass.Text);
        string cmd = "Select * from Login where UserId='" + txtUID.Text + "' and Pass='" + epass + "' and Status=true";
        DataTable dt = dm.ExecuteMySelect(cmd);
        if (dt.Rows.Count > 0)
        {
            cmd = "update Login set Lcount=(Lcount+1),LoginTime='" + DateTime.Now.ToString() + "' where UserId='" + txtUID.Text + "' and Pass='" + epass + "'";
            bool x = dm.ExecuteMyINsertUpdateOrDelete(cmd);
            Session["AdminID"] = txtUID.Text;
            Response.Redirect("~/Admin/AdminHome.aspx");

        }
        else
        {
            Response.Write("<script>alert('Invalid userid or password.');</script>");
        }
    }
}