<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ShowPix.aspx.vb" Inherits="TheSportsEngine2017.ShowPix" %>

<%@ Register src="ucShowPixLB.ascx" tagname="ucShowPix" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="description" content="Oklahoma High School Sports Basketball, Football, Baseball, Soccer, Wrestling : IWasAtTheGame.com" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:ucShowPix ID="ucShowPix1" runat="server" />
        <asp:Label ID="lblContent" runat="server" ForeColor="White" Font-Size="XX-Small">Powered by IWasAtTheGame.com</asp:Label>
    </div>
    </form>
</body>
</html>
