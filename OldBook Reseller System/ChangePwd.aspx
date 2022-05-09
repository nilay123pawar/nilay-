<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePwd.aspx.cs" Inherits="ChangePwd" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="#006699" Text="Change Password"></asp:Label>
    <hr color="orange" />
<table style="width: 100%;">
    <tr>
        <td>
            Old Password</td>
        <td>
            <asp:TextBox ID="txtOld" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtOld" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            New Password</td>
        <td style="margin-left: 40px">
            <asp:TextBox ID="txtNew" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtNew" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            Confirm</td>
        <td>
            <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtConfirm" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNew" 
                ControlToValidate="txtConfirm" ErrorMessage="CompareValidator">Not Matching</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnChange" runat="server" Text="Change Password" 
                Width="126px" onclick="btnChange_Click" />
        </td>
    </tr>
</table>
    <hr color="orange" />
    <asp:Label ID="lblmsg" runat="server" Font-Names="Courier New" ForeColor="Red"></asp:Label>
    <asp:SqlDataSource ID="sqlpwd" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [UserMaster] WHERE [UserID] = @UserID" 
        InsertCommand="INSERT INTO [UserMaster] ([UserID], [Pwd]) VALUES (@UserID, @Pwd)" 
        SelectCommand="SELECT [UserID], [Pwd] FROM [UserMaster]" 
        UpdateCommand="UPDATE [UserMaster] SET [Pwd] = @Pwd WHERE [UserID] = @UserID">
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="txtNew" Name="Pwd" PropertyName="Text" 
                Type="String" />
            <asp:SessionParameter Name="UserID" SessionField="userid" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="UserID" Type="String" />
            <asp:Parameter Name="Pwd" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

