<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Notification.aspx.cs" Inherits="Admin_Dynamic_Updates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Notifications</title>
    <style>
        .btn{
            resize:none;
            text-align:center;
            padding:10px;
            font-size:x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Show Notifications
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHcontent" Runat="Server">
    <asp:TextBox ID="TxtNotification" runat="server" Placeholder="Enter Notification here..." TextMode="MultiLine" Width="100%"  Height="100px" CssClass="btn" />
    <br /><br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtNotification" ErrorMessage="No Notifications entered" Font-Overline="False" Font-Strikeout="True" Font-Underline="False" ForeColor="Fuchsia"></asp:RequiredFieldValidator>
    <center><asp:Button ID="BtnSave" runat="server" Text="Add Notification" style="border-radius:10px;" ForeColor="White" BackColor="Maroon" Width="160px" Height="35px" Font-Size="Large" OnClick="BtnSave_Click" /></center>
    <br />
    <br />
    <asp:GridView ID="GvNotification" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="nid" DataSourceID="SqlDataSource3" Width="100%" CellPadding="4" Font-Size="12pt" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="nid" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="nid" />
            <asp:BoundField DataField="msg" HeaderText="Message" SortExpression="msg" />
            <asp:BoundField DataField="ndt" HeaderText="Dated" SortExpression="ndt" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle Height="100%" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM [notification] WHERE [nid] = ?" InsertCommand="INSERT INTO [notification] ([nid], [msg], [ndt]) VALUES (?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [notification] ORDER BY [nid] DESC" UpdateCommand="UPDATE [notification] SET [msg] = ?, [ndt] = ? WHERE [nid] = ?">
        <DeleteParameters>
            <asp:Parameter Name="nid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nid" Type="Int32" />
            <asp:Parameter Name="msg" Type="String" />
            <asp:Parameter Name="ndt" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="msg" Type="String" />
            <asp:Parameter Name="ndt" Type="String" />
            <asp:Parameter Name="nid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [notification] ORDER BY [nid] DESC"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>

