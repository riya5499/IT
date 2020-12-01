<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shopping_Page.aspx.cs" Inherits="question3.Shopping_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="text-align:center">
                AMAZON
            </div>
            <br />
            <hr />
            <br />
            <div>
                Enter your name: <asp:TextBox runat="server" ID="custName"></asp:TextBox>
            </div>
            <br />
            <hr />
            <br />
            <div style="height:350px">
                <div style="float:left; width:50%;">
                    AVAILABLE PRODUCTS
                    <asp:RadioButtonList runat="server" ID="listOfProduct" AutoPostBack="true" OnSelectedIndexChanged="SelectedItem">
                        <asp:ListItem>Nutella</asp:ListItem>
                        <asp:ListItem>Toblerone</asp:ListItem>
                        <asp:ListItem>Ferrero Rochers</asp:ListItem>
                        <asp:ListItem>Temptation</asp:ListItem>
                        <asp:ListItem>Cadbury Silk</asp:ListItem>
                        <asp:ListItem>Hershey's Kisses</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </div>
                <div style="float:right; width:50%;">
                    SELECTED ITEM
                    <asp:BulletedList runat="server" ID="usercart"></asp:BulletedList>
                </div>
            </div>
            <div style="text-align:center">
                <asp:Button runat="server" ID="AddToCart" Text="Add To Cart" OnClick="AddToCartAction" />
            </div>
        </div>
    </form>
</body>
</html>
