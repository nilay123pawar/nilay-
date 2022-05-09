<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddFriend.aspx.cs" Inherits="AddFriend" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sqlRequest" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Request] WHERE [ReqID] = @ReqID" 
            InsertCommand="INSERT INTO [Request] ([ReqFrom], [ReqTo]) VALUES (@ReqFrom, @ReqTo)" 
            SelectCommand="SELECT * FROM [Request]" 
            UpdateCommand="UPDATE [Request] SET [ReqFrom] = @ReqFrom, [ReqTo] = @ReqTo WHERE [ReqID] = @ReqID">
            <DeleteParameters>
                <asp:Parameter Name="ReqID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ReqFrom" Type="String" />
                <asp:Parameter Name="ReqTo" Type="String" />
                <asp:Parameter Name="ReqID" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:SessionParameter Name="ReqFrom" SessionField="userid" Type="String" />
                <asp:QueryStringParameter Name="ReqTo" QueryStringField="fid" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
