using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Dynamic_Updates : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        string c = "Insert into Notification(msg,ndt) values('" + TxtNotification.Text + "','" + DateTime.Now.ToString() + "')";
        DBManager dm = new DBManager();
        bool x = dm.ExecuteMyINsertUpdateOrDelete(c);
        GvNotification.DataBind();
        if (x == true)
        {
            Response.Write("<script>alert('Notification saved,');</script>");
            TxtNotification.Text = "";
        }
        else
            Response.Write("<script>alert('Notification not saved');</script>");
    }
}