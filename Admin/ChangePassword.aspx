<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <title>Change Password</title>  
    <style>
        #tblchange {
        width:95%;
        margin:10px auto;
        color:white;
        font-size:x-large;
        border-radius:20px;
        padding:5% 15%;
        }
            .txt {
            width:350px;
            height:35px;
            padding:3px 5px;
            border-radius:8px;
            margin:7px;
            font-size:large;
            }
        
        
        .auto-style1 {
            width: 374px;
        }
        .btn{
            border-radius:15px;
            padding:7px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Change Password
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHcontent" Runat="Server">
    <table id="tblchange">
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="TxtOldPass" runat="server" TextMode="Password" placeholder="Enter Current Password" CssClass="txt"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Current Password" ControlToValidate="TxtOldPass" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:TextBox ID="TxtNewPass" runat="server" TextMode="Password" placeholder="Enter New Password" CssClass="txt"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter new password" ControlToValidate="TxtNewPass" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
          
            <td class="auto-style1">
                <asp:TextBox ID="TxtConfPass" runat="server" TextMode="Password" placeholder="Confirm your new password" CssClass="txt"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Retype new password" ControlToValidate="TxtConfPass" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtNewPass" ControlToValidate="TxtConfPass" ErrorMessage="Password must be same" Font-Size="Large" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <center><asp:Button ID="BtnChangepassword" runat="server" CssClass="btn" Text="Change password" ForeColor="White" BackColor="#e0830c" Font-Size="X-Large" OnClick="BtnChange_Click"  /></center>
            </td>
        </tr>
    </table>
</asp:Content>

