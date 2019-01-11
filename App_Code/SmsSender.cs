using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;

/// <summary>
/// Summary description for SmsSender
/// </summary>
public class SmsSender
{
    string UserName, UserKey, MySenderId;
    public SmsSender()
    {
        UserName = "BRIJESH";
        UserKey = "8620e45a26XX";
        MySenderId = "SPILKO";
    }
    public bool SendMySMS(string MobileNo, string Message)
    { 
    string APIURL="http://sms.bulkssms.com/subitsms.jsp?user="+UserName+" &key="+UserKey+" &mobile="+MobileNo+" &Message="+Message+" &senderid="+MySenderId+"&accusage=1";
    WebClient wc = new WebClient();
    try
    {
        wc.DownloadString(APIURL);
        return true;
    }
    catch
    {
        return false;
    }
    }
}