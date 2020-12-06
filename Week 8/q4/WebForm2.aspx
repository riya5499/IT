<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="q2.WebForm2" %>

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
            <asp:SqlDataSource ID="SqlDS1" runat="server" ProviderName="System.Data.SqlClient" ConnectionString="<%$ ConnectionStrings:Trip %>" SelectCommand="SELECT * FROM Package WHERE Place=@p">
            <SelectParameters>
                <asp:QueryStringParameter Name="p" QueryStringField="Place" />
            </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridPackage" runat="server" DataSourceID="SqlDS1" />
        </div>
    </form>
</body>
</html>
