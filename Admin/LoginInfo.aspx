<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="LoginInfo.aspx.cs" Inherits="Admin_LoginInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Login Info</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Employee Login Information
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHcontent" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%" Font-Size="12pt">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="LCount" HeaderText="Count" SortExpression="LCount" />
            <asp:BoundField DataField="LoginTime" HeaderText="Login Time" SortExpression="LoginTime" />
            <asp:BoundField DataField="UserId" HeaderText="Email-Id" ReadOnly="True" SortExpression="UserId" />
            <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        <EditRowStyle BackColor="#CCFF33" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" HorizontalAlign="left" ForeColor="White"/>
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString7 %>" DeleteCommand="DELETE FROM [Login] WHERE (([UserId] = ?) OR ([UserId] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Login] ([LCount], [LoginTime], [UserId], [Status]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString7.ProviderName %>" SelectCommand="SELECT [LCount], [LoginTime], [UserId], [Status] FROM [Login]" UpdateCommand="UPDATE [Login] SET [LCount] = ?, [LoginTime] = ?, [Status] = ? WHERE [UserId] = ?">
        <DeleteParameters>
            <asp:Parameter Name="UserId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LCount" Type="Int32" />
            <asp:Parameter Name="LoginTime" Type="String" />
            <asp:Parameter Name="UserId" Type="String" />
            <asp:Parameter Name="Status" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LCount" Type="Int32" />
            <asp:Parameter Name="LoginTime" Type="String" />
            <asp:Parameter Name="Status" Type="Boolean" />
            <asp:Parameter Name="UserId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

