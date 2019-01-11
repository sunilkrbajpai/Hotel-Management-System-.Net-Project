<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="GetEmployeeDetails.aspx.cs" Inherits="Admin_GetEmployeeDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"><title>Employee Details</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Get Employee Details
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHcontent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" style="font-size:large;" AutoGenerateColumns="False"  BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="emp_name" HeaderText="Name" SortExpression="emp_name" />
            <asp:BoundField DataField="contact" HeaderText="Contact" SortExpression="contact" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="jobtitle" HeaderText="Job" SortExpression="jobtitle" />
            <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary" />
            <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
            <asp:BoundField DataField="emailID" HeaderText="Email-ID" SortExpression="emailID" />
            <asp:BoundField DataField="profilepic" HeaderText="Picture" SortExpression="profilepic" />
            <asp:BoundField DataField="Reg_date" HeaderText="Reg_date" SortExpression="Reg_date" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Employee] WHERE [ID] = ? AND (([emp_name] = ?) OR ([emp_name] IS NULL AND ? IS NULL)) AND (([contact] = ?) OR ([contact] IS NULL AND ? IS NULL)) AND (([address] = ?) OR ([address] IS NULL AND ? IS NULL)) AND (([jobtitle] = ?) OR ([jobtitle] IS NULL AND ? IS NULL)) AND (([salary] = ?) OR ([salary] IS NULL AND ? IS NULL)) AND (([gender] = ?) OR ([gender] IS NULL AND ? IS NULL)) AND (([emailID] = ?) OR ([emailID] IS NULL AND ? IS NULL)) AND (([profilepic] = ?) OR ([profilepic] IS NULL AND ? IS NULL)) AND (([Reg_date] = ?) OR ([Reg_date] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Employee] ([ID], [emp_name], [contact], [address], [jobtitle], [salary], [gender], [emailID], [profilepic], [Reg_date]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Employee] ORDER BY [ID], [emp_name]" UpdateCommand="UPDATE [Employee] SET [emp_name] = ?, [contact] = ?, [address] = ?, [jobtitle] = ?, [salary] = ?, [gender] = ?, [emailID] = ?, [profilepic] = ?, [Reg_date] = ? WHERE [ID] = ? AND (([emp_name] = ?) OR ([emp_name] IS NULL AND ? IS NULL)) AND (([contact] = ?) OR ([contact] IS NULL AND ? IS NULL)) AND (([address] = ?) OR ([address] IS NULL AND ? IS NULL)) AND (([jobtitle] = ?) OR ([jobtitle] IS NULL AND ? IS NULL)) AND (([salary] = ?) OR ([salary] IS NULL AND ? IS NULL)) AND (([gender] = ?) OR ([gender] IS NULL AND ? IS NULL)) AND (([emailID] = ?) OR ([emailID] IS NULL AND ? IS NULL)) AND (([profilepic] = ?) OR ([profilepic] IS NULL AND ? IS NULL)) AND (([Reg_date] = ?) OR ([Reg_date] IS NULL AND ? IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_emp_name" Type="String" />
        <asp:Parameter Name="original_emp_name" Type="String" />
        <asp:Parameter Name="original_contact" Type="String" />
        <asp:Parameter Name="original_contact" Type="String" />
        <asp:Parameter Name="original_address" Type="String" />
        <asp:Parameter Name="original_address" Type="String" />
        <asp:Parameter Name="original_jobtitle" Type="String" />
        <asp:Parameter Name="original_jobtitle" Type="String" />
        <asp:Parameter Name="original_salary" Type="String" />
        <asp:Parameter Name="original_salary" Type="String" />
        <asp:Parameter Name="original_gender" Type="String" />
        <asp:Parameter Name="original_gender" Type="String" />
        <asp:Parameter Name="original_emailID" Type="String" />
        <asp:Parameter Name="original_emailID" Type="String" />
        <asp:Parameter Name="original_profilepic" Type="String" />
        <asp:Parameter Name="original_profilepic" Type="String" />
        <asp:Parameter Name="original_Reg_date" Type="String" />
        <asp:Parameter Name="original_Reg_date" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ID" Type="Int32" />
        <asp:Parameter Name="emp_name" Type="String" />
        <asp:Parameter Name="contact" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="jobtitle" Type="String" />
        <asp:Parameter Name="salary" Type="String" />
        <asp:Parameter Name="gender" Type="String" />
        <asp:Parameter Name="emailID" Type="String" />
        <asp:Parameter Name="profilepic" Type="String" />
        <asp:Parameter Name="Reg_date" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="emp_name" Type="String" />
        <asp:Parameter Name="contact" Type="String" />
        <asp:Parameter Name="address" Type="String" />
        <asp:Parameter Name="jobtitle" Type="String" />
        <asp:Parameter Name="salary" Type="String" />
        <asp:Parameter Name="gender" Type="String" />
        <asp:Parameter Name="emailID" Type="String" />
        <asp:Parameter Name="profilepic" Type="String" />
        <asp:Parameter Name="Reg_date" Type="String" />
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_emp_name" Type="String" />
        <asp:Parameter Name="original_emp_name" Type="String" />
        <asp:Parameter Name="original_contact" Type="String" />
        <asp:Parameter Name="original_contact" Type="String" />
        <asp:Parameter Name="original_address" Type="String" />
        <asp:Parameter Name="original_address" Type="String" />
        <asp:Parameter Name="original_jobtitle" Type="String" />
        <asp:Parameter Name="original_jobtitle" Type="String" />
        <asp:Parameter Name="original_salary" Type="String" />
        <asp:Parameter Name="original_salary" Type="String" />
        <asp:Parameter Name="original_gender" Type="String" />
        <asp:Parameter Name="original_gender" Type="String" />
        <asp:Parameter Name="original_emailID" Type="String" />
        <asp:Parameter Name="original_emailID" Type="String" />
        <asp:Parameter Name="original_profilepic" Type="String" />
        <asp:Parameter Name="original_profilepic" Type="String" />
        <asp:Parameter Name="original_Reg_date" Type="String" />
        <asp:Parameter Name="original_Reg_date" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

