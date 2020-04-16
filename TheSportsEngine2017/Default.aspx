<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="TheSportsEngine2017._Default" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Oklahoma High School Sports: Football, Basketball, Baseball, Academic, Non-Athletic State Championships Champions</title>
    <meta name="viewport" content="initial-scale=1.0, minimum-scale=1, maximum-scale=1.0, user-scalable=no" >
    <meta name="copyright" content="Copyright (c) 2019 IWasAtTheGame.com. All Rights Reserved">
    <meta name="description" content="Oklahoma high school sports history information, schedules, results and List of Champions">
    <meta name="keywords" content="oklahoma high school state championships, high school sports, academic state champions, non-athletic state champions, oklahoma high school football, high school games, oklahoma sports, high school football, oklahoma high school basketball, oklahoma high school baseball">
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Lalezar' rel='stylesheet' type='text/css' />
    <link href="styles/base.css" rel="stylesheet" />
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/billboard.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
        <script>
          (adsbygoogle = window.adsbygoogle || []).push({
            google_ad_client: "ca-pub-6403098483302166",
            enable_page_level_ads: true
          });
        </script>
</head>

<body>
    <form id="form1" runat="server">
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0&appId=2049549131962643&autoLogAppEvents=1';
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    <telerik:RadScriptManager runat="server"></telerik:RadScriptManager>
    <asp:Panel ID="PanelFB" runat="server">
    <asp:UpdatePanel ID="UpdatePanelFB" runat="server">
        <ContentTemplate>
        <div id="wrapper">
        <telerik:RadPageLayout runat="server" ID="MasterLayout" GridType="Fluid">
            <Rows>
                <telerik:LayoutRow CssClass="header">
                    <Columns>
                        <%--Main Nav--%>
                        <telerik:LayoutColumn Span="12" SpanMd="12" HiddenSm="true" HiddenXs="true">
                            <asp:HyperLink runat="server" ID="hlHeader1" CssClass="logo" NavigateUrl="http://www.IWasAtTheGame.com">
                                <asp:Image runat="server" ID="imgHeader1" ImageUrl="images/IWATG/IWATGcomWEB.png" AlternateText="IWasAtTheGame.com" />
                            </asp:HyperLink><br />
                            <telerik:RadMenu ID="RadMenu1" runat="server" RenderMode="Lightweight" Height="100%" EnableRoundedCorners="true" EnableShadows="true" >
                            </telerik:RadMenu>
                            <br />
                            <asp:HyperLink runat="server" ID="hlTitleSponsor1" Visible="false" Target="_blank"><asp:Image runat="server" ID="imgTitleSponsor1" Visible="false" AlternateText="Sponsor" /></asp:HyperLink>
                            <br /><%= Session("twitter") %><%= Session("facebook") %>
                        </telerik:LayoutColumn>

                        <telerik:LayoutColumn Span="12" HiddenXl="true" HiddenLg="true" HiddenMd="true" SpanSm="12" SpanXs="12"  >
                            <asp:HyperLink runat="server" ID="hlHeader2" CssClass="logo" NavigateUrl="http://www.IWasAtTheGame.com">
                                <asp:Image runat="server" ID="imgHeader2" ImageUrl="images/IWATG/IWATGcomWEB.png" AlternateText="IWasAtTheGame.com" />
                            </asp:HyperLink><br />                            
                            <telerik:RadMenu ID="RadMenu2" runat="server" RenderMode="Mobile" EnableRoundedCorners="true" EnableShadows="false" Height="400px" >
                            </telerik:RadMenu>
                            <br />
                            <asp:HyperLink runat="server" ID="hlTitleSponsor2" Visible="false" Target="_blank"><asp:Image runat="server" ID="imgTitleSponsor2" Visible="false" AlternateText="Sponsor" /></asp:HyperLink>
                            <br /><%= Session("twitter") %>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
                <telerik:LayoutRow>
                    <Columns>
                        <telerik:LayoutColumn>
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanelFB" ViewStateMode="Enabled">
                            <ProgressTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/ajax-loader.gif" AlternateText="Loader..." />
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>

                <%--Main--%>
            <telerik:LayoutRow style="padding-top:25px;">
                <Columns>
                    <telerik:CompositeLayoutColumn Span="12">
                        <Rows>
                            <telerik:LayoutRow style="text-align:center;">
                                <Content>
                                    <asp:Label runat="server" Text="Welcome to IWasAtTheGame.com" Font-Names="Lalezar" Font-Bold="true" Font-Size="3em"></asp:Label><br />
                                    <h2>Make your selection above to find any of the 25,000 State Champions!</h2><br />
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                </Columns>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="3" HiddenSm="true" HiddenXs="true" SpanMd="3" SpanLg="3" SpanXl="3">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                    <!-- 300x600 Ad -->
                                    <ins class="adsbygoogle"
                                         style="display:inline-block;width:300px;height:600px"
                                         data-ad-client="ca-pub-6403098483302166"
                                         data-ad-slot="6996083575"></ins>
                                    <script>
                                    (adsbygoogle = window.adsbygoogle || []).push({});
                                    </script>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="12" SpanSm="12" SpanXs="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                    <!-- Billboard Mobile -->
                                    <ins class="adsbygoogle"
                                         style="display:inline-block;width:320px;height:100px"
                                         data-ad-client="ca-pub-6403098483302166"
                                         data-ad-slot="6146036330"></ins>
                                    <script>
                                    (adsbygoogle = window.adsbygoogle || []).push({});
                                    </script>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>

                    <telerik:CompositeLayoutColumn Span="3" SpanSm="12" SpanXs="12" SpanMd="3" SpanLg="3" SpanXl="3">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content><h2>STATE CHAMPIONS</h2></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="BAStateChampionships.aspx" CssClass="button orange" Target="_blank">BASEBALL CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="BAFStateChampionships.aspx" CssClass="button orange" Target="_blank">BASEBALL (FALL) CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="BKBStateChampionships.aspx" CssClass="button orange" Target="_blank">BASKETBALL (BOYS) CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="BKGStateChampionships.aspx" CssClass="button orange" Target="_blank">BASKETBALL (GIRLS) CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="CHStateChampionships.aspx" CssClass="button orange" Target="_blank">CHEERLEADING CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="CCStateChampionships.aspx" CssClass="button orange" Target="_blank">CROSS COUNTRY CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBStateChampionships.aspx" CssClass="button orange" Target="_blank">FOOTBALL CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="GOStateChampionships.aspx" CssClass="button orange" Target="_blank">GOLF CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="SOStateChampionships.aspx" CssClass="button orange" Target="_blank">SOCCER CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="SBFStateChampionships.aspx" CssClass="button orange" Target="_blank">SOFTBALL (FAST) CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="SBSStateChampionships.aspx" CssClass="button orange" Target="_blank">SOFTBALL (SLOW) CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="SWStateChampionships.aspx" CssClass="button orange" Target="_blank">SWIMMING CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="TNStateChampionships.aspx" CssClass="button orange" Target="_blank">TENNIS CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="TKStateChampionships.aspx" CssClass="button orange" Target="_blank">TRACK CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="VBGStateChampionships.aspx" CssClass="button orange" Target="_blank">VOLLEYBALL CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="WRStateChampionships.aspx" CssClass="button orange" Target="_blank">WRESTLING CHAMPIONS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>

                    <telerik:CompositeLayoutColumn Span="3" SpanSm="12" SpanXs="12" SpanMd="3" SpanLg="3" SpanXl="3">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content><h2>OTHER STUFF</h2></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="ListMascotsCount.aspx" CssClass="button orange">OKLAHOMA HIGH SCHOOL MASCOTS TOTALS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="ListMascots.aspx" CssClass="button orange">OKLAHOMA HIGH SCHOOL MASCOTS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="ListFB8Man.aspx" CssClass="button orange">ALL-TIME 8-MAN TEAMS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="BKBCareerScoringM.aspx" CssClass="button orange">BOYS BASKETBALL SCORING</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="TitleCount201718.aspx" CssClass="button orange">2017-18 STATE TITLE COUNT</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow >
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBWinningStreaks.aspx" CssClass="button orange">11-MAN WINNING STREAK</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                                <telerik:LayoutRow >
                                <Content><asp:HyperLink runat="server" NavigateUrl="OBCACoachingRecords.aspx" CssClass="button orange">OBCA COACHES W-L RECORDS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="PlayoffGames.aspx" CssClass="button orange">FOOTBALL TEAM PLAYOFF PAGES</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBPlayoffTotals.aspx" CssClass="button orange">ALL-TIME PLAYOFF RECORDS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBPlayoffStreaks.aspx" CssClass="button orange">CONSECUTIVE PLAYOFF YEARS<br>ALL-TIME</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBPlayoffStreaksC.aspx" CssClass="button orange">CONSECUTIVE PLAYOFF YEARS<br>CURRENT</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBPlayoffStreaksS.aspx" CssClass="button orange">CONSECUTIVE PLAYOFF YEARS<br>BY SCHOOL</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBNoChampionship.aspx" CssClass="button orange">PLAYOFF YEARS w/o CHAMPIONSHIP</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBTeamPage.aspx" CssClass="button orange">FOOTBALL TEAM PAGES</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="3" SpanSm="12" SpanXs="12" SpanMd="3" SpanLg="3" SpanXl="3">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                    <!-- Right Ad -->
                                    <ins class="adsbygoogle"
                                         style="display:inline-block;width:336px;height:280px"
                                         data-ad-client="ca-pub-6403098483302166"
                                         data-ad-slot="2649207139"></ins>
                                    <script>
                                    (adsbygoogle = window.adsbygoogle || []).push({});
                                    </script>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                </Columns>
            </telerik:LayoutRow>

                <%--Footer--%>
                <telerik:LayoutRow>
                    <Columns>
                        <telerik:LayoutColumn CssClass="footer">
                            <hr />
                            © 2007-2020 IWasAtTheGame.com - Oklahoma High School Sports Historical Society
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>

                <telerik:LayoutRow CssClass="footer">
                    <Columns>
                        <telerik:LayoutColumn style="width:70%; text-align:center;">
                            <%= Session("facebookLink") %>
                            <%= Session("twitterLink1") %>
                            <%= Session("twitterLink2") %>
                            <%= Session("emailLink") %>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>

                <telerik:LayoutRow>
                    <Columns>
                        <telerik:LayoutColumn style="width:400px; text-align:center;">
                            <%= Session("footerTwitterFeed") %>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:RadPageLayout>

        </div>
    </ContentTemplate>
    </asp:UpdatePanel>
    </asp:Panel>
    </form>
</body>
</html>

