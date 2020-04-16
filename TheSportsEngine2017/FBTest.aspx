<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FBTest.aspx.vb" Inherits="TheSportsEngine2017.FBTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '487229754684347',
      xfbml      : true,
      version    : 'v2.10'
    });
    FB.AppEvents.logPageView();
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
    <form id="form1" runat="server">
<div
  class="fb-like"
  data-share="true"
  data-width="450"
  data-show-faces="true">
</div>
    <%= Session("fbCode") %>
    </form>
</body>
</html>
