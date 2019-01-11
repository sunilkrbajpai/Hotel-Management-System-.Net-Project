<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GenerateBill.aspx.cs" Inherits="Consumer_Zone_GenerateBill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Generate Bill</title>
                <link rel="icon" href="../images/ggllogo.png" />

    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            text-decoration: underline;
        }
        .auto-style5 {
            width: 159px;
        }
        .auto-style6 {
            width: 188px;
        }
    </style>
    <script>
        function print(el)
        {
            var printcontent = document.getElementById(el).innerHTML;
            document.body.innerHTML = printcontent;
            window.print();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="div1"><center>
       Enter Bill Number:-  <asp:TextBox ID="TxtBillno" runat="server" placeholder="bill no." TextMode="Number"></asp:TextBox><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Generate Bill" OnClick="Button1_Click"></asp:Button><br /><br />
    </center>
    </div>
        <asp:Panel ID="Panel1" runat="server"><center>
        <table id="info" style="text-align:justify;">
            <tr>
                <td colspan="3" style="font-family:'Baskerville Old Face';font-size:80px;color:red;" class="auto-style2">Hotel Clarks Awadh</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8, Mahatma Gandhi Marg, Narpatkhera, Hazratganj, Lucknow
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u>Telephone: +91 52 2261 6500 </u></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Bill Number:
                    <asp:Label ID="lblbillno" runat="server"></asp:Label>
                </td>
                <td class="auto-style6"><strong>Name</strong>:<strong>&nbsp;<asp:Label ID="lblname" runat="server"></asp:Label>
                    </strong>&nbsp;</td>
                <td class="auto-style5">Date:
                    <asp:Label ID="lbldate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Room No.:&nbsp;<asp:Label ID="lblroomno" runat="server"></asp:Label>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Price:</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblprice" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Number of Days:</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lbldays" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"><strong>GST(15%):</strong></td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;<asp:Label ID="lblgst" runat="server" style="font-weight: 700"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-size:30px;"><strong>Payable amount:</strong></td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblpayableamount"  style="font-size:30px;" runat="server" Font-Bold="False" Font-Overline="True" Font-Underline="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
  </center>
        </asp:Panel>
      <center>  <button onclick="print('Panel1')" >Print Bill</button></center>
 </form>
</body>
</html>
