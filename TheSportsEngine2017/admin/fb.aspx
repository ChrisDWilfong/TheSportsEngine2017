<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="fb.aspx.vb" Inherits="TheSportsEngine2017.fb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta property="fb:admins" content="533551342"/>
</head>
<body>
    <div id="fb-root"></div>
    <script>
    (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&appId=2049549131962643&version=v2.3";
    fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
   </script>
    <form id="form1" runat="server">
        <div>
            <div class="fb-comments" data-href="http://www.iwasatthegame.com/SportsPage.aspx?id=1340" data-width="540" data-numposts="20" data-colorscheme="light"></div><br />
            <div class="fb-comments" data-href="http://www.iwasatthegame.com/SportsPage.aspx?id=1344" data-width="540" data-numposts="20" data-colorscheme="light"></div><br />
            <div class="fb-comments" data-href="http://www.iwasatthegame.com/SportsPage.aspx?id=1348" data-width="540" data-numposts="20" data-colorscheme="light"></div><br />
        </div>
    </form>
</body>
</html>
