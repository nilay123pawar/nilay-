<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="admin_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td bgcolor="#336699">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/web_img/registration.png" 
                    Width="50px" Height="50px" />
            </td>
            <td bgcolor="#336699" align="left">
                <asp:Label ID="Label1" runat="server" Text="Search User" Font-Size="Large" 
                    ForeColor="White"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 22px">
                &nbsp;</td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                    Text="Search"></asp:Label>
            </td>
            <td style="height: 22px">
<asp:DropDownList ID="ddlSearchBy" runat="server" Height="16px" Width="82px">
    <asp:ListItem>Name</asp:ListItem>
    <asp:ListItem>City</asp:ListItem>
    <asp:ListItem>College</asp:ListItem>
    <asp:ListItem>Branch</asp:ListItem>
</asp:DropDownList>
<asp:TextBox ID="txtSearch" runat="server" Width="116px"></asp:TextBox>
<asp:Button ID="btnSearch" runat="server" Text="Search" onclick="btnSearch_Click" />
            </td>
        </tr>
        <tr>
            <td style="height: 22px">
                &nbsp;</td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataGetUser" ForeColor="#333333" 
                    GridLines="None" Width="100%" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" SelectText="View" />
                        <asp:BoundField DataField="usertype" HeaderText="usertype" 
                            SortExpression="usertype" />
                        <asp:BoundField DataField="UserID" HeaderText="UserID" 
                            SortExpression="UserID" />
                        <asp:BoundField DataField="Pwd" HeaderText="Pwd" SortExpression="Pwd" 
                            Visible="False" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Branch" HeaderText="Branch" 
                            SortExpression="Branch" />
                        <asp:BoundField DataField="PhotoFile" HeaderText="PhotoFile" 
                            SortExpression="PhotoFile" Visible="False" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataGetUser" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

