<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="extra_3.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Dropdown" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="themeAction"></asp:DropDownList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Panel" runat="server">
    <asp:Panel ID="Panel1" runat="server"></asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Label" runat="server">
    <asp:Label ID="Label1" runat="server" Text="External Style"></asp:Label>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Buttons" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Internal" OnClick="InternalAction"/>
    <asp:Button ID="Button2" runat="server" Text="External" OnClick="ExternalAction"/>
</asp:Content>
