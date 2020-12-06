<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="q1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            JUICE SHOP
            <br />
            <hr />
            <br />
            Select Fruit : <asp:CheckBoxList runat="server" ID="fruitList"></asp:CheckBoxList>
            <br />
            <br />
            Select Ice Cream : <asp:RadioButtonList runat="server" ID="icecreamList"></asp:RadioButtonList>
            <br />
            <br />
            <asp:Button runat="server" ID="btn" Text="Select above options" OnClick="SelectAction" />
            <br />
            <br />
            <asp:Label runat="server" ID="lbl"></asp:Label>
        </div>
    </form>
</body>
</html>
