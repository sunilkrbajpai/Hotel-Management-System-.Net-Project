<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="CustomerManagement.aspx.cs" Inherits="Admin_ConsumerManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Customer Details</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Customers details
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHcontent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" Width="100%" CellPadding="4" DataKeyNames="CustomerId" DataSourceID="SqlDataSource3" ForeColor="#333333" PageSize="6" Font-Size="15pt" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="cust_name" HeaderText="Customer name" SortExpression="cust_name" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="MobileNo" HeaderText="Mobile No" SortExpression="MobileNo" />
            <asp:BoundField DataField="EmailId" HeaderText="Email-Id" SortExpression="EmailId" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="ID_proof" HeaderText="ID_proof" SortExpression="ID_proof" />
            <asp:BoundField DataField="RegDT" HeaderText="RegDT" SortExpression="RegDT" />
            <asp:BoundField DataField="CustomerId" HeaderText="Customer-Id" InsertVisible="False" ReadOnly="True" SortExpression="CustomerId" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [customer] WHERE [CustomerId] = ?" InsertCommand="INSERT INTO [customer] ([cust_name], [Gender], [MobileNo], [EmailId], [Address], [ID_proof], [RegDT], [CustomerId]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [customer] ORDER BY [CustomerId], [cust_name]" UpdateCommand="UPDATE [customer] SET [cust_name] = ?, [Gender] = ?, [MobileNo] = ?, [EmailId] = ?, [Address] = ?, [ID_proof] = ?, [RegDT] = ? WHERE [CustomerId] = ?">
        <DeleteParameters>
            <asp:Parameter Name="CustomerId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cust_name" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="MobileNo" Type="String" />
            <asp:Parameter Name="EmailId" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="ID_proof" Type="String" />
            <asp:Parameter Name="RegDT" Type="String" />
            <asp:Parameter Name="CustomerId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cust_name" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="MobileNo" Type="String" />
            <asp:Parameter Name="EmailId" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="ID_proof" Type="String" />
            <asp:Parameter Name="RegDT" Type="String" />
            <asp:Parameter Name="CustomerId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" DeleteCommand="DELETE FROM [Registration] WHERE (([EmailId] = ?) OR ([EmailId] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Registration] ([ConType], [UName], [Gender], [MobileNo], [EmailId], [Address], [ProfilePic], [RegDT]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT [ConType], [UName], [Gender], [MobileNo], [EmailId], [Address], [ProfilePic], [RegDT] FROM [Registration] ORDER BY [RegDT] DESC" UpdateCommand="UPDATE [Registration] SET [ConType] = ?, [UName] = ?, [Gender] = ?, [MobileNo] = ?, [Address] = ?, [ProfilePic] = ?, [RegDT] = ? WHERE [EmailId] = ?">
        <DeleteParameters>
            <asp:Parameter Name="EmailId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ConType" Type="String" />
            <asp:Parameter Name="UName" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="MobileNo" Type="String" />
            <asp:Parameter Name="EmailId" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="ProfilePic" Type="String" />
            <asp:Parameter Name="RegDT" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ConType" Type="String" />
            <asp:Parameter Name="UName" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="MobileNo" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="ProfilePic" Type="String" />
            <asp:Parameter Name="RegDT" Type="String" />
            <asp:Parameter Name="EmailId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Registration] WHERE [ID] = ?" InsertCommand="INSERT INTO [Registration] ([ID], [Contype], [UName], [Gender], [MobileNO], [EmailID], [Address], [ProfilePic], [RegDT]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [ID], [Contype], [UName], [Gender], [MobileNO], [EmailID], [Address], [ProfilePic], [RegDT] FROM [Registration] ORDER BY [RegDT] DESC" UpdateCommand="UPDATE [Registration] SET [Contype] = ?, [UName] = ?, [Gender] = ?, [MobileNO] = ?, [EmailID] = ?, [Address] = ?, [ProfilePic] = ?, [RegDT] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Contype" Type="String" />
            <asp:Parameter Name="UName" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="MobileNO" Type="String" />
            <asp:Parameter Name="EmailID" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="ProfilePic" Type="String" />
            <asp:Parameter Name="RegDT" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Contype" Type="String" />
            <asp:Parameter Name="UName" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="MobileNO" Type="String" />
            <asp:Parameter Name="EmailID" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="ProfilePic" Type="String" />
            <asp:Parameter Name="RegDT" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

