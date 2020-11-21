<%@ Page Title="" Language="C#" MasterPageFile="~/Amazon.Master" AutoEventWireup="true" CodeBehind="Baggages.aspx.cs" Inherits="question_2.Baggages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" ID="laptop">Laptop Bag</asp:Label>
    <br />
    <asp:Image runat="server" ID="laptopImg" ImageUrl="~/laptopBag.jpg" style="width:250px; height:200px;"></asp:Image>
    <br />
    <hr />
    <asp:Label runat="server" ID="trolley">Trolley Bag</asp:Label>
    <br />
    <asp:Image runat="server" ID="trolleyImg" ImageUrl="~/trolley.jpg" style="width:250px; height:200px;"></asp:Image>
    <br />
    <hr />
    <asp:Label runat="server" ID="backpack">Backpack Bag</asp:Label>
    <br />
    <asp:Image runat="server" ID="backpackImg" ImageUrl="~/backpack.jpg" style="width:250px; height:200px;"></asp:Image>
</asp:Content>
