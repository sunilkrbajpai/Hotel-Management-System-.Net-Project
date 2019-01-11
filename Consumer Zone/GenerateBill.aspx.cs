using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Consumer_Zone_GenerateBill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string mycommand = "Select * from booking where BillNo="+TxtBillno.Text+"";
        DataTable dt = dm.ExecuteMySelect(mycommand);
        string name=dt.Rows[0][1].ToString();
        string cmd = "Select cust_name from customer where CustomerId=" +name + "";
        DataTable da = dm.ExecuteMySelect(cmd);
        lblname.Text=da.Rows[0][0].ToString();
        lblbillno.Text = dt.Rows[0][0].ToString();
        lbldate.Text=dt.Rows[0][2].ToString();
        lblroomno.Text = dt.Rows[0][3].ToString();
        lblprice.Text = dt.Rows[0][4].ToString();
        lblgst.Text = dt.Rows[0][5].ToString();
        lblpayableamount.Text = dt.Rows[0][6].ToString();
        lbldays.Text = dt.Rows[0][8].ToString();
    }
}