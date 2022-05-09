<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="Untitled Page" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="#006699" Text="Profile"></asp:Label>
    <hr color=orange />
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
    CellPadding="2" CellSpacing="2" DataKeyNames="UserID" DataSourceID="SqlProfile" 
    Height="50px" Width="500px">
    <Fields>
        <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" 
            SortExpression="UserID" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Address" HeaderText="Address" 
            SortExpression="Address" />
        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
        <asp:BoundField DataField="College" HeaderText="College" 
            SortExpression="College" />
        <asp:BoundField DataField="Branch" HeaderText="Branch" 
            SortExpression="Branch" />
        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" 
            SortExpression="Gender" />
        <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" 
            SortExpression="BirthDate" />
        <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
            SortExpression="EmailID" />
        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
            SortExpression="ContactNo" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlProfile" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [UserID], [Name], [Address], [City], [College], [Branch], [Year], [Gender], [BirthDate], [EmailID], [ContactNo] FROM [UserMaster] WHERE ([UserID] = @UserID)">
    <SelectParameters>
        <asp:SessionParameter Name="UserID" SessionField="userid" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    <hr color=orange />
    
   
</asp:Content>

