<%@ Page Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="newemployee.aspx.cs" Inherits="newemployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblError" runat="server" CssClass="mylabel" 
        Style="position:absolute;top:59px; left:13px;" Font-Bold="True" 
        ForeColor="Red"></asp:Label>
    <asp:Label ID="lblPageTitle" runat="server" Text="New Employee:" 
        Style="position:absolute; top: 118px; left: 11px;" CssClass="mylabel" 
        Font-Bold="True" Font-Size="14px" ForeColor="Red"></asp:Label>
    <asp:Label ID="lblEmployeeID" runat="server" 
        Style="position:absolute; top: 152px; left: 97px;" CssClass="mylabel" 
        Font-Bold="True"></asp:Label>
     <asp:Label ID="lblEmpID" runat="server" Text="Employee ID:" 
        Style="position:absolute; top: 152px; left: 11px;" CssClass="mylabel"></asp:Label>
     <asp:Label ID="lblName" runat="server" Text="Name:" 
        Style="position:absolute; top: 182px; left: 11px;" CssClass="mylabel"></asp:Label>
    <asp:TextBox ID="txtName" runat="server" 
        Style="position:absolute; top: 182px; left: 96px; width: 184px;" 
        CssClass="mytextbox" TabIndex="10"></asp:TextBox>
     <asp:Label ID="lblPhone" runat="server" Text="Phone:" 
        Style="position:absolute; top: 212px; left: 11px; height: 14px;" 
        CssClass="mylabel"></asp:Label>
    <asp:TextBox ID="txtPhone" runat="server" 
        Style="position:absolute; top: 212px; left: 96px; width: 102px;" 
        CssClass="mytextbox" TabIndex="20" MaxLength="10"></asp:TextBox>
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ShowMessageBox="True" ShowSummary="False" />
     <asp:Label ID="lblEmail" runat="server" Text="E-Mail:" 
        Style="position:absolute; top: 242px; left: 11px;" CssClass="mylabel"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" 
        Style="position:absolute; top: 242px; left: 96px; width: 184px;" 
        CssClass="mytextbox" TabIndex="30"></asp:TextBox>
    <asp:Label ID="lblDesignation" runat="server" Text="Designation:" 
        Style="position:absolute; top: 272px; left: 11px;" CssClass="mylabel"></asp:Label>
    <asp:TextBox ID="txtDesignation" runat="server" 
        Style="position:absolute; top: 272px; left: 96px; width: 184px;" 
        CssClass="mytextbox" TabIndex="40"></asp:TextBox>
     <asp:Label ID="lblLevel" runat="server" Text="Level:" 
        Style="position:absolute; top: 302px; left: 11px;" CssClass="mylabel"></asp:Label>
     <asp:Label ID="lblUsername" runat="server" Text="User Name:" 
        Style="position:absolute; top: 332px; left: 11px;" CssClass="mylabel"></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server" 
        Style="position:absolute; top: 332px; left: 96px; width: 184px;" 
        CssClass="mytextbox" TabIndex="60"></asp:TextBox>
     <asp:Label ID="lblPassword" runat="server" Text="Password:" 
        Style="position:absolute; top: 362px; left: 11px;" CssClass="mylabel"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" 
        Style="position:absolute; top: 362px; left: 96px; width: 184px;" 
        CssClass="mytextbox" TabIndex="70" TextMode="Password"></asp:TextBox>
    <asp:DropDownList ID="dropLevel" runat="server" CssClass="mytextbox"         
        Style="position:absolute; top: 302px; left: 96px; height: 11px; width: 48px;" 
        TabIndex="50">
    </asp:DropDownList>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        Style="position:absolute; top: 402px; left: 13px;" BackColor="#009933" 
        BorderStyle="Groove" CssClass="mylabel" Font-Bold="True" ForeColor="Yellow" 
        onclick="btnSubmit_Click" TabIndex="80" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Please Enter Employee Name." Style="position:absolute; top: 183px; left: 290px;" 
        ControlToValidate="txtName" CssClass="mylabel" Font-Size="15px" 
        SetFocusOnError="True">*</asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Please Enter User Name." Style="position:absolute; top: 335px; left: 290px;" 
        ControlToValidate="txtUsername" CssClass="mylabel" Font-Size="15px" 
        SetFocusOnError="True">*</asp:RequiredFieldValidator>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="Please Enter Password." Style="position:absolute; top: 365px; left: 290px;" 
        ControlToValidate="txtPassword" CssClass="mylabel" Font-Size="15px" 
        SetFocusOnError="True">*</asp:RequiredFieldValidator>
</asp:Content>