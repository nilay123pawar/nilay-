<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="RegistrationAlumni.aspx.cs" Inherits="RegistrationAlumni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr align=left >
            <td>
                <asp:Image ID="Image1" runat="server" Height="75px" 
                        ImageUrl="~/Images/student-world-S.JPG" />
            </td>
            <td align="Left" >
                <asp:Label ID="Label1" runat="server" Font-Names="Impact" Font-Size="XX-Large" 
                        ForeColor="#006699" Text="Registration"></asp:Label>
                <hr color=orange size=15 />
            </td>
        </tr>
        <tr align=left >
            <td align="center" colspan="2">
                <asp:Label ID="Label4" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
                        ForeColor="#006699" Text="Personal Details" Font-Bold="True"></asp:Label>
                </td>
        </tr>
        <tr align=left >
            <td colspan="2">
                <hr color=#006699 size=10 />
            </td>
        </tr>
        <tr align=left >
            <td>
                    Name</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" 
                    Display="Dynamic" ForeColor="#FF3300">Enter the name</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtName" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" 
                    ValidationExpression="[a-zA-Z ]*$">Must be in Alphabets</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr align=left >
            <td class="style1">
                    Address</td>
            <td class="style1">
                <asp:TextBox ID="txtAddress" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="txtAddress" ErrorMessage="RequiredFieldValidator" 
                    Display="Dynamic" ForeColor="#FF3300">Enter the Address</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align=left >
            <td>
                    City</td>
            <td>
                <asp:TextBox ID="txtCity" runat="server" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtCity" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#FF3300" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="txtCity" ErrorMessage="RequiredFieldValidator" 
                    Display="Dynamic" ForeColor="#FF3300">Enter the City</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="txtCity" ErrorMessage="RegularExpressionValidator" 
                    ForeColor="#FF3300" ValidationExpression="[a-zA-Z ]*$">Must be in Alphabets</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr align=left >
            <td>
                    Gender</td>
            <td>
                <asp:RadioButtonList ID="rbGender" runat="server" RepeatDirection="Horizontal" 
                        Width="125px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr align=left >
            <td>
                    BirthDate</td>
            <td>
                <asp:DropDownList ID="ddlDD" runat="server" Height="25px" Width="62px">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="ddlDD" ErrorMessage="RequiredFieldValidator" 
                        InitialValue="0" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:DropDownList ID="ddlMM" runat="server" Height="25px" Width="57px">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="ddlMM" ErrorMessage="RequiredFieldValidator" 
                        InitialValue="Select" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:DropDownList ID="ddlYY" runat="server" Height="25px" Width="63px">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="ddlYY" ErrorMessage="RequiredFieldValidator" 
                        InitialValue="0">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align=left >
            <td>
                    College</td>
            <td>
                <asp:TextBox ID="txtCollege" runat="server" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtCollege" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#FF3300" SetFocusOnError="True" Font-Bold="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align=left >
            <td>
                    Branch</td>
            <td>
                <asp:DropDownList ID="ddlBranch" runat="server">
                    <asp:ListItem>Select Branch</asp:ListItem>
                    <asp:ListItem>Physics</asp:ListItem>
                    <asp:ListItem>Chemistry</asp:ListItem>
                    <asp:ListItem>Math</asp:ListItem>
                    <asp:ListItem>Biology</asp:ListItem>
                    <asp:ListItem>Computer</asp:ListItem>

                </asp:DropDownList>
            </td>
        </tr>
        <tr align=left >
            <td>
                    year</td>
            <td>
                <asp:DropDownList ID="ddlYear" runat="server">
                    <asp:ListItem>Select Year</asp:ListItem>
                    <asp:ListItem>Passout</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr align=left >
            <td>
                    EmailID</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="400px" 
                    ontextchanged="txtEmail_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" 
                    ForeColor="#FF3300" SetFocusOnError="True" Font-Bold="True">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Must be in Proper Format</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr align=left >
            <td>
                    ContactNo</td>
            <td>
                <asp:TextBox ID="txtContactNo" runat="server" Width="400px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtContactNo" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" 
                    ValidationExpression="\d{10}">Must be proper format</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr align=left >
            <td>
                    Photo</td>
            <td>
                <asp:FileUpload ID="fuPhoto" runat="server" />
            </td>
        </tr>
        <tr align=left >
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr align=left >
            <td align="center" colspan="2" style="height: 36px">
                <asp:Label ID="Label2" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
                        ForeColor="#006699" Text="Company / Bussiness Details" 
                    Font-Bold="True"></asp:Label>
                </td>
        </tr>
        <tr align=left >
            <td align="center" colspan="2">
                <hr color=#006699 size=10 />
            </td>
        </tr>
        <tr align=left >
            <td>
                    Company / Bussiness Name</td>
            <td>
                <asp:TextBox ID="txtCompany" runat="server" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr align=left >
            <td>
                    Designation</td>
            <td>
                <asp:TextBox ID="txtDesignation" runat="server" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr align=left >
            <td>
                    Technology / Working</td>
            <td>
                <asp:TextBox ID="txtTech" runat="server" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr align=left >
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr align=left >
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
    <asp:ScriptManager ID="scriptmanager1" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:UpdatePanel ID="PnlUsrDetails" runat="server">
            <ContentTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td align="center" colspan="2">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Pristina" 
                                Font-Size="X-Large" ForeColor="#006699" Text="Authentication Details"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <hr color=#006699 size=10 />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            UserID</td>
                        <td>
                            <asp:TextBox ID="txtUserID" runat="server" AutoPostBack="True" 
                                ontextchanged="txtUserID_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txtUserID" ErrorMessage="RequiredFieldValidator" 
                                ForeColor="#FF3300" SetFocusOnError="True" Font-Bold="True">*</asp:RequiredFieldValidator>
                            <div ID="checkusername" runat="server" Visible="false">
                                <asp:Label ID="lblStatus" runat="server"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                    Password</td>
                        <td>
                            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtPwd" ErrorMessage="RequiredFieldValidator" 
                                ForeColor="#FF3300" SetFocusOnError="True" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                    Confirm</td>
                        <td>
                            <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtConfirm" ErrorMessage="RequiredFieldValidator" 
                                ForeColor="#FF3300" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPwd" ControlToValidate="txtConfirm" 
                        ErrorMessage="CompareValidator" ForeColor="#FF3300" SetFocusOnError="True">Not Matching</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                    Security Question</td>
                        <td>
                            <asp:DropDownList ID="ddlQue" runat="server" Width="400px">
                                <asp:ListItem>Select Question</asp:ListItem>
                                <asp:ListItem>What is your pet name?</asp:ListItem>
                                <asp:ListItem>What is your favourite color</asp:ListItem>
                                <asp:ListItem Value="What is your favourite teacher name?">What is your favourite teacher name?</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                    Answer</td>
                        <td>
                            <asp:TextBox ID="txtans" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="txtans" ErrorMessage="RequiredFieldValidator" 
                        Display="Dynamic" SetFocusOnError="True" ForeColor="#FF3300" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                &nbsp;
                        </td>
                        <td>
                &nbsp;
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
                            <asp:Label ID="lblmsg" runat="server" 
        Font-Names="Courier New" ForeColor="Red"></asp:Label>
    <br />
    <p align="center">
    <asp:Button ID="btnRegister" runat="server" CssClass="button" 
                                onclick="btnRegister_Click" Text="Register" />
                                </p>
    <asp:HiddenField ID="hfBDate" runat="server" />
    <asp:HiddenField ID="hfPhotoUrl" runat="server" Value="Images/User.png" />
    </asp:Content>

