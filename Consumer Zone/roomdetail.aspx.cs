using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Consumer_Zone_roomdetail : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string mycommand = "Insert into rooms(roomtype,status,room_pic,price) values('" + ddltype.SelectedValue + "',1,'" + roompic.FileName + "','"+txtprice.Text+"')";

        bool b = dm.ExecuteMyINsertUpdateOrDelete(mycommand);
        if (b == true)
        {
            roompic.SaveAs(Server.MapPath("~/UserPics/rooms/" + roompic.FileName));
        }

        string cmd = "select max(ID) from rooms";
        DataTable d = dm.ExecuteMySelect(cmd);
        string s = d.Rows[0][0].ToString();
        msgbox("Room Id is:  " + s + "   Please note it successfully.");
    }
    public void msgbox(string msg)
    {
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "message box", "<script language= 'javascript'>alert('" + msg + "')</script>");

    }
    protected void txtprice_TextChanged(object sender, EventArgs e)
    {

    }
}