<%@ Page Title="" Language="C#" MasterPageFile="~/Consumer Zone/ConsumerMaster.master" AutoEventWireup="true" CodeFile="checkroom.aspx.cs" Inherits="Consumer_Zone_checkroom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><title>Check Room</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Check Room
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHMain" Runat="Server"><center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="95%" Font-Size="Large" DataKeyNames="ID" DataSourceID="SqlDataSource2" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="Room NO." InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="roomtype" HeaderText="Type" SortExpression="roomtype" />
            <asp:CheckBoxField DataField="status" HeaderText="Status" SortExpression="status" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [rooms] WHERE [ID] = ? AND (([roomtype] = ?) OR ([roomtype] IS NULL AND ? IS NULL)) AND [status] = ? AND (([price] = ?) OR ([price] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [rooms] ([ID], [roomtype], [status], [price]) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [ID], [roomtype], [status], [price] FROM [rooms] ORDER BY [roomtype], [ID], [price]" UpdateCommand="UPDATE [rooms] SET [roomtype] = ?, [status] = ?, [price] = ? WHERE [ID] = ? AND (([roomtype] = ?) OR ([roomtype] IS NULL AND ? IS NULL)) AND [status] = ? AND (([price] = ?) OR ([price] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_roomtype" Type="String" />
            <asp:Parameter Name="original_roomtype" Type="String" />
            <asp:Parameter Name="original_status" Type="Boolean" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="roomtype" Type="String" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="price" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="roomtype" Type="String" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_roomtype" Type="String" />
            <asp:Parameter Name="original_roomtype" Type="String" />
            <asp:Parameter Name="original_status" Type="Boolean" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [rooms] WHERE [ID] = ? AND (([roomtype] = ?) OR ([roomtype] IS NULL AND ? IS NULL)) AND [status] = ? AND (([room_pic] = ?) OR ([room_pic] IS NULL AND ? IS NULL)) AND (([price] = ?) OR ([price] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [rooms] ([ID], [roomtype], [status], [room_pic], [price]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [rooms] ORDER BY [roomtype], [ID], [price]" UpdateCommand="UPDATE [rooms] SET [roomtype] = ?, [status] = ?, [room_pic] = ?, [price] = ? WHERE [ID] = ? AND (([roomtype] = ?) OR ([roomtype] IS NULL AND ? IS NULL)) AND [status] = ? AND (([room_pic] = ?) OR ([room_pic] IS NULL AND ? IS NULL)) AND (([price] = ?) OR ([price] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_roomtype" Type="String" />
            <asp:Parameter Name="original_roomtype" Type="String" />
            <asp:Parameter Name="original_status" Type="Boolean" />
            <asp:Parameter Name="original_room_pic" Type="String" />
            <asp:Parameter Name="original_room_pic" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="roomtype" Type="String" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="room_pic" Type="String" />
            <asp:Parameter Name="price" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="roomtype" Type="String" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter Name="room_pic" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_roomtype" Type="String" />
            <asp:Parameter Name="original_roomtype" Type="String" />
            <asp:Parameter Name="original_status" Type="Boolean" />
            <asp:Parameter Name="original_room_pic" Type="String" />
            <asp:Parameter Name="original_room_pic" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
            <asp:Parameter Name="original_price" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource></center>
</asp:Content>

