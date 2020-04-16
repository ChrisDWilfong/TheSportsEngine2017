<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AppPool.aspx.vb" Inherits="TheSportsEngine2017.AppPool" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button runat="server" ID="cmdGetStatus" Text="Get Status" /><br />
            <asp:Label runat="server" ID="lblStatus"></asp:Label>
        </div>
    </form>
</body>
</html>
