<%@ Page Title="" Language="C#" MasterPageFile="~/Consumer Zone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="Change Password.aspx.cs" Inherits="Consumer_Zone_Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Change Password</title>
    <style>
        #tblchange {
        width:95%;
        margin:10px auto;
        background-color:white;
        color:white;
        font-size:x-large;
        border-radius:20px;
        padding:5% 15%;
        }
            .txt {
            width:330px;
            height:35px;
            padding:3px 5px;
            border-radius:10px;
            margin:7px;
            font-size:large;
            }
        
        
        .auto-style1 {
            width: 364px;
        }
        .btn{
            background:#0ed179;
            color:yellow;
            padding:10px;
            border-radius:20px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Change Password
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <table id="tblchange">
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="TxtCurPass" runat="server" TextMode="Password" placeholder="Enter Current Password" CssClass="txt"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your old password" ControlToValidate="TxtCurPass" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="TxtNewPass" runat="server" TextMode="Password" placeholder="Enter New Password" CssClass="txt"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtNewPass" ErrorMessage="Enter new password" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="TxtConfPass" runat="server" TextMode="Password" placeholder="Confirm your new password" CssClass="txt"/>
            </td><td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtNewPass" ControlToValidate="TxtConfPass" ErrorMessage="Both password must be same" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:CompareValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtConfPass" ErrorMessage="Retype new password" ForeColor="Red" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <br />
               <center> <asp:Button ID="BtnChange" runat="server" Text="Change Password" CssClass="btn" Font-Size="X-Large" OnClick="BtnChange_Click" /></center>
            </td>
        </tr>
    </table>
</asp:Content>

