<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Magzine.aspx.cs" Inherits="question_1.Magzine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="BORDER-RIGHT: thin ridge; PADDING-RIGHT: 20px; BORDER-TOP: thin ridge; PADDING-LEFT: 20px;
			     FONT-SIZE: x-small; PADDING-BOTTOM: 20px; BORDER-LEFT: thin ridge; WIDTH: 293px; PADDING-TOP: 20px;
			      BORDER-BOTTOM: thin ridge; FONT-FAMILY: Verdana; HEIGHT: 486px; BACKGROUND-COLOR: aliceblue">
                <asp:Label runat="server" ID="imageLabel">Select Image:</asp:Label>
                <asp:DropDownList runat="server" ID="lstImg"></asp:DropDownList>
                <br />
                <br />
                <asp:Label runat="server" ID="backgroundLabel">Select background color:</asp:Label>
                <asp:DropDownList runat="server" ID="lstBackground"></asp:DropDownList>
                <br />
                <br />
                <asp:Label runat="server" ID="fontStyleLabel">Select font style:</asp:Label>
                <asp:DropDownList runat="server" ID="lstFontStyle"></asp:DropDownList>
                <br />
                <br />
                <asp:Label runat="server" ID="fontSizeLabel">Select font size:</asp:Label>
                <asp:DropDownList runat="server" ID="lstFontSize"></asp:DropDownList>
                <br />
                <br />
                <asp:Label runat="server" ID="fontColorLabel">Select font color:</asp:Label>
                <asp:DropDownList runat="server" ID="lstFontColor"></asp:DropDownList>
                <br />
                <br />
                <asp:Label runat="server" ID="textLabel">Enter message:</asp:Label>
                <asp:TextBox runat="server" ID="message" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <asp:Button runat="server" ID="updateBttn" Text="Update" onClick="updateMagzine" />
            </div>
            <asp:Panel runat="server" ID="magzine" style="LEFT: 350px; POSITION: absolute; TOP: 16px"
			Height="507px" Width="339px" HorizontalAlign="Center">
                <asp:Label runat="server" ID="magzineMessage"></asp:Label>
                <br />
                <asp:Image runat="server" ID="image" Visible="false" Height="160px" Width="212px"/>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
