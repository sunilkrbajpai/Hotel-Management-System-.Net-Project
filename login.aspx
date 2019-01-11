<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/login.css" rel="stylesheet" type="text/css"/>
                <link rel="icon" href="images/ggllogo.png" />

    <title>Login</title>
    <style type="text/css">
        .auto-style1 {
            width: 125px;
        }
        .auto-style2 {
            width: 292px;
        }
        .auto-style3 {
            text-decoration: underline;
        }
        .auto-style4 {
            width: 125px;
            height: 66px;
        }
        .auto-style5 {
            width: 292px;
            height: 66px;
        }
        .auto-style6 {
            height: 66px;
        }
    </style>
    </head>
<body>
    <br /><br /><span style="color:springgreen;background:#c9e256;font-size:30px;font-weight:bold;border-radius:15px;padding:5px;"><a href="Default.aspx" style="text-decoration:none;"><<</a></span>
    <form id="form1" runat="server">
    <div id="d1">
        <div id="header">
            <div id="logo"><img src="images\hotelImges\logo.png" height="130px" width="130px" /></div>
            <div id="title"><center>LOGIN PANEL</center></div>
        </div>
        <div id="table"><br />
        <table id="tb1">
            <tr>
                <td class="auto-style1" >Email Id</td>
                <td class="auto-style2" ><asp:TextBox ID="txtUID" runat="server" required="required" /><br />

                </td>
                <td >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUID" ErrorMessage="Enter valid user ID" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style4" >Password</td>
                <td class="auto-style5" ><asp:TextBox ID="txtpass" runat="server" TextMode="Password" required="required" /></td>
                <td class="auto-style6" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter password" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="3"><asp:ImageButton ID="btnlogin" runat="server" ImageUrl="~/images/download (11).jpg" Height="50px" Width="153px" OnClick="btnlogin_Click"/>&nbsp;
                    <br />
                    <span class="auto-style3" style="color: #f9b40d"><a href="forgotpassword.aspx">Forget password</a></span></td>

            </tr>
        </table>
    </div>
    </div>
    </form>
</body>
</html>
