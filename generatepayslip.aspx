<%@ Page Language="C#" MasterPageFile="~/EmployeeMasterPage.master" AutoEventWireup="true" CodeFile="generatepayslip.aspx.cs" Inherits="generatepayslip" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblError" runat="server" CssClass="mylabel" 
        Style="position:absolute;top:59px; left:13px;" Font-Bold="True" 
        ForeColor="Red"></asp:Label>
    <asp:Label ID="lblPageTitle" runat="server" Text="Generate Payslip:" 
        Style="position:absolute; top: 118px; left: 11px;" CssClass="mylabel" 
        Font-Bold="True" Font-Size="14px" ForeColor="Red"></asp:Label>
    <asp:Label ID="lblEmployee" runat="server" 
        Style="position:absolute; top: 152px; left: 147px;" CssClass="mylabel" 
        Font-Bold="True"></asp:Label>
     <asp:Label ID="LabelEmployee" runat="server" Text="Employee:" 
        Style="position:absolute; top: 152px; left: 11px;" CssClass="mylabel"></asp:Label>
     <asp:Label ID="lblMonth" runat="server" Text="Month:" 
        Style="position:absolute; top: 182px; left: 11px;" CssClass="mylabel"></asp:Label>
     <asp:DropDownList ID="dropMonth" runat="server" CssClass="mytextbox"         
        Style="position:absolute; top: 180px; left: 146px; height: 14px; width: 95px;" 
        TabIndex="10" AutoPostBack="True" 
        onselectedindexchanged="dropMonth_SelectedIndexChanged">
         <asp:ListItem>January</asp:ListItem>
         <asp:ListItem>February</asp:ListItem>
         <asp:ListItem>March</asp:ListItem>
         <asp:ListItem>April</asp:ListItem>
         <asp:ListItem>May</asp:ListItem>
         <asp:ListItem>June</asp:ListItem>
         <asp:ListItem>July</asp:ListItem>
         <asp:ListItem>August</asp:ListItem>
         <asp:ListItem>September</asp:ListItem>
         <asp:ListItem>October</asp:ListItem>
         <asp:ListItem>November</asp:ListItem>
         <asp:ListItem>December</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="dropYear" runat="server" CssClass="mytextbox"         
        Style="position:absolute; top: 180px; left: 242px; height: 13px; width: 78px;" 
        TabIndex="20" AutoPostBack="True" 
        onselectedindexchanged="dropYear_SelectedIndexChanged">
    </asp:DropDownList>
     <asp:Label ID="LabelBasicSalary" runat="server" Text="Basic Salary:" 
        Style="position:absolute; top: 212px; left: 11px; height: 14px;" 
        CssClass="mylabel"></asp:Label>
     <asp:Label ID="lblBasicSalary" runat="server" 
        Style="position:absolute; top: 212px; left: 147px; " 
        CssClass="mylabel"></asp:Label>
      <asp:Label ID="lblSalaryPerDay" runat="server" 
        Style="position:absolute; top: 272px; left: 147px; " 
        CssClass="mylabel"></asp:Label>
     <asp:Label ID="lblDeductionForLeaves" runat="server" 
        Style="position:absolute; top: 302px; left: 147px; " 
        CssClass="mylabel"></asp:Label>
      <asp:Label ID="lblNetSalary" runat="server" 
        Style="position:absolute; top: 333px; left: 147px; " 
        CssClass="mylabel"></asp:Label>
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
        ErrorMessage="Value should be between 0 and 31" 
        Style="position:absolute; top: 245px; left: 213px;" 
        ControlToValidate="txtNoOfLeaves" CssClass="mylabel" MaximumValue="31" 
        MinimumValue="0" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ShowMessageBox="True" ShowSummary="False" />
     <asp:Label ID="LabelNoOfLeaves" runat="server" Text="No. of Leaves:" 
        Style="position:absolute; top: 242px; left: 11px;" CssClass="mylabel"></asp:Label>
    <asp:TextBox ID="txtNoOfLeaves" runat="server" 
        Style="position:absolute; top: 241px; left: 146px; width: 34px;" 
        CssClass="mytextbox" TabIndex="30" AutoPostBack="True" 
        ontextchanged="txtNoOfLeaves_TextChanged">0</asp:TextBox>
    <asp:Label ID="LabelSalaryPerDay" runat="server" Text="Salary Per Day:" 
        Style="position:absolute; top: 272px; left: 11px;" CssClass="mylabel"></asp:Label>
     <asp:Label ID="LabelDeductionForLeaves" runat="server" Text="Deduction for Leaves:" 
        Style="position:absolute; top: 302px; left: 11px;" CssClass="mylabel"></asp:Label>
     <asp:Label ID="LabelNetSalary" runat="server" Text="Net Salary:" 
        Style="position:absolute; top: 332px; left: 11px;" CssClass="mylabel"></asp:Label>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        Style="position:absolute; top: 372px; left: 13px;" BackColor="#009933" 
        BorderStyle="Groove" CssClass="mylabel" Font-Bold="True" ForeColor="Yellow" 
        onclick="btnSubmit_Click" TabIndex="80" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Please Enter User Name." Style="position:absolute; top: 245px; left: 194px;" 
        ControlToValidate="txtNoOfLeaves" CssClass="mylabel" Font-Size="15px" 
        SetFocusOnError="True">*</asp:RequiredFieldValidator>
     </asp:Content>