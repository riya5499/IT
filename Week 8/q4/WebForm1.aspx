<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="q4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Category : <asp:DropDownList runat="server" ID="categoryList" AutoPostBack="true"></asp:DropDownList>
            <br />
            <br />
            Actors : 
            <br />
            <asp:SqlDataSource ID="SqlDS1" runat="server" ProviderName="System.Data.SqlClient" ConnectionString="<%$ ConnectionStrings:week8q4 %>" SelectCommand="SELECT * FROM Actors WHERE category = @c">
                <SelectParameters>
                    <asp:ControlParameter Name="c" ControlID="categoryList" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:ListBox runat="server" ID="actorList" DataSourceID="SqlDS1" DataTextField="name" DataValueField="name" AutoPostBack="true"></asp:ListBox>

            <asp:SqlDataSource ID="SqlDS2" runat="server" ProviderName="System.Data.SqlClient" ConnectionString="<%$ ConnectionStrings:week8q4 %>" SelectCommand="SELECT * FROM Actors WHERE name = @n">
                <SelectParameters>
                    <asp:ControlParameter Name="n" ControlID="actorList" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView runat="server" ID="grid" DataSourceID="SqlDS2"></asp:GridView>
        </div>
    </form>
</body>
</html>
