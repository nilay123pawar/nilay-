<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

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
                <td align="center" colspan="2">
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
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                        runat="server" ControlToValidate="txtName" Display="Dynamic" 
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ControlToValidate="txtCity" ErrorMessage="RequiredFieldValidator" 
                        Display="Dynamic" ForeColor="#FF3300">Enter the City</asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                        runat="server" ControlToValidate="txtCity" 
                        ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" 
                        ValidationExpression="[a-zA-Z ]*$">Must be in Alphabets</asp:RegularExpressionValidator>
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
                        InitialValue="0" Display="Dynamic" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    <asp:DropDownList ID="ddlMM" runat="server" Height="25px" Width="57px">
                        <asp:ListItem>Select</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="ddlMM" ErrorMessage="RequiredFieldValidator" 
                        InitialValue="Select" Display="Dynamic" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    <asp:DropDownList ID="ddlYY" runat="server" Height="25px" Width="63px">
                        <asp:ListItem Value="0">Select</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="ddlYY" ErrorMessage="RequiredFieldValidator" 
                        InitialValue="0" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align=left >
                <td>
                    College</td>
                <td>
                    <asp:TextBox ID="txtCollege" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtCollege" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr align=left >
                <td>
                    Branch</td>
                <td>
                 <asp:DropDownList ID="ddlBranch" runat="server">
                    <asp:ListItem>Select Branch</asp:ListItem>
                    <asp:ListItem>Computer</asp:ListItem>
                    

                </asp:DropDownList>
                </td>
            </tr>
            <tr align=left >
                <td>
                    year</td>
                <td>
                    <asp:DropDownList ID="ddlYear" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr align=left >
                <td>
                    EmailID</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                        runat="server" ControlToValidate="txtEmail" Display="Dynamic" 
                        ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email ID Must be in Proper Format</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr align=left >
                <td>
                    ContactNo</td>
                <td>
                    <asp:TextBox ID="txtContactNo" runat="server" Width="400px" MaxLength="10"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtContactNo" Display="Dynamic" 
                        ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" 
                        ValidationExpression="\d{10}">Mobile No. Must be proper format</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr align=left >
                <td>
                    Photo</td>
                <td>
                    <asp:FileUpload ID="fuPhoto" runat="server" Width="400px" />
                </td>
            </tr>
          
            <tr align=left >
                <td colspan="2">
                        &nbsp;</td>
            </tr>
            <tr align=left >
                <td colspan="2" align="center">
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Pristina" 
                                Font-Size="X-Large" ForeColor="#006699" Text="Authentication Details"></asp:Label>
                </td>
            </tr>
            <tr align=left >
                <td colspan="2">
                        <hr color=#006699 size=10 />
                </td>
            </tr>
        </table>
    
    <asp:ScriptManager ID="scriptmanager1" runat="server">
</asp:ScriptManager>
<div>
<asp:UpdatePanel ID="PnlUsrDetails" runat="server">
<ContentTemplate>
    <table style="width: 100%;">
        <tr>
                <td>
                    UserID</td>
                <td>
                    <asp:TextBox ID="txtUserID" runat="server" 
                        ontextchanged="txtUserID_TextChanged" AutoPostBack="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtUserID" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>

                        <div id="checkusername" runat="server"  Visible="false">

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
                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr>
                <td>
                    Confirm</td>
                <td>
                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtConfirm" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPwd" ControlToValidate="txtConfirm" 
                        ErrorMessage="CompareValidator" ForeColor="#FF3300">Not Matching</asp:CompareValidator>
                </td>
            </tr>
        <tr>
                <td>
                    Security Question</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="400px">
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
                        Display="Dynamic" SetFocusOnError="True" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
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
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
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
                    <table style="width:100%;">
                        <tr>
                            <td style="width: 223px">
                                <asp:Label ID="Label5" runat="server" Text="Action Buton" Visible="False"></asp:Label>
                            </td>
                            <td>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" 
                        onclick="btnRegister_Click" CssClass="button" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 223px">
                                &nbsp;</td>
                            <td>
                            <asp:Label ID="lblmsg" runat="server" Font-Names="Courier New" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
    </table>
                <br />
        <asp:HiddenField ID="hfBDate" runat="server" />
        <asp:HiddenField ID="hfPhotoUrl" runat="server" Value="Images/User.png" />
        <asp:SqlDataSource ID="sqlUserMaster" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [UserMaster] WHERE [UserID] = @UserID" 
            InsertCommand="INSERT INTO [UserMaster] ([UserID], [Pwd], [Name], [Address], [City], [College], [Branch], [Year], [Gender], [BirthDate], [PhotoFile], [EmailID], [ContactNo],[que],[ans],[usertype]) VALUES (@UserID, @Pwd, @Name, @Address, @City, @College, @Branch, @Year, @Gender, @BirthDate, @PhotoFile, @EmailID, @ContactNo,@que,@ans,@usertype)" 
            SelectCommand="SELECT * FROM [UserMaster] WHERE ([UserID] = @UserID)" 
            
        
        UpdateCommand="UPDATE [UserMaster] SET [Pwd] = @Pwd, [Name] = @Name, [Address] = @Address, [City] = @City, [College] = @College, [Branch] = @Branch, [Year] = @Year, [Gender] = @Gender, [BirthDate] = @BirthDate, [PhotoFile] = @PhotoFile, [EmailID] = @EmailID, [ContactNo] = @ContactNo WHERE [UserID] = @UserID">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtUserID" Name="UserID" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="UserID" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pwd" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="College" Type="String" />
                <asp:Parameter Name="Branch" Type="String" />
                <asp:Parameter Name="Year" Type="Int32" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="BirthDate" Type="DateTime" />
                <asp:Parameter Name="PhotoFile" Type="String" />
                <asp:Parameter Name="EmailID" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="UserID" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtUserID" Name="UserID" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtPwd" Name="Pwd" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtName" Name="Name" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtAddress" Name="Address" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtCity" Name="City" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtCollege" Name="College" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="ddlBranch" Name="Branch" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="ddlYear" Name="Year" 
                    PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="rbGender" Name="Gender" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="hfBDate" Name="BirthDate" PropertyName="Value" 
                    Type="DateTime" />
                <asp:ControlParameter ControlID="hfPhotoUrl" Name="PhotoFile" 
                    PropertyName="Value" Type="String" />
                <asp:ControlParameter ControlID="txtEmail" Name="EmailID" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtContactNo" Name="ContactNo" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="DropDownList1" Name="que" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="txtans" Name="ans" PropertyName="Text" />
                <asp:QueryStringParameter Name="usertype" QueryStringField="utype" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    
</asp:Content>

