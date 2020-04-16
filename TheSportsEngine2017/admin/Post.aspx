<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Post.aspx.vb" Inherits="TheSportsEngine2017.Post" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button runat="server" ID="cmdPostScores" Text="Post Scores" />
        <asp:Label runat="server" ID="lblMessage" ForeColor="Red" Text =""></asp:Label>
    </div>
    </form>
</body>
</html>
