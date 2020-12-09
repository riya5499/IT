<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="q1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString='<%$ ConnectionStrings:Week8ConnectionString %>' 
                SelectCommand="SELECT * FROM [Staff]">
            </asp:SqlDataSource>
            <br />
            STAFF PORTAL
            <br />
            <hr />
            <asp:GridView ID="GridView1"
                runat="server" 
                DataSourceID="SqlDataSource1" 
                AllowSorting="True" 
                OnRowDataBound="HighlightRowAction"
                CellPadding="5" 
                CellSpacing="5" 
                BorderColor="Black" 
                BorderWidth="3"
                AutoGenerateColumns = "false">
                <Columns>
                    <asp:TemplateField HeaderText="Staff Details" SortExpression="Name">
                        <ItemTemplate>
                            <b>Name : </b><%# Eval("Name") %>
                            <br />
                            <b>Age : </b><%# Eval("Age") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Designation" HeaderText="Designation"></asp:BoundField>
                    <asp:BoundField DataField="Salary" HeaderText="Salary"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <br />         
        </div>
    </form>
</body>
</html>
