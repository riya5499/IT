<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="q4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="left" style="width:50%; float:left;height:400px">
                <br />
                ADD EMPLOYEE
                <br />
                <hr />
                <br />
                Employee Name : <asp:TextBox runat="server" ID="empName"></asp:TextBox>
                <br />
                <br />
                Company Name : <asp:TextBox runat="server" ID="companyName"></asp:TextBox>
                <br />
                <br />
                Salary : <asp:TextBox runat="server" ID="salary"></asp:TextBox>
                <br />
                <br />
                <asp:Button runat="server" ID="insertEmployee" Text="Add Employee" OnClick="AddEmployeeAction" />
                <br />
                <br />
                <asp:Label runat="server" ID="lbl1"></asp:Label>
            </div>
            <div id="right" style="width:50%; float:right; height:400px">
                <br />
                FIND EMPLOYEE
                <br />
                <hr />
                <br />
                Company Name : <asp:TextBox runat="server" ID="findCompany"></asp:TextBox>
                <br />
                <br />
                <asp:Button runat="server" ID="find" Text="Find Employees" OnClick="FindEmployeeAction" />
                <br />
                <br />
                <asp:Label runat="server" ID="lbl2"></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>
