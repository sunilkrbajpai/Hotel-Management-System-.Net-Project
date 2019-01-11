using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Consumer_Zone_Gas_Booking : System.Web.UI.Page
{
     
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TxtClear_Click(object sender, EventArgs e)
    {
        
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        String emp=txtemp.Text;
        String cust=TxtcuNo.Text;


        Double rate=int.Parse(txtprice.Text);
        int days = int.Parse(ddlno.SelectedValue);
        double total = rate * days;
        Double gst =(0.15 * total);
        Double sum = total + gst;
        DBManager dm = new DBManager();
        DBManager d = new DBManager();

        string code = "select * from Employee where ID=" + txtemp.Text + "";
        DataTable dt = dm.ExecuteMySelect(code);
        if (dt.Rows.Count > 0)
        {
            code = "select * from customer where CustomerId=" + TxtcuNo.Text + "";
            DataTable da = dm.ExecuteMySelect(code);
            if (da.Rows.Count > 0)
            {
                code = "select * from rooms where ID=" + txtroomid.Text + "";
                DataTable db = dm.ExecuteMySelect(code);
                if (db.Rows.Count > 0)
                {
                    string cmd = "insert into booking(customerID,BDate,roomid,Rate,GST,NetAmount,employeeID,days) values('" + txtemp.Text + "','" + DateTime.Now.ToString() + "','" + txtroomid.Text + "','" + rate + "','" + gst + "','" + sum + "','" + txtemp.Text + "','" + days + "')";
                    if (d.ExecuteMyINsertUpdateOrDelete(cmd) == true)
                    {
                        string cmd4 = "select BillNo from booking where customerID='" + cust + "' and employeeID='" + emp + "'";
                        DataTable dt3 = dm.ExecuteMySelect(cmd4);
                        string s = dt3.Rows[0][0].ToString();
                        Response.Write("<script>alert('.....Your booking is successful.....')</script>");

                         string mycmd = "Update rooms set status= 0 where ID=" +txtroomid.Text + "";
                        dm.ExecuteMyINsertUpdateOrDelete(mycmd);

                        Label1.Text = "Kindly note your booking no. is: " + s;
                    }
                    else
                    {

                        Response.Write("<script>alert('Your Booking Process is not completed...')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('ROOM-ID not found!');</script>");
                    txtroomid.Text = "";
                }
            }
            else
            {
                Response.Write("<script>alert('Customer-ID not found!');</script>");
                TxtcuNo.Text = "";
            }
        }        
        else
        {
            Response.Write("<script>alert('Employee-ID not found!');</script>");
            txtemp.Text = "";
        }
    }
    public void msgbox(string msg)
    {
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "message box", "<script language= 'javascript'>alert('" + msg + "')</script>");

    }

}