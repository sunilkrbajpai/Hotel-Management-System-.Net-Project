<%@ Page Title="" Language="C#" MasterPageFile="~/Consumer Zone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Consumer_Zone_Gas_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>
        Booking
    </title>
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
        .newbuttoncss {
        color:yellow;
        width:100px;
        height:45px;
        background:green;
        border-radius:30px;
        }
    .auto-style4 {
            text-decoration: underline;
            text-align:center;
            color:darkgreen;
        }
        .auto-style7 {
            width: 354px;
        }
        .auto-style8 {
            width: 584px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <p>
    &nbsp;book Room</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <table class="auto-style1" style="margin: 10px 20px 10px 20px; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: large; font-weight: bold;">
    <tr>
        <td class="auto-style4" colspan="2">Booking Details</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Customer-ID</td>
        <td class="auto-style8">
            <asp:TextBox ID="TxtcuNo" runat="server" TextMode="Number" Width="177px"></asp:TextBox>
        &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your ID" Font-Size="15pt" ForeColor="Red" ControlToValidate="TxtcuNo"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Room-ID</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtroomid" runat="server" TextMode="Number" Width="177px"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter room ID" Font-Size="15pt" ForeColor="Red" ControlToValidate="txtroomid"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">Employee-ID</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtemp" runat="server" TextMode="Number" Width="177px"></asp:TextBox>
        &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter employee ID" Font-Size="10pt" ForeColor="Red" ControlToValidate="txtemp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>
    </tr>
        <tr>
            <td>No. of Nights:</td>
            <td class="auto-style8">
                <asp:DropDownList ID="ddlno" runat="server" Height="42px" Width="230px">
                    <asp:ListItem Value="">-select-</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                     <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                    <asp:ListItem Value="6">6</asp:ListItem>
                                        <asp:ListItem Value="7">7</asp:ListItem>

                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select room type" ControlToValidate="ddlno" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            </tr>
    <tr>
        <td class="auto-style7">Total Price:</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtprice" runat="server" TextMode="Number" Width="177px"></asp:TextBox>
        &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="total price" Font-Size="10pt" ForeColor="Red" ControlToValidate="txtprice"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">
            &nbsp;</td>
        <td class="auto-style8">
            <asp:Button ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="Book" CssClass="newbuttoncss" />
        </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style8">
            <asp:Label ID="Label1" runat="server" ForeColor="#33CC33"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

