<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="forgotpassword" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="Shortcut icon" href="images/Redcross.ico" />
    <title>Password Recovery</title>
      <script src="jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#back').on({
                mouseover: function () {
                    $(this).animate({
                        'height': 45,
                        'width': 55
                    }, 150);
                },
                mouseout: function () {
                    $(this).animate({
                        'height': 40,
                        'width': 50
                    }, 150);
                }
            });
        });
       </script>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            background-color: #FFFFFF;
            height: 350px;
           margin:0px auto;
        }
        .auto-style3 {
            width: 386px;
        }
        .auto-style4 {
            width: 294px;
            text-align: right;
            height: 62px;
        }
        .auto-style5 {
            width: 386px;
            height: 62px;
        }
        .auto-style6 {
            height: 62px;
        }
        .auto-style7 {
            width: 294px;
            text-align: right;
            height: 68px;
        }
        .auto-style8 {
            height: 68px;
        }
        .auto-style9 {
            text-align: center;
            height: 53px;
        }
        .auto-style12 {
            width: 294px;
            text-align: right;
            height: 75px;
        }
        .auto-style13 {
            height: 75px;
        }
        .imgbtn {
        border-radius:15px;
        }
        .btn{
            width:300px;
            height:55px;
            font-size:large;
            background:green;
            border-radius:30px;
        }
    </style>
</head>
<body style="background-color:aquamarine;">
    <center>
    <form id="form1" runat="server">
    <div>
    <h1 style="color:green;text-align:center;font-size:50px;text-decoration:underline;">Password Recovery</h1>
    </div>
</center>
   <a href="login.aspx" ><input id="back" style="color:white;background-color:blueviolet;border-radius:24px;font-size:large;font-weight:bold; width: 50px; height: 40px;" type="button" value="<<" /></a>
    <table class="auto-style1">
        <tr>
            <td class="auto-style9" style="font-family: Castellar; font-size: large; font-weight: bold; color: #FF66FF" colspan="3"><p style="color:navy ;font-size:medium;">Please fill all the fields correctly to get your password back.</p></td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-family: Castellar; font-size: large; font-weight: bold; color: #FF66FF">Email ID:-</td>
    <center>
            <td class="auto-style5">
<asp:TextBox ID="txtEmail" placeholder="Type email id" runat="server" Height="35px" TextMode="Email" Width="350px"></asp:TextBox>

            </td>
            <td class="auto-style6">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Type Correct Email ID" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please type email ID" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-family: Castellar; font-size: large; font-weight: bold; color: #FF66FF">MoBile NO.:-</td>
    <center>
            <td class="auto-style5">
                <asp:TextBox ID="txtphone" placeholder="Enter your mobile number" runat="server" Height="35px" style="text-align: left" Width="350px"></asp:TextBox>
        </td>
            <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtphone" ErrorMessage="Please give your Registered Mobile No." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-family: Castellar; font-size: large; font-weight: bold; color: #FF66FF">Security Question:-</td>
    <center>
            <td class="auto-style5"> <asp:DropDownList ID="ddlquestion" runat="server" Height="46px" Width="352px" style="margin-bottom: 23px">
                       <asp:ListItem>-- Choose Security Question --</asp:ListItem>
                       <asp:ListItem>Your Mother Name</asp:ListItem>
                       <asp:ListItem>Your Pet Name</asp:ListItem>
                       <asp:ListItem>Your favourite Book</asp:ListItem>
                       <asp:ListItem>Your Favourite Movie</asp:ListItem>
                       <asp:ListItem>What is name of your girlfriend ?</asp:ListItem>
                       <asp:ListItem>What was your favourite sports in schooltime ?</asp:ListItem>
                       <asp:ListItem>Name of company where you get your first job ?</asp:ListItem>
                       <asp:ListItem>Name of your Best Friend ?</asp:ListItem>
                   </asp:DropDownList></td>
            <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlquestion" ErrorMessage="Select Security Question" Font-Bold="True" ForeColor="Red" InitialValue="-- Choose Security Question --"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-family: Castellar; font-size: large; font-weight: bold; color: #FF66FF">Security Answer:-</td>
    <center>
            <td class="auto-style5">
                <asp:TextBox ID="txtsecans" placeholder="Security answer" runat="server" Height="35px" Width="350px"></asp:TextBox>
        </td>
            <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtsecans" ErrorMessage="Type Security Answer" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style7" style="font-family: Castellar; font-size: large; font-weight: bold; color: #FF66FF"></td>
    <center>
            <td class="auto-style3" rowspan="2"> 
             <center>   <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Recover Account" OnClick="Button1_Click" ForeColor="White" /></center>
                &nbsp;</td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style12" style="font-family: Castellar; font-size: large; font-weight: bold; color: #FF66FF">
                &nbsp;</td>
            <td class="auto-style13"></td>
        </tr>
    </table>
    </form>
</center>
</center>
</center>
</center>
</center></body>
</html>

