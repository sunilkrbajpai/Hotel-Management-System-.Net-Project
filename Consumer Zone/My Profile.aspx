<%@ Page Title="" Language="C#" MasterPageFile="~/Consumer Zone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="My Profile.aspx.cs" Inherits="Consumer_Zone_My_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>My Profile</title>
    <style type="text/css">
        .auto-style1 {
            width: 80%;
        }
        .auto-style4 {
        }
        .auto-style5 {
        
        
        }
        textarea{
            resize:none;
            padding:2px;
        }
        #dvprofile table {
        margin:10px auto;
        border-radius:20px;
        color:black;
        font-size:20px;
        background-color:#eca406;
        padding:4%;
        }

        .auto-style9 {
            width: 154px;
        }
        .auto-style10 {
            width: 264px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    My Profile
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="dvprofile">

        <table class="auto-style1">
            <tr>
                <td class="auto-style9">Name:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TxtUName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">Profile Picture:</td>
                <td class="auto-style4" rowspan="5">
                    <asp:Image ID="FUPicture" runat="server" Height="110px" Width="90px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Gender:</td>
                <td class="auto-style10">
                    <asp:RadioButton ID="RdbMale" runat="server" Text="Male" GroupName="gender" />
                    <asp:RadioButton ID="RdbFemale" runat="server" Text="Female" GroupName="gender" />
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Email-ID:</td>
                <td class="auto-style10">
                    <asp:Label ID="LblEmail" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Mobile No:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TxtMobno" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Job Title:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="Txtjob" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Address:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine" Width="154px"></asp:TextBox>
                </td>
                <td class="auto-style5" colspan="2">
                    <asp:FileUpload ID="FileUpload" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Salary:</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TxtSal" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">Date Time of Registration:</td>
                <td>
                    <asp:Label ID="LblDT" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style5">My Employee ID:</td>
                <td>
                    <asp:Label ID="Lblid" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="BtnEdit" runat="server" style="width:120px;height:50px;background-color:red;border-radius:25px;font-size:25px;" ForeColor="white" Text="Edit" OnClick="TxtEdit_Click" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="BtnUpdate" runat="server" style="width:120px;height:50px;background-color:green;border-radius:25px;font-size:25px;" ForeColor="white" Text="Update" OnClick="TxtUpdate_Click" />
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

