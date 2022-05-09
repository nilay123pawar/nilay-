<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowShared.aspx.cs" Inherits="ShowShared" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
    <asp:Label ID="Label2" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="#006699" Text="Show Shared Document"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataGetShared" 
                    ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" 
                            ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="userfrom" HeaderText="From User" 
                            SortExpression="userfrom" />
                        <asp:BoundField DataField="userto" HeaderText="To User" 
                            SortExpression="userto" Visible="False" />
                        <asp:BoundField DataField="report" HeaderText="report" 
                            SortExpression="report" Visible="False" />
                        <asp:BoundField DataField="ddate" HeaderText="Shared Date" 
                            SortExpression="ddate" />

                          <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <a href='<%# Eval("report") %>' target="_blank"> Download </a>
                                </ItemTemplate>
                            </asp:TemplateField>

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
                <asp:SqlDataSource ID="SqlDataGetShared" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [id], [userfrom], [userto], [report], [ddate] FROM [Share] WHERE ([userto] = @userto)">
                    <SelectParameters>
                        <asp:SessionParameter Name="userto" SessionField="userid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

