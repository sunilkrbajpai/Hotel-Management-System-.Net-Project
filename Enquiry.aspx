<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMasterStyle.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="Enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>contact us</title>
    <link href="css/enquirystyle.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <br /><div id="box">
    <div id="Address">
        <center><h2>Address</h2></center>
       <b><span style="color:red" >Clarks Avadh, Lucknow</b></span><br />

8, Mahatma Gandhi Marg, Narpatkhera, Hazratganj,<br /> Lucknow, Uttar Pradesh 226001
       <br /><u>Telephone: +91 52 2261 6500 <br /> reservations@clarksavadh.com</u>
    </div>
    <div id="map">
       <h2><center>Google Map</center></h2>
        <iframe width="370px" height="170px" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3557.6501434995844!2d80.93976471415853!3d26.914596266490165!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3999564d2761d695%3A0xffaa6ccef8c6ddae!2sInstitute+of+Engineering+and+Technology(IET)!5e0!3m2!1sen!2sin!4v1505199378233"></iframe>
    </div>
        </div>
</asp:Content>

