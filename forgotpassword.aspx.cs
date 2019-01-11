using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class forgotpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        EnCryptionManager em = new EnCryptionManager();
        string code = "select * from Registration where EmailId='" + txtEmail.Text + "' and MobileNo='" + txtphone.Text + "' and secquestion='" + ddlquestion.SelectedValue + "' and secanswer='" + txtsecans.Text + "'";
        DataTable dt = dm.ExecuteMySelect(code);
        if (dt.Rows.Count > 0)
        {
            string cmd = "select Pass from Login where userid='" + txtEmail.Text + "'";
            DataTable d = dm.ExecuteMySelect(cmd);
            string s = em.decryptmydata(d.Rows[0][0].ToString());
            txtEmail.Text = "";
            txtsecans.Text = "";
            txtphone.Text = "";
            ddlquestion.SelectedIndex = 0;
            msgbox("Your Password is:  " + s);

        }
        else
        {

            Response.Write("<script>alert('Sorry! Record not found.');</script>");
        }
    }
    public void msgbox(string msg)
    {
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "message box", "<script language= 'javascript'>alert('" + msg + "')</script>");

    }
}