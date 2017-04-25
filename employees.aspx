<%@ Page Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="employees.aspx.cs" Inherits="employees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblPageTitle" runat="server" Text="Employees:" 
        Style="position:absolute; top: 118px; left: 13px;" CssClass="mylabel" 
        Font-Bold="True" Font-Size="14px" ForeColor="Red"></asp:Label>
    <asp:GridView ID="gridEmployees" runat="server" 
        Style="position:absolute; top: 140px; left: 10px;" CellPadding="4" 
        Font-Names="Tahoma" Font-Size="12px" ForeColor="#333333" GridLines="None" 
        AutoGenerateColumns="False" onrowdeleting="gridEmployees_RowDeleting">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Designation" HeaderText="Designation" />
            <asp:BoundField DataField="LevelID" HeaderText="Level" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" />
            <asp:BoundField DataField="Password" HeaderText="Password" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:Label ID="lblError" runat="server" CssClass="mylabel" 
        Style="position:absolute;top:59px; left:13px;" Font-Bold="True" 
        ForeColor="Red"></asp:Label>
    <asp:HyperLink ID="hypNewEmployee" runat="server" 
    Style="position:absolute; top: 120px; left: 100px;" CssClass="mylabel" 
    Font-Bold="True" NavigateUrl="newemployee.aspx">New Employee</asp:HyperLink>
</asp:Content>