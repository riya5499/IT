<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Captcha.aspx.cs" Inherits="question_4.Captcha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="captcha"></asp:Label>
            <br />
            <br />
            <asp:Label runat="server" ID="enterLabel">Enter here:</asp:Label>
            <asp:TextBox runat="server" ID="enter"></asp:TextBox>
            <br />
            <br />
            <asp:Button runat="server" ID="checkBtn" OnClick="Check" Text="Check" />
            <br />
            <br />
            <asp:Label runat="server" ID="answerLabel"></asp:Label>
        </div>
    </form>
</body>
</html>
