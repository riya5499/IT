<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="q3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="initial"></asp:Label>
            <br />
            <br />
            Enter new value for Vanilla : <asp:TextBox runat="server" ID="newPrice"></asp:TextBox>
            <br />
            <br />
            <asp:Button runat="server" ID="modify" Text="Modify" OnClick="ModifyAction"/>
            <br />
            <br />
            
            <asp:Label runat="server" ID="final"></asp:Label>
        </div>
    </form>
</body>
</html>
