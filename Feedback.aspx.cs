using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Consumer_Zone_Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnFeedback_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string mycmd = "insert into feedback(UName,emailid,feedbacktext,feedbackdt)values('" + VTxtName.Text + "','" +emailtxt.ToString() + "','" + TxtFeedback.Text + "','" + DateTime.Now + "')";
       bool b= dm.ExecuteMyINsertUpdateOrDelete(mycmd);
        if (b == true)
        {
            Response.Write("<script>alert('feedback submited.');</script>");
        }
        else
        {
            Response.Write("<script>alert('submission failed.');</script>");
        }
        TxtFeedback.Text = "";
        VTxtName.Text = "";
    }
}