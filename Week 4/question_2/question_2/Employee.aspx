<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="question_2.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" defaultfocus="empList">
        <div>
            <asp:Label runat="server" ID="empListLabel">Employee ID:</asp:Label> 
            <asp:DropDownList runat="server" ID="empList" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged"></asp:DropDownList>
            <br />
            <br />
            <asp:Image runat="server" ID="empImage" Visible="false" Height="160px" Width="212px"/>
            <br />
            <br />
            <asp:Label runat="server" ID="empNameLabel">Employee Name:</asp:Label>
            <asp:TextBox runat="server" ID="empName"></asp:TextBox>
            <br />
            <br />
            <asp:Label runat="server" ID="dojLabel">Date of Joining (YYYY-MM-DD):</asp:Label>
            <asp:TextBox runat="server" ID="doj"></asp:TextBox>
            <br />
            <br />
            <asp:Button runat="server" ID="eligibility" OnClick="CheckEligibility" Text="Am I eligible?" />
            <br />
            <br />
            <asp:Label runat="server" ID="answerLabel"></asp:Label>
        </div>
    </form>
</body>
</html>
