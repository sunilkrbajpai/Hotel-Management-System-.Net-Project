<%@ Page Title="" Language="C#" MasterPageFile="~/Consumer Zone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="roomdetail.aspx.cs" Inherits="Consumer_Zone_roomdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><title>Add Room Detail</title>
    <style>
        #divroom {
        margin:50px auto;
        border-radius:20px;
        color:black;
        font-size:20px;
        background-color:yellow;
        padding:4%;
        }
        #tblroom {
        width:90%
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">Add Room Detail
    <div id="divroom">
        
       <table id="tblroom">
        <tr>
            <td>Room Type:</td>
            <td>
                <asp:DropDownList ID="ddltype" runat="server" Height="42px" Width="230px">
                    <asp:ListItem Value="">--Select Room Type--</asp:ListItem>
                        <asp:ListItem Value="Executive Room">Executive Room</asp:ListItem>
                        <asp:ListItem Value="Club Room">Club Room</asp:ListItem>
                    <asp:ListItem Value="Suite">Suite</asp:ListItem>
                </asp:DropDownList></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select room type" ControlToValidate="ddltype" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator></td>

        </tr>
        <tr>
             <td>Room Picture:</td>
                    <td><asp:FileUpload ID="roompic" runat="server" Height="35px" Width="222px" /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="roompic" ErrorMessage="Select picture" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td></tr>
           <tr>
               <td>Price:</td>
               <td>
                   <asp:TextBox ID="txtprice" runat="server" placeholder="Enter Price of room" Height="24px" OnTextChanged="txtprice_TextChanged" TextMode="Number" Width="230px"></asp:TextBox></td>
               <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Price is required!" ControlToValidate="txtprice" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator></td>
           </tr>
           <tr>
               <td>&nbsp;</td>
               <td>
                   &nbsp;</td>
               <td>
                   &nbsp;</td>
           </tr>
           <tr >
                    <td colspan="3"><asp:Button ID="btnSubmit" runat="server" Text="Submit" BackColor="navy" ForeColor="White" Font-Size="Large"  Height="30px" Width="120px" OnClick="btnSubmit_Click"/></td>
                        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
    </table></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">

</asp:Content>

