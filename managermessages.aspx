<%@ Page Language="C#" MasterPageFile="~/ManagerMasterPage.master" AutoEventWireup="true" CodeFile="managermessages.aspx.cs" Inherits="adminmessages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <asp:Label ID="lblMessage" runat="server" CssClass="mylabel" 
        Style="position:absolute;top:159px; left:13px;" Font-Bold="True" 
        ForeColor="Red"></asp:Label>
    <asp:Label ID="lblPageTitle" runat="server" Text="Messages:" 
        Style="position:absolute; top: 118px; left: 13px;" CssClass="mylabel" 
        Font-Bold="True" Font-Size="14px" ForeColor="Red"></asp:Label>
    <asp:GridView ID="gridMessages" runat="server" 
        Style="position:absolute; top: 140px; left: 10px;" CellPadding="4" 
        Font-Names="Tahoma" Font-Size="12px" ForeColor="#333333" GridLines="None" 
        AutoGenerateColumns="False" onrowdeleting="gridMessages_RowDeleting" 
        onselectedindexchanged="gridMessages_SelectedIndexChanged" Caption="Inbox">
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <Columns>
            <asp:BoundField DataField="MessageID" HeaderText="Message ID" />
            <asp:BoundField DataField="Date" HeaderText="Date and Time" />
            <asp:BoundField DataField="MessageFrom" HeaderText="From" />
            <asp:BoundField DataField="Message" HeaderText="Message" />
            <asp:CommandField SelectText="Reply..." ShowSelectButton="True" />
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
    <asp:HyperLink ID="hypCompose" runat="server" 
    Style="position:absolute; top: 120px; left: 100px;" CssClass="mylabel" 
    Font-Bold="True" NavigateUrl="managermessagecompose.aspx">Compose</asp:HyperLink>
    <asp:HyperLink ID="hypOutBox" runat="server" 
    Style="position:absolute; top: 120px; left: 180px;" CssClass="mylabel" 
    Font-Bold="True" NavigateUrl="managermessageoutbox.aspx">OutBox</asp:HyperLink>
</asp:Content>