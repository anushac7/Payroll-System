<%@ Page Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="deleteemployee.aspx.cs" Inherits="deleteemployee" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblError" runat="server" CssClass="mylabel" 
        Style="position:absolute;top:59px; left:13px;" Font-Bold="True" 
        ForeColor="Red"></asp:Label>
    <asp:Label ID="lblWarning" runat="server" Text="Are you sure to delete this employee?" 
        Style="position:absolute; top: 118px; left: 13px;" CssClass="mylabel" 
        Font-Bold="True" Font-Size="14px" ForeColor="Red"></asp:Label>
    <asp:LinkButton ID="lnkYes" runat="server" 
        Style="position:absolute; top: 152px; left: 16px;" CssClass="mylabel" 
        onclick="lnkYes_Click">Yes</asp:LinkButton>
     <asp:LinkButton ID="lnkNo" runat="server" 
        Style="position:absolute; top: 152px; left: 56px; width: 15px;" 
        CssClass="mylabel" onclick="lnkNo_Click">No</asp:LinkButton>
</asp:Content>