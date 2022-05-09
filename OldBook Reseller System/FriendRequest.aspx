<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FriendRequest.aspx.cs" Inherits="FriendRequest" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="#006699" Text="Friend Request"></asp:Label>
    <hr color="orange" />
    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlFriendInfo">
    <ItemTemplate>
        <img src='<%#Eval("photofile") %>' height=75px border=1 />
    </ItemTemplate>
    </asp:Repeater>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="UserID" DataSourceID="SqlFriendInfo" Height="50px" Width="500px">
        <Fields>
            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" 
                SortExpression="UserID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="College" HeaderText="College" 
                SortExpression="College" />
            <asp:BoundField DataField="Branch" HeaderText="Branch" 
                SortExpression="Branch" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="PhotoFile" HeaderText="PhotoFile" 
                SortExpression="PhotoFile" Visible="False" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlFriendInfo" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [UserID], [Name], [City], [College], [Branch], [Year], [Gender], [PhotoFile] FROM [UserMaster] WHERE ([UserID] = @UserID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="UserID" QueryStringField="fid" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <hr color="orange" />
    <asp:Button ID="btnAccept" runat="server" BackColor="#FFCC00" 
        onclick="btnAccept_Click" Text="Accept" />
&nbsp;<asp:Button ID="btnReject" runat="server" BackColor="#FFCC00" 
        onclick="btnReject_Click" Text="Ignore" />
    <hr color="orange" />
    <asp:SqlDataSource ID="sqlRequest" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Request] WHERE [ReqID] = @ReqID" 
        InsertCommand="INSERT INTO [Request] ([ReqFrom], [ReqTo]) VALUES (@ReqFrom, @ReqTo)" 
        SelectCommand="SELECT * FROM [Request]" 
        UpdateCommand="UPDATE [Request] SET [ReqFrom] = @ReqFrom, [ReqTo] = @ReqTo WHERE [ReqID] = @ReqID">
        <DeleteParameters>
            <asp:QueryStringParameter Name="ReqID" QueryStringField="reqid" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="ReqFrom" Type="String" />
            <asp:Parameter Name="ReqTo" Type="String" />
            <asp:Parameter Name="ReqID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="ReqFrom" Type="String" />
            <asp:Parameter Name="ReqTo" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlFriends1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Friends] WHERE [UserID] = @UserID AND [FriendID] = @FriendID" 
        InsertCommand="INSERT INTO [Friends] ([UserID], [FriendID]) VALUES (@UserID, @FriendID)" 
        SelectCommand="SELECT * FROM [Friends]">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="String" />
            <asp:Parameter Name="FriendID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:SessionParameter Name="UserID" SessionField="userid" Type="String" />
            <asp:QueryStringParameter Name="FriendID" QueryStringField="fid" 
                Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqlFriends2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Friends] WHERE [UserID] = @UserID AND [FriendID] = @FriendID" 
        InsertCommand="INSERT INTO [Friends] ([UserID], [FriendID]) VALUES (@UserID, @FriendID)" 
        SelectCommand="SELECT * FROM [Friends]">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="String" />
            <asp:Parameter Name="FriendID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:QueryStringParameter Name="UserID" QueryStringField="fid" Type="String" />
            <asp:SessionParameter Name="FriendID" SessionField="userid" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

