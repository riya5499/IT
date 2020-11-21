<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Election.aspx.cs" Inherits="question_1.Election" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 66%;">
            <tr>
                <td class="style1" colspan="3" style="text-align:center">
                <asp:Label ID="lblmsg" 
                Text="President Election Form : Choose your president" 
                runat="server" />
                </td>
            </tr>

            <tr>
                <td class="style3">
                Candidate:
                </td>

                <td class="style2">
                <asp:DropDownList ID="ddlcandidate" runat="server"  style="width:239px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>M H Kabir</asp:ListItem>
                    <asp:ListItem>Steve Taylor</asp:ListItem>
                    <asp:ListItem>John Abraham</asp:ListItem>
                    <asp:ListItem>Venus Williams</asp:ListItem>
                </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvcandidate" 
                            runat="server" ControlToValidate ="ddlcandidate"
                            ErrorMessage="Please choose a candidate" 
                            InitialValue="" ValidationGroup="validation">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td class="style3">
                House:
                </td>

                <td class="style2">
                <asp:RadioButtonList ID="rblhouse" runat="server">
                    <asp:ListItem>Red</asp:ListItem>
                    <asp:ListItem>Blue</asp:ListItem>
                    <asp:ListItem>Yellow</asp:ListItem>
                    <asp:ListItem>Green</asp:ListItem>
                </asp:RadioButtonList>
                </td>

                <td>
                    <asp:RequiredFieldValidator ID="rfvhouse" runat="server" 
                        ControlToValidate="rblhouse" ErrorMessage="Enter your house name"
                        ValidationGroup="validation">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="style3">
                Class:
                </td>

                <td class="style2">
                <asp:TextBox ID="txtclass" runat="server"></asp:TextBox>
                </td>
                <td>
                     <asp:RequiredFieldValidator ID="rfvclass" 
                            runat="server" ControlToValidate ="txtclass"
                            ErrorMessage="Please enter class between 6 and 12" 
                            InitialValue="" ValidationGroup="validation">
                    </asp:RequiredFieldValidator>

                    <asp:RangeValidator ID="rvclass" 
                            runat="server" ControlToValidate="txtclass" 
                            ErrorMessage="Enter your class (6 - 12)" MaximumValue="12" 
                            MinimumValue="6" Type="Integer" ValidationGroup="validation">
                    </asp:RangeValidator>
                </td>
            </tr>
           
            <tr>
                <td class="style3">
                Email:
                </td>

                <td class="style2">
                <asp:TextBox ID="txtemail" runat="server" style="width:250px">
                </asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvemail"
                            runat="server" ControlToValidate ="txtemail"
                            ErrorMessage="Please enter your email" 
                            InitialValue="" ValidationGroup="validation">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="remail" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Enter your email" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ValidationGroup="validation">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            
            <tr>
                <td class="style3">
                    Parent's Contact Number:
                </td>
                <td>
                    <asp:TextBox ID="txtcontact" runat="server" style="width:250px">
                    </asp:TextBox>
                </td>
                <td>
                     <asp:CustomValidator ID="cvcontact" runat="server"
                        ControlToValidate="txtcontact" ErrorMessage="Contact number should contain 10 digits"
                        ValidateEmptyText="false" OnServerValidate="ValidateContact"
                        ValidationGroup="validation">
                    </asp:CustomValidator>
                </td>
            </tr>
           
            <tr>
                <td class="style3" style="text-align: center" colspan="3">
                <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" 
                    style="text-align: center; width:140px" Text="Submit" ValidationGroup="validation"/>
                </td>
            </tr>
            <tr>
                <td class="style3" style="text-align: center" colspan="3">
                    <asp:Label ID="successLabel" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            DisplayMode ="BulletList" ShowSummary="false" 
            ShowMessageBox ="true" HeaderText="Errors:" 
            ValidationGroup="validation"/>
    </form>
</body>
</html>
