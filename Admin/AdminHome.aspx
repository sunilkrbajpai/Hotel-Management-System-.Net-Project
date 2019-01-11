<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Admin_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <title>Home</title>
     <style type="text/css">
        #tbldash {
        width:99%;
        margin:0px auto;
        padding:5px;
        
        color:white;
        font-size:40px;
        font-weight:bold;
        border-radius:20px;
        }
            #tbldash tr td {
            width:30%;
            height:180px;
            padding:2%;
           
            background-color:#f5af05;
            text-align:center;
            border-radius:100px;
            }
                #tbldash tr td:hover {
                background-color:#ff6a00;
                }
        a {
            text-decoration:none;
            color:white;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Home
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHcontent" Runat="Server">
    <table id="tbldash">
        <tr>
            <td><a href="NewEmployee.aspx">Add New Employee</a></td>
            <td><a href="GetEmployeeDetails.aspx">Employees Details</a></td>
            <td><a href="CustomerManagement.aspx">Customer Details</a>
                </td>
           
        </tr>
        <tr>
            <td><a href="BookingInfo.aspx">Booking Details</a></td>
            <td><a href="LoginInfo.aspx">Login Info</a></td>
            <td><a href="EnquiryMgmt.aspx">Enquiry Details</a></td>
            
        </tr>
        <tr>
            <td><a href="FeedbackMgmt.aspx">Feedback Details</a></td>
            <td><a href="../Consumer Zone/GenerateBill.aspx">Bill Generation</a></td>
            <td><a href="Notification.aspx">Imp. Notifications</a></td>
        </tr>
       
    </table>
</asp:Content>


