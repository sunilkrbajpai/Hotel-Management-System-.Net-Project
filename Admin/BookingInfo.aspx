<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="BookingInfo.aspx.cs" Inherits="Admin_BookingInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><title>Booking Info</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Booking Info
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHcontent" Runat="Server"><center>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" Font-Size="15pt" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="BillNo" DataSourceID="SqlDataSource1" ForeColor="Black">
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <Columns>
        <asp:BoundField DataField="BillNo" HeaderText="Bill-No" InsertVisible="False" ReadOnly="True" SortExpression="BillNo" />
        <asp:BoundField DataField="customerID" HeaderText="Customer-ID" SortExpression="customerID" />
        <asp:BoundField DataField="BDate" HeaderText="Date" SortExpression="BDate" />
        <asp:BoundField DataField="roomid" HeaderText="room-id" SortExpression="roomid" />
        <asp:BoundField DataField="Rate" HeaderText="Price" SortExpression="Rate" />
        <asp:BoundField DataField="GST" HeaderText="GST" SortExpression="GST" />
        <asp:BoundField DataField="NetAmount" HeaderText="NetAmount" SortExpression="NetAmount" />
        <asp:BoundField DataField="employeeID" HeaderText="Employee-ID" SortExpression="employeeID" />
        <asp:BoundField DataField="days" HeaderText="Days" SortExpression="days" />
    </Columns>
    <FooterStyle BackColor="Tan" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <SortedAscendingCellStyle BackColor="#FAFAE7" />
    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
    <SortedDescendingCellStyle BackColor="#E1DB9C" />
    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [booking] ORDER BY [BDate] DESC, [BillNo] DESC"></asp:SqlDataSource>
</center></asp:Content>

