<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InvalidSession.aspx.cs" Inherits="InvalidSession" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/web_img/Sessionexpired.jpg" />
        <hr style="height: 5px; color: #0000FF" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Login</asp:HyperLink>
        </center>
        </div>
    </form>
</body>
</html>
