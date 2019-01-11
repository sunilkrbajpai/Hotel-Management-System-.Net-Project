using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, ImageClickEventArgs e)
    {
        DBManager dm = new DBManager();
        EnCryptionManager em = new EnCryptionManager();
        string epass = em.encryptmydata(txtpass.Text);
        string cmd = "Select *from Login where userid='" + txtUID.Text + "' and pass='" + epass + "' and status=true";
        DataTable dt = dm.ExecuteMySelect(cmd);
        if (dt.Rows.Count > 0)
        {
            cmd="update Login set Lcount=(Lcount+1),LoginTime='"+DateTime.Now.ToString()+"' where userid='"+txtUID.Text+"' and pass='"+epass+"'";
            bool x=dm.ExecuteMyINsertUpdateOrDelete(cmd);
           if (x==true )
           {
            Session["userid"] = txtUID.Text;
            Response.Redirect("~/Consumer Zone/Home.aspx");

        }  else
        {
            Response.Write("<script>alert('Unable to login!');</script>");
        }
    }
        else
        {
            Response.Write("<script>alert('Invalid UserID or Password.');</script>");
        }
    }
}