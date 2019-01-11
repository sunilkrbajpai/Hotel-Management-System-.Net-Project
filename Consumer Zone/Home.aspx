<%@ Page Title="" Language="C#" MasterPageFile="~/Consumer Zone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Consumer_Zone_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Home</title>
    <style>
        #tbldash {
        width:85%;
        margin:0px auto;
        padding:5px;
        border:2px dotted maroon;
        background-color:white;
        color:orangered;
        font-size:40px;
        font-weight:bold;
        border-radius:20px;
        }
            #tbldash tr td {
            width:26%;
            height:140px;
            padding:2%;
            margin:2%;
            background-color:white;
            text-align:center;
            border-radius:10px;
            }
                #tbldash tr td:hover {
                background-color:#e8de0b;
                }
        a {
            text-decoration:none;
            color:cornflowerblue;
        }
         a:hover {
             text-decoration:underline;
            color:blue;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    DashBoard
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server">
    <table id="tbldash">
        <tr>
            <td><a href="../ConReg.aspx">Add customer detail</a></td>
            <td><a href="checkroom.aspx">Check<br />
                Availabiliy</a></td>
            <td><a href="Booking.aspx">Book Room</a></td>
        </tr>
        <tr>
            <td><a href="roomdetail.aspx">Add Room detail</a></td>
                        <td><a href="GenerateBill.aspx">Generate Bill</a></td>
            <td><a href="My Profile.aspx">My Profile</a></td>
            

        </tr>
 
    </table>
</asp:Content>

