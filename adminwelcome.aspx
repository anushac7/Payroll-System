<%@ Page Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="adminwelcome.aspx.cs" Inherits="adminwelcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblError" runat="server" CssClass="mylabel" 
        Style="position:absolute;top:59px; left:13px;" Font-Bold="True" 
        ForeColor="Red"></asp:Label>
    <asp:Label ID="lblWelcome" runat="server" 
        Style="position:absolute;top:123px; left:14px;" Font-Bold="True" 
        ForeColor="Green" Font-Names="Tahoma" Font-Size="12px">Welcome to 
    Administrator!!</asp:Label>
</asp:Content>