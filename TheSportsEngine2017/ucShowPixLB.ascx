<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ucShowPixLB.ascx.vb" Inherits="TheSportsEngine2017.ucShowPixLB" %>
<link href="styles/content.css" rel="stylesheet" type="text/css" />
<asp:Table ID="tblShowPix" runat="server">
    <asp:TableRow>
        <asp:TableCell CssClass="labelTrophyCase">
            <asp:Label ID="lblTrophyCase" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TROPHY CASE"></asp:Label>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
	        <link rel="stylesheet" href="LightBox/engine/css/vlightbox1.css" type="text/css" />
	        <link rel="stylesheet" href="LightBox/engine/css/visuallightbox.css" type="text/css" media="screen" />
            <script src="LightBox/engine/js/jquery.min.js" type="text/javascript"></script>
	        <script src="LightBox/engine/js/visuallightbox.js" type="text/javascript"></script>
	        <div id="vlightbox1">
                <ul>
                    <%= Session("strImages")%>
                </ul>
	        </div>
            <script src="LightBox/engine/js/vlbdata1.js" type="text/javascript"></script>
    </asp:TableCell>
    </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <% = Session("Facebook") %>
            </asp:TableCell>
        </asp:TableRow>
</asp:Table>