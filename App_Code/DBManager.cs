using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

/// <summary>
/// Summary description for DBManager
/// </summary>
public class DBManager
{
    OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["ConnectionString8"].ToString());
	public DBManager()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public bool ExecuteMyINsertUpdateOrDelete(string YourCommand)
    {
        OleDbCommand cmd = new OleDbCommand(YourCommand, con);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        int n = cmd.ExecuteNonQuery();
        con.Close();
        if (n > 0)
            return true;
        else
            return false;
    }
    public DataTable ExecuteMySelect(string YourCommand)
    {
        OleDbDataAdapter da = new OleDbDataAdapter(YourCommand, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}