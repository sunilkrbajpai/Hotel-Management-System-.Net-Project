<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin login</title>
                <link rel="icon" href="../images/ggllogo.png" />

    <style type="text/css">
        .auto-style1 {
            width: 219px;
        }

        .auto-style2 {
            width: 187px;
        }
        input{
            width:200px;
            height:30px;
        }
    </style>
    <link href="../css/AdminLogin.css" rel="stylesheet" type="text/css" />
</head>
<body><br /><br /><br /><br />
    <form id="form1" runat="server">
        <div id="d1">
            <div id="header">
                <div id="logo">
                    <img src="../images/gglLogo.gif" height="130px" width="130px" /></div>
                <div id="title">
                    <center >Admin Login</center>
                </div>
            </div>
            <div id="table">
                <br />
                <table id="tb1">
                    <tr>
                        <td class="auto-style2">Admin ID</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtUID" runat="server" required="required" /><br />

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Password</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" required="required"  /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:ImageButton ID="btnlogin" runat="server" ImageUrl="~/images/download (11).jpg" Height="50px" Width="153px" OnClick="btnlogin_Click" /></td>

                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
