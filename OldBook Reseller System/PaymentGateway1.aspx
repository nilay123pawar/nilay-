<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PaymentGateway1.aspx.cs" Inherits="PaymentGateway" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <hr color="orange" />
     <table style="width:100%;">
        <tr>
           <td bgcolor="Maroon" colspan="2">
            <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" 
                                            Text="Payment Mode" Width="200px"></asp:Label>
               <br />
        </td>
        </tr>
        <tr>
            <td>
                Select Bank Name</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select Bank</asp:ListItem>
                    <asp:ListItem>State Bank of India</asp:ListItem>
                    <asp:ListItem>Bank of India</asp:ListItem>
                    <asp:ListItem>Bank of Maharashtra</asp:ListItem>
                    <asp:ListItem>Bank of Badoda</asp:ListItem>
                    <asp:ListItem>Axis Bank</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Select Card Type</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Select Card Type</asp:ListItem>
                    <asp:ListItem>Master card</asp:ListItem>
                    <asp:ListItem>Mastrov</asp:ListItem>
                    <asp:ListItem>Visa</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Enter Card Number</td>
            <td>
                <asp:TextBox ID="txtcardno" runat="server" MaxLength="14" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcardno" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Enter the card number</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtcardno" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" 
                    ValidationExpression="\d{14}">Must be 14 DigitNumber</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Enter CVV Code</td>
            <td>
                <asp:TextBox ID="txtcvv" runat="server" TextMode="Password" Width="141px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtcvv" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Enter the CVV Code</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Pay Now" class="hvr-wobble-vertical btn-style" />
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
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <hr color="orange" />
    <br />
</asp:Content>

