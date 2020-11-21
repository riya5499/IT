<%@ Page Title="" Language="C#" MasterPageFile="~/Amazon.Master" AutoEventWireup="true" CodeBehind="Electronics.aspx.cs" Inherits="question_2.Electronics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" ID="categories">Categories: </asp:Label>
    <asp:DropDownList runat="server" ID="categoriesList" AutoPostBack="true" OnSelectedIndexChanged="handleChangeCategories"></asp:DropDownList>
    <br />
    <br />
    <asp:Label runat="server" ID="vendor">Vendors: </asp:Label>
    <asp:DropDownList runat="server" ID="vendorList" AutoPostBack="true" OnSelectedIndexChanged="handleChangeVendors"></asp:DropDownList>
    <br />
    <br />
    <asp:Label runat="server" ID="message"></asp:Label>
</asp:Content>
