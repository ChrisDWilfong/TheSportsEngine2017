<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InvalidPage.aspx.vb" Inherits="TheSportsEngine2017.InvalidPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Invalid Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label runat="server" Text="This is an invalid page." Font-Bold="true" Font-Names="Verdana" Font-Size="Large" ForeColor="Red"></asp:Label><br />
        <asp:Button runat="server" ID="cmdGo" Text="Return to IWasAtTheGame.com" Font-Names="Verdana" />
    </form>
</body>
</html>
