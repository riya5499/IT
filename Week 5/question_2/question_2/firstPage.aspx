<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="firstPage.aspx.cs" Inherits="question_2.firstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" ID="nameLabel">Name: </asp:Label>
            <asp:TextBox runat="server" ID="name"></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" ID="rollNoLabel">Roll No.: </asp:Label>
            <asp:TextBox runat="server" ID="rollNo"></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" ID="subjectLabel">Subject: </asp:Label>
            <asp:DropDownList runat="server" ID="subject"></asp:DropDownList>
            <br />
            <br />
            <asp:Button runat="server" ID="submitBtn" Text="submit" OnClick="submitFunct"/>
        </div>
    </form>
</body>
</html>
