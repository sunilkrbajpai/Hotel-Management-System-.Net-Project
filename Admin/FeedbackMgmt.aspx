<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="FeedbackMgmt.aspx.cs" Inherits="Admin_FeedbackManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Feedback</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Feedback Management
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHcontent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="feedbackid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Size="11pt" GridLines="Horizontal" Width="899px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="feedbackid" HeaderText="S.no." InsertVisible="False" ReadOnly="True" SortExpression="feedbackid" />
            <asp:BoundField DataField="UName" HeaderText="Name" SortExpression="UName" />
            <asp:BoundField DataField="Emailid" HeaderText="Email-id" SortExpression="Emailid" />
            <asp:BoundField DataField="feedbacktext" HeaderText="Feedback" SortExpression="feedbacktext" />
            <asp:BoundField DataField="feedbackDT" HeaderText="Dated" SortExpression="feedbackDT" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" HorizontalAlign="Left" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString8 %>" DeleteCommand="DELETE FROM [feedback] WHERE [feedbackid] = ?" InsertCommand="INSERT INTO [feedback] ([feedbackid], [UName], [Emailid], [feedbacktext], [feedbackDT]) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString8.ProviderName %>" SelectCommand="SELECT * FROM [feedback]" UpdateCommand="UPDATE [feedback] SET [UName] = ?, [Emailid] = ?, [feedbacktext] = ?, [feedbackDT] = ? WHERE [feedbackid] = ?">
        <DeleteParameters>
            <asp:Parameter Name="feedbackid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="feedbackid" Type="Int32" />
            <asp:Parameter Name="UName" Type="String" />
            <asp:Parameter Name="Emailid" Type="String" />
            <asp:Parameter Name="feedbacktext" Type="String" />
            <asp:Parameter Name="feedbackDT" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UName" Type="String" />
            <asp:Parameter Name="Emailid" Type="String" />
            <asp:Parameter Name="feedbacktext" Type="String" />
            <asp:Parameter Name="feedbackDT" Type="String" />
            <asp:Parameter Name="feedbackid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

