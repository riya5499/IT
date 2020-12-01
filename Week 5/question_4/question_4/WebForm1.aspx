<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="question_4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="font-family: Verdana; margin: 15px;">
            <asp:Label runat="server" ID="labelOne" Text="LOGIN PAGE" style="font-size: 18px; font-weight: bold;" />
            <br /> <br />
            <asp:Label runat="server" ID="labelTwo" Text="Enter Login ID: " />
            <asp:TextBox runat="server" ID="tbOne" />
            <br /> <br />
            <asp:Label runat="server" ID="labelThree" Text="Enter Password: " />
            <asp:TextBox runat="server" ID="tbTwo" />
            <br /> <br />
            <asp:Button runat="server" ID="buttonOne" Text="Login" OnClick="Login" />
            <br /> <br />
            <asp:Label runat="server" ID="labelFour" />
            <br /> <br />
            <asp:Label runat="server" ID="labelFive" />
        </div>
        </div>
    </form>
</body>
</html>
