<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="NewEmployee.aspx.cs" Inherits="Admin_NewEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><title>Employee Registration</title>
    <style type="text/css">

* {
margin:0px;
padding:0px;
}
        .auto-style1 {
            height: 28px;
        }
        .txtres {}
        .auto-style2 {
            width: 190px;
        }
        .auto-style3 {
            height: 28px;
            width: 190px;
        }
        .auto-style4 {
            width: 129px;
        }
        .auto-style5 {
            height: 28px;
            width: 129px;
        }
        .auto-style6 {
            width: 129px;
            height: 45px;
        }
        .auto-style7 {
            height: 45px;
        }
        .auto-style8 {
            height: 40px;
            width: 129px;
        }
        .auto-style9 {
            height: 40px;
        }
        .auto-style10 {
            width: 129px;
            height: 51px;
        }
        .auto-style11 {
            height: 51px;
            width: 190px;
        }
        .auto-style12 {
            width: 129px;
            height: 31px;
        }
        .auto-style13 {
            height: 31px;
            width: 190px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
  Add New Employee
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHcontent" Runat="Server">
    <center><div id="regbox"><center style="font-size:24px;font-weight:bolder;color:brown"><u>New Employee Registration<br />
        </u></center>
    <div class="auto-style14">
        <table id="table1" style="text-align:justify;width:85%;">
            <tr>
                <td class="auto-style4"> &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"> Name:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtname" runat="server" Height="20px" Width="250px" ></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="Enter Name.." Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Gender:</td>
                <td class="auto-style3"> <asp:RadioButton ID="rdbmale" runat="server" Text="Male" GroupName="Gender"/>
    &nbsp;<asp:RadioButton ID="rdbfemale" runat="server" Text="Female" GroupName="Gender"></asp:RadioButton></td>
                <td class="auto-style2"> &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Email Id:</td>
                <td class="auto-style3"><asp:TextBox ID="txtEmail" runat="server"  Height="20px" Width="250px" TextMode="Email"></asp:TextBox></td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Email.." Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Address:</td>
                <td class="auto-style3"><asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="250px" Height="35px" CssClass="txtres"></asp:TextBox></td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddress" ErrorMessage="Enter Address" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Mobile No:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtMoNo" runat="server"  Height="20px" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMoNo" ErrorMessage="Enter Phone Number" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                    <td class="auto-style8">ID Proof:</td>
                    <td class="auto-style9"><asp:FileUpload ID="IDproof" runat="server" Height="22px" Width="250px" /></td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="IDproof" ErrorMessage="Select picture" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            <tr>
                    <td class="auto-style6">Job:</td>
                    <td class="auto-style7">
                <asp:DropDownList ID="ddltype" runat="server" Height="42px" Width="250px">
                    <asp:ListItem Value="">--Select Job Profile--</asp:ListItem>
                        <asp:ListItem Value="Manager">Manager</asp:ListItem>
                        <asp:ListItem Value="Reception">Reception</asp:ListItem>
                    <asp:ListItem Value="Clerks">Clerks</asp:ListItem>
                </asp:DropDownList></td>
                    <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Job Profile" ControlToValidate="ddltype" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            <tr>
                    <td class="auto-style4">Salary:</td>
                    <td class="auto-style16">
                    <asp:TextBox ID="txtsal" runat="server" Height="20px" Width="250px" ></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtsal" ErrorMessage="Enter Salary" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1">
                    </td>
                </tr>
            <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:Button ID="registerbtn" runat="server" Font-Size="X-Large" Text="Register" Width="244px" Height="41px" />
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
            <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                </tr>
        </table>
        </div></center>
</asp:Content>

