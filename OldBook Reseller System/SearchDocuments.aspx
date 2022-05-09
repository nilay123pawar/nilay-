<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchDocuments.aspx.cs" Inherits="SearchDocuments" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="#006699" Text="Search Books"></asp:Label>
    <hr color="orange" />
Topic&nbsp;
<asp:TextBox ID="txtPattern" runat="server" Width="208px"></asp:TextBox>
&nbsp;<asp:Button ID="btnSearch" runat="server" Text="Search" BackColor="#FFCC00" 
        onclick="btnSearch_Click1" />
    &nbsp;<hr color="orange" />
<asp:CheckBoxList ID="chkDocs" runat="server" DataSourceID="SqlDocs" 
    DataTextField="DocType" DataValueField="DocType" RepeatDirection="Horizontal" 
        AutoPostBack="True">
</asp:CheckBoxList>
<asp:SqlDataSource ID="SqlDocs" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [DocType] FROM [DocTypes]"></asp:SqlDataSource>
    <hr color="orange" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DocID" 
        DataSourceID="SqlDocuments" Width="100%" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" >
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="Purchase" ShowSelectButton="True">
                <HeaderStyle Width="60px" />
            </asp:CommandField>
            <asp:BoundField DataField="owner" HeaderText="Owner" InsertVisible="False" 
                ReadOnly="True" SortExpression="DocID" Visible="False" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title">
                <HeaderStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="owner" HeaderText="Owner" 
                SortExpression="owner">
                <HeaderStyle Width="80px" />
            </asp:BoundField>
            <asp:BoundField DataField="Details" HeaderText="Details" 
                SortExpression="Details" Visible="False" />
                <asp:BoundField DataField="cost" HeaderText="Cost" 
                SortExpression="cost" />

        </Columns>
        <HeaderStyle BackColor="#FFCC00" ForeColor="Red" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDocuments" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [DocID], [Title], [owner], [Details],cost FROM [Documents] WHERE ((([Title] LIKE '%' + @Title + '%') OR ([Details] LIKE '%' + @Details + '%') OR ([FileName] LIKE '%' + @FileName + '%')) AND ([AccessType] &lt;&gt; @AccessType))" 
        UpdateCommand="UPDATE Documents SET HitCount =HitCount+1 where docid=@docid">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtPattern" Name="Title" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtPattern" Name="Details" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="txtPattern" Name="FileName" 
                PropertyName="Text" Type="String" />
            <asp:Parameter DefaultValue="private" Name="AccessType" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="GridView1" Name="docid" 
                PropertyName="SelectedDataKey.Value" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <hr color="orange" />
</asp:Content>

