<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="question_1.Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="modelLabel">Model: </asp:Label>
            <asp:TextBox runat="server" ID="model"></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" ID="manufacturerLabel">Manufacturer: </asp:Label>
            <asp:DropDownList runat="server" ID="manufacturerList" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged"></asp:DropDownList>
        </div>
    </form>
</body>
</html>
