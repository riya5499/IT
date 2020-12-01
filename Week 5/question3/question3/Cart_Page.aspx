<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart_Page.aspx.cs" Inherits="question3.Cart_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="helloLabel"></asp:Label>
            <br />
            <hr />
            <br />
            <asp:Label runat="server" ID="cart">Cart Items</asp:Label>
            <br />
            <asp:BulletedList runat="server" ID="usercart"></asp:BulletedList>
            <br />
            <asp:Button runat="server" ID="continue" OnClick="ContinueShopping" Text="Continue Shopping" />
        </div>
    </form>
</body>
</html>
