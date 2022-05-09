<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePhoto.aspx.cs" Inherits="ChangePhoto" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="#006699" Text="Change Profile Photo"></asp:Label>
    <hr color="orange" />
Select Photo&nbsp;
<asp:FileUpload ID="fuPhoto" runat="server" Width="300px" />
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ControlToValidate="fuPhoto" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="btnUpload" runat="server" onclick="btnUpload_Click" 
    Text="Upload" />
    <hr color="orange" />
<asp:SqlDataSource ID="sqlPhoto" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [UserMaster] WHERE [UserID] = @UserID" 
    InsertCommand="INSERT INTO [UserMaster] ([PhotoFile], [UserID]) VALUES (@PhotoFile, @UserID)" 
    SelectCommand="SELECT [PhotoFile], [UserID] FROM [UserMaster]" 
    UpdateCommand="UPDATE [UserMaster] SET [PhotoFile] = @PhotoFile WHERE [UserID] = @UserID">
    <DeleteParameters>
        <asp:Parameter Name="UserID" Type="String" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:ControlParameter ControlID="hfPhotoUrl" Name="PhotoFile" 
            PropertyName="Value" Type="String" />
        <asp:SessionParameter Name="UserID" SessionField="userid" Type="String" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="PhotoFile" Type="String" />
        <asp:Parameter Name="UserID" Type="String" />
    </InsertParameters>
</asp:SqlDataSource>
<asp:HiddenField ID="hfPhotoUrl" runat="server" />
</asp:Content>

