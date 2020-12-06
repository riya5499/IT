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
            STAFF PORTAL
            <br />
            <hr />
            <br />
            StaffID : <asp:DropDownList runat="server" ID="staffId" AutoPostBack="true" OnSelectedIndexChanged="DisplayEmployeeInfo"></asp:DropDownList>
            <br />
            <br />
            <asp:Label runat="server" ID="info"></asp:Label>
            <br />
            <br />
            City Options:
            <br />
            <br />
            <asp:ListBox runat="server" ID="city"></asp:ListBox>
            <br />
            <br />
            <asp:Button runat="server" ID="update" OnClick="UpdateAction" Text="Update" />
        </div>
    </form>
</body>
</html>
