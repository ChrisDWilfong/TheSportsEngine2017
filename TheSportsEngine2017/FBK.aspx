<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPagePhotoGallery.Master" CodeBehind="FBK.aspx.vb" Inherits="TheSportsEngine2017.FBK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.3&appId=2049549131962643&autoLogAppEvents=1"></script>
    <asp:Table runat="server">
        <asp:TableRow>
            <asp:TableCell>
                <div class="fb-post" data-href="https://www.facebook.com/IWasAtTheGameOK/posts/2353083941437899" data-width="500" data-show-text="true"><blockquote cite="https://developers.facebook.com/IWasAtTheGameOK/posts/2353083941437899" class="fb-xfbml-parse-ignore"><p>#OklahomaRepresent at The Smithsonian American Art Museum and the Renwick Gallery in Washington DC &#064;...</p>Posted by <a href="https://www.facebook.com/IWasAtTheGameOK/">I Was At The Game</a> on&nbsp;<a href="https://developers.facebook.com/IWasAtTheGameOK/posts/2353083941437899">Wednesday, June 5, 2019</a></blockquote></div>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow><asp:TableCell><asp:Label runat="server" ID="lblComments" Text="COMMENTS" Font-Size="X-Large"></asp:Label></asp:TableCell></asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <div class="fb-comments" data-href="https://www.facebook.com/IWasAtTheGameOK/posts/2353083941437899" data-width="325" data-numposts="25"></div>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>
