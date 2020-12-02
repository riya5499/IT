<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="extra_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            ELECTRONICS SHOPEE
            <br />
            <hr />
            <br />
            Manufacturer : <asp:DropDownList runat="server" ID="manufacturerList"></asp:DropDownList>
            <br />
            <br />
            Product Type : <asp:CheckBoxList runat="server" ID="productType"></asp:CheckBoxList>
            <br />
            <br />
            Quantity : <asp:TextBox runat="server" ID="quantity"></asp:TextBox>
            <br />
            <br />
            <asp:Button runat="server" ID="billBtn" Text="Produce Bill" OnClick="ProduceBill" />
        </div>
    </form>
</body>
</html>
