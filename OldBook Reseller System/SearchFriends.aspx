<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchFriends.aspx.cs" Inherits="SearchFriends" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="#006699" Text="Search Friends"></asp:Label>
    <hr color="orange" />
    <asp:Panel ID="Panel1" runat="server" GroupingText="Pending Request">
        <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlPending">
        <ItemTemplate>
        <img src='<%#Eval("photofile") %>' height=50px title='<%#Eval("name") %>' border=1px />
        </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlPending" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT Request.ReqTo, UserMaster.Name, UserMaster.PhotoFile FROM Request INNER JOIN UserMaster ON Request.ReqTo = UserMaster.UserID where reqfrom=@reqfrom">
            <SelectParameters>
                <asp:SessionParameter Name="reqfrom" SessionField="userid" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <hr color="orange" />
Search By
<asp:DropDownList ID="ddlSearchBy" runat="server" Height="16px" Width="82px">
    <asp:ListItem>Name</asp:ListItem>
    <asp:ListItem>City</asp:ListItem>
    <asp:ListItem>College</asp:ListItem>
    <asp:ListItem>Branch</asp:ListItem>
</asp:DropDownList>
<asp:TextBox ID="txtSearch" runat="server" Width="116px"></asp:TextBox>
<asp:Button ID="btnSearch" runat="server" Text="Search" onclick="btnSearch_Click" />
    &nbsp;<asp:Label ID="lbl" runat="server" Font-Names="Courier New" 
        ForeColor="Red"></asp:Label>
    <hr color="orange" />
    <asp:SqlDataSource ID="sqlSearch" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [UserID], [Name], [City], [College], [Branch], [PhotoFile] FROM [UserMaster] WHERE ([Name] LIKE '%' + @Name + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSearch" Name="Name" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlFriends" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [FriendID] FROM [Friends] WHERE ([UserID] = @UserID)">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="userid" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="sqlSearch">
    <ItemTemplate>
    <table>
    <tr>
    <td style="width:125px"  >
        <img src='<%#Eval("photofile") %>' height=75px border=1 /><br />
        <a href=Addfriend.aspx?fid=<%#Eval("userid") %>  style="color:red" >Add Friend</a>
    </td>
    <td>
        <b><%#Eval("name") %></b><hr color=black size=1px />
        <%#Eval("City") %><br />
        <%#Eval("college") %><br />
        <%#Eval("branch") %>
    </td>
    </tr>
    </table>
    
    </ItemTemplate>
    <SeparatorTemplate>
        <hr color=orange size=1px />
    </SeparatorTemplate>
    </asp:Repeater>
</asp:Content>

