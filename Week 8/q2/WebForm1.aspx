<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="q2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            TRAVEL WORLD
            <br />
            <hr />
            <br />
            <asp:SqlDataSource ID="SqlDS1" runat="server" ProviderName="System.Data.SqlClient" ConnectionString="<%$ConnectionStrings:Trip%>" SelectCommand="SELECT * FROM Package"> </asp:SqlDataSource>

            <asp:ListBox ID="packageList" runat="server" DataSourceID="SqlDS1" DataTextField="Place" DataValueField="Place" AutoPostBack="true" OnSelectedIndexChanged="SelectAction"></asp:ListBox>
        </div>
    </form>
</body>
</html>
