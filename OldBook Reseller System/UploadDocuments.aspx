<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UploadDocuments.aspx.cs" Inherits="UploadDocuments" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="#006699" Text="Upload Books"></asp:Label>
    <hr color="orange" />
<table style="width: 100%;">
    <tr>
        <td>
            Upload Book Photo</td>
        <td>
            <asp:FileUpload ID="fuFile" runat="server" Width="300px" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="fuFile" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Book Name</td>
        <td>
            <asp:TextBox ID="txtTitle" runat="server" Width="300px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtTitle" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Book Type</td>
        <td>
            <asp:DropDownList ID="ddlDocType" runat="server" Width="300px" 
                AppendDataBoundItems="True" DataSourceID="sqlDocTypes" DataTextField="DocType" 
                DataValueField="DocType">
                <asp:ListItem>Select</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="ddlDocType" ErrorMessage="RequiredFieldValidator" 
                InitialValue="Select">*</asp:RequiredFieldValidator>
            <asp:SqlDataSource ID="sqlDocTypes" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [DocType] FROM [DocTypes]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            Access Type</td>
        <td>
            <asp:RadioButtonList ID="rbAccessType" runat="server" 
                RepeatDirection="Horizontal">
                <asp:ListItem Selected="True">public</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td>
            Book
            Details</td>
        <td>
            <asp:TextBox ID="txtDetails" runat="server" Rows="4" TextMode="MultiLine" 
                Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Cost</td>
        <td>
            <asp:TextBox ID="txtCost" runat="server" Width="100px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" 
                Text="Upload" />
        </td>
    </tr>
</table>
    <hr color="orange" />
    <asp:Label ID="lblmsg" runat="server" Font-Names="Courier New" ForeColor="Red"></asp:Label>
    <asp:HiddenField ID="hfCDate" runat="server" />
    <asp:SqlDataSource ID="sqlDocuments" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Documents] WHERE [DocID] = @DocID" 
        InsertCommand="INSERT INTO [Documents] ([FileName], [Title], [Owner], [DocType], [AccessType], [UploadDate],Details,cost) VALUES (@FileName, @Title, @Owner, @DocType, @AccessType, @UploadDate,@details,@cost)" 
        SelectCommand="SELECT * FROM [Documents]" 
        
        
        UpdateCommand="UPDATE [Documents] SET [FileName] = @FileName, [Title] = @Title, [Owner] = @Owner, [DocType] = @DocType, [AccessType] = @AccessType, [UploadDate] = @UploadDate WHERE [DocID] = @DocID">
        <DeleteParameters>
            <asp:Parameter Name="DocID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="FileName" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Owner" Type="String" />
            <asp:Parameter Name="DocType" Type="String" />
            <asp:Parameter Name="AccessType" Type="String" />
            <asp:Parameter Name="UploadDate" Type="DateTime" />
            <asp:Parameter Name="DocID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="fuFile" Name="FileName" 
                PropertyName="FileName" Type="String" />
            <asp:ControlParameter ControlID="txtTitle" Name="Title" PropertyName="Text" 
                Type="String" />
            <asp:SessionParameter Name="Owner" SessionField="userid" Type="String" />
            <asp:ControlParameter ControlID="ddlDocType" Name="DocType" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="rbAccessType" Name="AccessType" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="hfCDate" Name="UploadDate" 
                PropertyName="Value" Type="DateTime" />
            <asp:ControlParameter ControlID="txtDetails" Name="details" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="txtCost" Name="cost" PropertyName="Text" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

