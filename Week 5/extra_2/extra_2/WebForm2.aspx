<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="extra_2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table runat="server" ID="BillTable" BorderStyle="Dashed">
                <asp:TableHeaderRow runat="server">
                    <asp:TableHeaderCell>Item</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Manufacturer</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Price</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Quantity</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow runat="server">
                    <asp:TableCell ID="item"></asp:TableCell>
                    <asp:TableCell ID="manufacturer"></asp:TableCell>
                    <asp:TableCell ID="price"></asp:TableCell>
                    <asp:TableCell ID="quantity"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Total</asp:TableCell>
                    <asp:TableCell ID="total"></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
