<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="extra_1.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            REGISTRATION PORTAL
            <br />
            <hr />
            <br />
            Username : <asp:TextBox runat="server" ID="username"></asp:TextBox>
            <asp:Label runat="server" ID="errorLabel" style="color:red"></asp:Label>
            <br />
            <br />
            Password : <asp:TextBox runat="server" ID="password"></asp:TextBox>
            <br />
            <br />
            Email : <asp:TextBox runat="server" ID="email"></asp:TextBox>
            <br />
            <br />
            Contact Number : <asp:TextBox runat="server" ID="contact"></asp:TextBox>
            <br />
            <br />
            <asp:Button runat="server" ID="submitBtn" Text="Submit" OnClick="SubmitAction"/>
        </div>
    </form>
</body>
</html>
