<%@ Page Title="" Language="C#" MasterPageFile="~/Amazon.Master" AutoEventWireup="true" CodeBehind="Offers.aspx.cs" Inherits="question_2.Offers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" ID="offers">Available Offers</asp:Label>
    <br />
    <asp:Image runat="server" ID="offer1" ImageUrl="~/offer1.jpg" style="width:250px; height:200px;"></asp:Image>
    <br />
    <hr />
    <br />
    <asp:Image runat="server" ID="offer2" ImageUrl="~/offer2.jpg" style="width:250px; height:200px;"></asp:Image>
</asp:Content>
