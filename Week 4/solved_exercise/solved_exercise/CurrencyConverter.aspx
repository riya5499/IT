<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CurrencyConverter.aspx.cs" Inherits="solved_exercise.CurrencyConverter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" id="Label1">Input Currency:</asp:Label>
            <asp:TextBox runat="server" id="inputCurrency"/>
            <asp:Label id="fromLable" runat="server" >From USD to:</asp:Label>
            <asp:DropDownList id="fromCurrencyDropDown" runat="server"/>
            <br />
            <br />
            <asp:Label runat="server" id="labelAns" />
            <br />
            <br />
            <asp:Button Text="Convert!" OnClick="SubmitClickedEvent" runat="server"/>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
