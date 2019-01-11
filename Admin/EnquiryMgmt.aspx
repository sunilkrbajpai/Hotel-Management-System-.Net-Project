<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="EnquiryMgmt.aspx.cs" Inherits="Admin_EnquiryMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>
        Enquiry
    </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Enquiry Management
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHcontent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="3" DataKeyNames="EnquiryID" DataSourceID="SqlDataSource1" Width="100%" BorderStyle="None" Font-Size="12pt">
    <Columns>
        <asp:BoundField DataField="EnquiryID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="EnquiryID" />
        <asp:BoundField DataField="UName" HeaderText="Name" SortExpression="UName" />
        <asp:BoundField DataField="MobNo" HeaderText="Mobile No." SortExpression="MobNo" />
        <asp:BoundField DataField="EmailId" HeaderText="Email-Id" SortExpression="EmailId" />
        <asp:BoundField DataField="Msg" HeaderText="Message" SortExpression="Msg" />
        <asp:BoundField DataField="EnquiryDT" HeaderText="Enquiry D/T" SortExpression="EnquiryDT" />
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" ForeColor="White" Font-Bold="True" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString8 %>" ProviderName="<%$ ConnectionStrings:ConnectionString8.ProviderName %>" SelectCommand="SELECT * FROM [Tbl_Enquiry] ORDER BY [EnquiryID]"></asp:SqlDataSource>
</asp:Content>

