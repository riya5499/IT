<%@ Page Title="" Language="C#" MasterPageFile="~/MobileShopee.Master" AutoEventWireup="true" CodeBehind="default2.aspx.cs" Inherits="question_4.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Header" runat="server">
    <br />
    <div style="text-align:center">Mobile Shopee</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="LeftPanel" runat="server">
    <div style="width:20%; height:400px; float:left; background-color:lavender" >
        <div style="margin:10px; text-align:center; font-family:'Times New Roman', Times, serif; font-size:20px";>
            <asp:Label runat="server" ID="mobileNameLabel"></asp:Label>
        </div>
        <div style="margin:10px; align-content:center">
            <asp:Image runat="server" ID="mobileImg" style="width:190px; height:350px" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="RightPanel" runat="server">
    <div style="width:80%; height:400px; float:left; background-color:lavenderblush;">
        <div style="margin-left:10px; margin-top:10px">
            <asp:Label runat="server" ID="screen"></asp:Label>
            <br />
            <asp:Label runat="server" ID="memory"></asp:Label>
            <br />
            <asp:Label runat="server" ID="camera"></asp:Label>
            <br />
            <asp:Label runat="server" ID="battery"></asp:Label>
            <br />
            <br />
            <asp:Button runat="server" ID="BackBtn" OnClick="BackAction" Text="Back" />
        </div> 
        <br />
        <br />
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Footer" runat="server">
<div style="text-align:center">
<pre>
Contact Number: 0000-0000
Email: abcd@gmail.com
</pre>
</div>
</asp:Content>
