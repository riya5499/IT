<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="extra_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height:400px">
            <div style="float:left; width:50%">
                ENTER THE FOLLOWING DETAILS
                <br />
                <hr />
                <br />
                Name : <asp:TextBox runat="server" ID="name"></asp:TextBox>
                <br /> <br />
                Date of Birth (DD/MM/YYYY) : <asp:TextBox runat="server" ID="dob"></asp:TextBox>
                <br /> <br />
                Contact Number : <asp:TextBox runat="server" ID="contact"></asp:TextBox>
                <br /> <br />
                Email : <asp:TextBox runat="server" ID="email"></asp:TextBox>
                <br /> <br />
                Enter marks out of 100 for
                <pre>
                <br />
                  English : <asp:TextBox runat="server" ID="engMarks"></asp:TextBox>
                <br />
                  Physics : <asp:TextBox runat="server" ID="phyMarks"></asp:TextBox>
                <br />
                  Chemistry : <asp:TextBox runat="server" ID="chemMarks"></asp:TextBox>
                </pre>
                <br />
                <br />
                <asp:Button runat="server" ID="submitBtn" Text="Submit" OnClick="SubmitAction" />
            </div>
            <div style="float:right; width:50%">
                <asp:Label runat="server" ID="lbl"></asp:Label>
                <br />
                <hr />
                <br />
                <asp:Label runat="server" ID="nameLbl"></asp:Label>
                <br /> <br />
                <asp:Label runat="server" ID="dobLbl"></asp:Label>
                <br /> <br />
                <asp:Label runat="server" ID="contactLbl"></asp:Label>
                <br /> <br />
                <asp:Label runat="server" ID="emailLbl"></asp:Label>
                <br /> <br />
                <asp:Label runat="server" ID="lbl2"></asp:Label>
                <br />
                <pre>
                  <asp:Label runat="server" ID="engLbl"></asp:Label>
                <br />
                  <asp:Label runat="server" ID="phyLbl"></asp:Label>
                <br />
                  <asp:Label runat="server" ID="chemLbl"></asp:Label>
                <br />
                  <asp:Label runat="server" ID="percentageLbl"></asp:Label>
                </pre>
                <br />
            </div>
        </div>
    </form>
</body>
</html>
