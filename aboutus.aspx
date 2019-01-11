<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMasterStyle.master" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>about us</title>
    <style>
        #pr{
            width:40%;
            float:left;
            padding:15px;
            color:navy;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-size:18px;
        }
        #img{
            width:45%;
            float:left;
padding:10px;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server"><br />
  <center><span style="font-family:Algerian;font-size:x-large;text-decoration:underline;">
        Facilities at Hotel Clarks Awadh
   </span></center> 
     <div id="pr">
     <ul><li>Swimming pool</li>
         <li>Gym</li>
<li>Wedding Halls</li> 
         <li>Board Rooms</li>
         <li>Newspaper</li>
         <li>Beauty Parlour</li>
         <li>In-house restaurant
</li><li>Valet Parking</li>
         <li>Health Club</li>
         <li>Laundry Service</li>
         <li>Mini bar and Ghazal singers</li>
         <li>Free WI-FI
</li>
     </ul>  
       </div>
    <div id="img">
        <img src="images/hotelImges/1.jpg" height="300px" width="500px"/>
    </div>

</asp:Content>

