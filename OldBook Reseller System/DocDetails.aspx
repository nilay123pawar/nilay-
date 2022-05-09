<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DocDetails.aspx.cs" Inherits="DocDetails" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="#006699" Text="Search Documents"></asp:Label>
    <hr color="orange" />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="DocID" DataSourceID="SqlDocuments" Height="50px" Width="700px">
        <Fields>
            <asp:BoundField DataField="DocID" HeaderText="DocID" InsertVisible="False" 
                ReadOnly="True" SortExpression="DocID" />
            <asp:BoundField DataField="FileName" HeaderText="FileName" 
                SortExpression="FileName" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Owner" HeaderText="Owner" SortExpression="Owner" />
            <asp:BoundField DataField="DocType" HeaderText="DocType" 
                SortExpression="DocType" />
            <asp:BoundField DataField="AccessType" HeaderText="AccessType" 
                SortExpression="AccessType" />
            <asp:BoundField DataField="UploadDate" HeaderText="UploadDate" 
                SortExpression="UploadDate" />
            <asp:BoundField DataField="Details" HeaderText="Details" 
                SortExpression="Details" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDocuments" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Documents] WHERE ([DocID] = @DocID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="DocID" QueryStringField="docid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <hr color="orange" />
    <asp:Panel ID="pnl" runat="server" Visible="False">
        &nbsp;<asp:Button ID="btnPay" runat="server" onclick="btnPay_Click" 
            Text="Purchase" Width="77px" />
    </asp:Panel>
    <hr color="orange" />
    <asp:SqlDataSource ID="sqlFriends" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Friends] WHERE (([UserID] = @UserID) AND ([FriendID] = @FriendID))">
        <SelectParameters>
            <asp:SessionParameter Name="UserID" SessionField="userid" Type="String" />
            <asp:ControlParameter ControlID="hfOwner" Name="FriendID" PropertyName="Value" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:HiddenField ID="hfOwner" runat="server" />
</asp:Content>

