<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="secondPage.aspx.cs" Inherits="question_2.secondPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="label1"></asp:Label>
            <br />
            <br />
            <asp:Label runat="server" ID="label2"></asp:Label>
            <br />
            <br />
            <asp:Button runat="server" ID="countBtn" Text="Click me!" OnClick="CountFunct" />
        </div>
    </form>
</body>
</html>
