<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="admin_ViewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td bgcolor="#336699">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/web_img/registration.png" 
                    Width="50px" Height="50px" />
            </td>
            <td bgcolor="#336699" align="left">
                <asp:Label ID="Label1" runat="server" Text="User Details" Font-Size="Large" 
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
            <td style="height: 22px" colspan="2">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataSourceID="SqlDataGetDetails" ForeColor="#333333" 
                    GridLines="None" Height="82px" Width="261px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <img src="../<%# Eval("PhotoFile") %>" width="100px" height="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="PhotoFile" HeaderText="PhotoFile" 
                            SortExpression="PhotoFile" Visible="False" />

                        <asp:BoundField DataField="UserID" HeaderText="UserID" 
                            SortExpression="UserID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Branch" HeaderText="Branch" 
                            SortExpression="Branch" />
                        <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" 
                            SortExpression="BirthDate" />
                        <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                            SortExpression="EmailID" />
                        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                            SortExpression="ContactNo" />
                        <asp:BoundField DataField="company" HeaderText="company" 
                            SortExpression="company" />
                        <asp:BoundField DataField="post" HeaderText="post" SortExpression="post" />
                        <asp:BoundField DataField="tech" HeaderText="tech" SortExpression="tech" />
                    </Fields>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataGetDetails" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT PhotoFile,[UserID], [Name], [Address], [City], [Branch], [BirthDate], [EmailID], [ContactNo], [company], [post], [tech] FROM [UserMaster] WHERE ([UserID] = @UserID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="UserID" QueryStringField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
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
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

