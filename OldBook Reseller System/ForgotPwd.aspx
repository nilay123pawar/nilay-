<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="ForgotPwd.aspx.cs" Inherits="ForgotPwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                    <asp:Label ID="Label1" runat="server" Font-Names="Impact" Font-Size="X-Large" 
                        ForeColor="#006699" Text="Forgot Password"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Enter Username</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtusername" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" Font-Bold="True" SetFocusOnError="True" 
                    ValidationGroup="Z" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            &nbsp;<asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Submit" CssClass="button" ValidationGroup="Z" />
            </td>
        </tr>
        <tr>
            <td style="height: 23px">
                Security Question</td>
            <td style="height: 23px">
                <asp:Label ID="lblque" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="#003399"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Enter Answer</td>
            <td>
                <asp:TextBox ID="txtans" runat="server" ontextchanged="txtans_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtans" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" Font-Bold="True" SetFocusOnError="True" 
                    ValidationGroup="x" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnGetPwd" runat="server"
                     Text="Get Password" onclick="btnGetPwd_Click" ValidationGroup="x" CssClass="button" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [que], [ans], [Pwd] FROM [UserMaster] WHERE ([UserID] = @UserID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtusername" Name="UserID" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:Label ID="lblpwd" runat="server" Font-Bold="True" ForeColor="#FF3300" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HiddenField ID="hfAns" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtpp" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

