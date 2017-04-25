<%@ Page Language="C#" MasterPageFile="~/ManagerMasterPage.master" AutoEventWireup="true" CodeFile="payslips.aspx.cs" Inherits="payslips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="dropEmployee" runat="server" CssClass="mytextbox"         
        Style="position:absolute; top: 122px; left: 76px; height: 18px; width: 188px;" 
        TabIndex="10" AutoPostBack="True" 
        onselectedindexchanged="dropEmployee_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Label ID="lblError" runat="server" CssClass="mylabel" 
        Style="position:absolute;top:59px; left:13px;" Font-Bold="True" 
        ForeColor="Red"></asp:Label>
     <asp:Label ID="lblMessage" runat="server" CssClass="mylabel" 
        Style="position:absolute;top:159px; left:13px;" Font-Bold="True" 
        ForeColor="Red"></asp:Label>
     <asp:Label ID="lblEmployee" runat="server" Text="Employee:" 
        Style="position:absolute; top: 123px; left: 11px;" CssClass="mylabel"></asp:Label>
     <asp:GridView ID="gridPayslips" runat="server" 
        Style="position:absolute; top: 150px; left: 10px;" CellPadding="4" 
        Font-Names="Tahoma" Font-Size="12px" ForeColor="#333333" GridLines="None" 
        AutoGenerateColumns="False" onrowdeleting="gridPayslips_RowDeleting" 
        onrowcommand="gridPayslips_RowCommand">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="PayslipID" HeaderText="Payslip ID" />
            <asp:BoundField DataField="MonthAndYear" HeaderText="Month and Year" />
            <asp:BoundField DataField="GeneratedOn" HeaderText="Generated On" />
            <asp:BoundField DataField="BasicSalary" HeaderText="Basic Salary" />
            <asp:BoundField DataField="NoofLeaves" HeaderText="No. of Leaves." />
            <asp:BoundField DataField="SalaryPerDay" HeaderText="Salary Per Day" />
            <asp:BoundField DataField="DeductionForLeaves" HeaderText="Deduction For Leaves" />
            <asp:BoundField DataField="NetSalary" HeaderText="Net Salary" />
            <asp:ButtonField CommandName="Print" Text="Print" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:LinkButton ID="lnkGeneratePayslip" runat="server" 
        Style="position:absolute; top: 124px; left: 277px; height: 14px; width: 113px;" 
        CssClass="mylabel" Font-Bold="True" onclick="lnkGeneratePayslip_Click" 
        Visible="False">Generate Payslip...</asp:LinkButton>
</asp:Content>