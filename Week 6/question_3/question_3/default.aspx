<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="question_3._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="lbl1">Choose Theme: </asp:Label>
            <asp:DropDownList runat="server" ID="themeList" AutoPostBack="true" OnSelectedIndexChanged="ThemeChange"></asp:DropDownList>
            <br />
            <asp:Image runat="server" ID="img" />
        </div>
    </form>
</body>
</html>
