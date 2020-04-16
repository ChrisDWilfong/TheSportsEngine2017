<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="fb143.aspx.vb" Inherits="TheSportsEngine2017.fb143" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <title></title>

</head>
<body>
<div id="fb-root"></div>
        <script>
        window.fbAsyncInit = function() {
                FB.init({
                appId: '2049549131962643',
                status: true,
                cookie: true,
                xfbml: true
            });
        };

        // Load the SDK asynchronously
        (function(d){
            var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
            if (d.getElementById(id)) {return;}
            js = d.createElement('script'); js.id = id; js.async = true;
            js.src = "//connect.facebook.net/en_US/all.js";
            ref.parentNode.insertBefore(js, ref);
        }(document));

        function login() {
            FB.login(function(response) {
            // handle the response
            console.log("Response goes here!");
            }, {scope: 'read_stream,publish_stream,publish_actions,read_friendlists'});            
        }

        function logout() {
            FB.logout(function(response) {
              // user is now logged out
            });

        }

        var status = FB.getLoginStatus();

        console.log(status);

        </script>

    <form>
        <button onclick="javascript:login();">Login Facebook</button>
        <br>
        <button onclick="javascript:logout();">Logout from Facebook</button>
    </form>
</body>
</html>
