<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="#006699" Text="Edit Profile"></asp:Label>
    <hr color="orange" />
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
    CellPadding="5" CellSpacing="5" DataKeyNames="id" 
    DataSourceID="SqlEditProfile" Height="50px" Width="500px">
    <Fields>
        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
            SortExpression="id" InsertVisible="False" />
        <asp:BoundField DataField="UserID" HeaderText="UserID" 
            SortExpression="UserID" />
        <asp:BoundField DataField="Name" HeaderText="Name" 
            SortExpression="Name" />
        <asp:BoundField DataField="Address" HeaderText="Address" 
            SortExpression="Address" />
        <asp:BoundField DataField="City" HeaderText="City" 
            SortExpression="City" />
        <asp:BoundField DataField="College" HeaderText="College" 
            SortExpression="College" />
        <asp:BoundField DataField="Branch" HeaderText="Branch" 
            SortExpression="Branch" />
        <asp:BoundField DataField="Year" HeaderText="Year" 
            SortExpression="Year" />
        <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
            SortExpression="EmailID" />
        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
            SortExpression="ContactNo" />
        <asp:CommandField ButtonType="Button" ShowEditButton="True" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlEditProfile" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [UserMaster] WHERE [id] = @id" 
    InsertCommand="INSERT INTO [UserMaster] ([UserID], [Name], [Address], [City], [College], [Branch], [Year], [EmailID], [ContactNo]) VALUES (@UserID, @Name, @Address, @City, @College, @Branch, @Year, @EmailID, @ContactNo)" 
    SelectCommand="SELECT [id], [UserID], [Name], [Address], [City], [College], [Branch], [Year], [EmailID], [ContactNo] FROM [UserMaster]" 
    
        UpdateCommand="UPDATE [UserMaster] SET [UserID] = @UserID, [Name] = @Name, [Address] = @Address, [City] = @City, [College] = @College, [Branch] = @Branch, [Year] = @Year, [EmailID] = @EmailID, [ContactNo] = @ContactNo WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="UserID" Type="String" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="College" Type="String" />
        <asp:Parameter Name="Branch" Type="String" />
        <asp:Parameter Name="Year" Type="String" />
        <asp:Parameter Name="EmailID" Type="String" />
        <asp:Parameter Name="ContactNo" Type="String" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="UserID" Type="String" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="City" Type="String" />
        <asp:Parameter Name="College" Type="String" />
        <asp:Parameter Name="Branch" Type="String" />
        <asp:Parameter Name="Year" Type="String" />
        <asp:Parameter Name="EmailID" Type="String" />
        <asp:Parameter Name="ContactNo" Type="String" />
    </InsertParameters>
</asp:SqlDataSource>
    <hr color="orange" />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/EditProfile.aspx">Click Here to change profile photo</asp:HyperLink>
    <asp:Image ID="Image3" runat="server" Height="20px" 
        ImageUrl="~/web_img/blinking.gif" Width="30px" />
    
</asp:Content>

