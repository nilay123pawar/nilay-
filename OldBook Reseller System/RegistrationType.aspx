<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="RegistrationType.aspx.cs" Inherits="RegistrationType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
     <tr>
            <td colspan="2">
            &nbsp;
            </td>  
    </tr>

        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Names="Impact" Font-Size="XX-Large" 
                        ForeColor="#006699" Text="Select User Type"></asp:Label>
                </td>
        </tr>
        <tr>
            <td style="height: 23px">
            </td>
            <td style="height: 23px">
            </td>
        </tr>
        <tr>
            <td>
           <div class="morph pic my-img">
               <a href="Registration.aspx?utype=Student"> <img alt="" src="web_img/Stud.jpg" width="50%" /> </a>
          
               </div> 
                </td>
            <td>
            <div class="morph pic my-img">
                
             </div>
           </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red" Text="Click Here For Student" style="margin:0 auto;display:block;text-align:center;"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red" Text="Click Here For Alumni" style="margin:0 auto;display:block;text-align:center;"></asp:Label>
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
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

