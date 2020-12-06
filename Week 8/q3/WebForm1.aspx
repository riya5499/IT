<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="q3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            State : <asp:DropDownList runat="server" ID="stateList" AutoPostBack="true"></asp:DropDownList>
            <br />
            <br />

            <asp:SqlDataSource ID="SqlDS1" runat="server" ProviderName="System.Data.SqlClient" ConnectionString="<%$ ConnectionStrings:week8q3 %>" SelectCommand="SELECT * FROM City WHERE StateID = @sID">
                <SelectParameters>
                    <asp:ControlParameter Name="sID" ControlID="stateList" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>

            City : <asp:DropDownList runat="server" ID="cityList" DataSourceID="SqlDS1" DataTextField="CityName" DataValueField="CityName" AutoPostBack="true" OnSelectedIndexChanged="SelectAction"></asp:DropDownList>
            <br />
            <br />
            <asp:Label runat="server" ID="lbl"></asp:Label>
        </div>
    </form>
</body>
</html>
