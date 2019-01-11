<%@ Page Title="" Language="C#" MasterPageFile="~/Consumer Zone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Consumer_Zone_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Feedback</title>
    <style>
    table {
    width:75%;
    margin:0 auto;
    }
    .tdstyle {
    font-size:x-large;
    color:green;
    font-weight:bold;
    }
    textarea{
        resize:none;
        width:320px;
        height:200px;
        border-radius:15px;
        padding:15px;
    }
    .btn{
        width:65px;
        height:40px;
        color:red;
        background:#f2e5e5;
        border-radius:10px;
        font-weight:bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Give your valuable feedback
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <table>
        <tr>
            <td class="tdstyle">Enter Your Name:</td>
            <td><asp:TextBox ID="UName" runat="server" Font-Size="X-Large" Width="350px"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="VTxtName" runat="server" ControlToValidate="UName" ErrorMessage="Please enter name" ForeColor="Red" ToolTip="enter name"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="tdstyle">Email:</td>
            <td><asp:TextBox ID="emailtxt" runat="server" Font-Size="X-Large" Width="350px" TextMode="Email"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="VTxtName0" runat="server" ControlToValidate="UName" ErrorMessage="Please enter email" ForeColor="Red" ToolTip="enter name"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="tdstyle">Enter Feedback Text:</td>
            <td><asp:TextBox ID="TxtFeedback" runat="server" Font-Size="X-Large" TextMode="Multiline"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="VTxtFeedback" runat="server" ControlToValidate="TxtFeedback" ErrorMessage="Please enter some text..." ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><center><asp:Button ID="BtnFeedback" CssClass="btn" runat="server" Text="Submit" OnClick="BtnFeedback_Click"></asp:Button></center></td>
            <td></td>
        </tr>
    </table>
</asp:Content>

