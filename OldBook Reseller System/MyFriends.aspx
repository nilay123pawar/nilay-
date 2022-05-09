<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyFriends.aspx.cs" Inherits="MyFriends" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="#006699" Text="My Friends"></asp:Label>
    <hr color="orange" />
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlMyFriends">
    <ItemTemplate>
    <table>
    <tr>
    <td style="width:150px"  >
        <img src='<%#Eval("photofile") %>' height=75px border=1 />
    </td>
    <td>
        <b><%#Eval("name") %></b><br />
        <%#Eval("city") %><br />
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
    <asp:SqlDataSource ID="SqlMyFriends" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT Friends.FriendID, UserMaster.Name, UserMaster.City, UserMaster.College,branch, UserMaster.PhotoFile FROM Friends INNER JOIN UserMaster ON Friends.FriendID = UserMaster.UserID where friends.UserID=@userid">
        <SelectParameters>
            <asp:SessionParameter Name="userid" SessionField="userid" />
        </SelectParameters>
    </asp:SqlDataSource>
    <hr color="orange" />
</asp:Content>

