﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="q2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            LEGENDS
            <br />
            <hr />
            <br />
            <b>Choose Genre : </b> <asp:DropDownList runat="server" ID="genre" AutoPostBack="true" OnSelectedIndexChanged="GenreChanged"></asp:DropDownList>
            <br />
            <br />
            <b>Choose Legend : </b>
            <br />
            <asp:ListBox runat="server" ID="legendList" AutoPostBack="true" OnSelectedIndexChanged="DisplayLegend"></asp:ListBox>
            <br />
            <br />
            <asp:Label runat="server" ID="Info"></asp:Label>
        </div>
    </form>
</body>
</html>
