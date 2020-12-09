<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="q2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:Week8ConnectionString %>' SelectCommand="SELECT * FROM [Author]" UpdateCommand="UPDATE [Author] SET [FirstName] = @FirstName, [CopiesSold] = @CopiesSold WHERE [Id] = @Id">
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="CopiesSold" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="3" CellPadding="10" CellSpacing="5" BorderColor="Black" BorderWidth="2">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" HeaderStyle-BackColor="Green" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="Red"></asp:BoundField>
                    <asp:TemplateField HeaderText="Name" HeaderStyle-BackColor="Green" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="Red">
                        <ItemTemplate>
                            <b>First Name : </b><%# Eval("FirstName") %>
                            <br />
                            <b>Last Name : </b><%# Eval("LastName") %>
                            <br />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <b> First Name: </b> <asp:TextBox runat="server" ID="fname" Text='<%# Bind("FirstName") %>' />
                            <br />
                            <b> Last Name: </b> <%# Eval("LastName") %>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Book Title" HeaderText="Book Title" ReadOnly="True" HeaderStyle-BackColor="Green" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="Red"></asp:BoundField>
                    <asp:BoundField DataField="Genre" HeaderText="Genre" ReadOnly="True" HeaderStyle-BackColor="Green" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="Red"></asp:BoundField>
                    <asp:BoundField DataField="CopiesSold" HeaderText="CopiesSold" HeaderStyle-BackColor="Green" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="Red"></asp:BoundField>
                    <asp:CommandField ShowEditButton="True"></asp:CommandField>
                    
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
