<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="JustFootball.aspx.vb" Inherits="TheSportsEngine2017.JustFootball" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Oklahoma High School Football</title>
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
        <script>
            fbq('track', 'ViewContent', {
            value: 1000,
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
                                    <asp:Label runat="server" Text="JUST FOOTBALL" Font-Names="Lalezar" Font-Bold="true" Font-Size="3em"></asp:Label><br />
                                    <h2>All Oklahoma High School Football from IWasAtTheGame.com</h2><br />
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
                                <Content><h2>A LITTLE BASEBALL...</h2></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="https://twitter.com/IWasAtTheGame/status/1021711289310175233" CssClass="button orange">37 and 35 K's in a Game?</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><h2><br />JUST FOOTBALL</h2></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBRPI.aspx" CssClass="button green">2017 FOOTBALL SEASON RPI</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBUndefeatedAT.aspx" CssClass="button orange">ALL-TIME UNDEFEATED TEAMS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBWinningStreaks.aspx" CssClass="button orange">ALL-TIME WINNING STREAKS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBTeamPage.aspx" CssClass="button orange">FOOTBALL TEAM PAGES</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="ListFB8Man.aspx" CssClass="button orange">ALL-TIME 8-MAN TEAMS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:HyperLink runat="server" NavigateUrl="FBNFL.aspx" CssClass="button orange">CURRENTLY IN THE NFL</asp:HyperLink>
                                </Content>
                            </telerik:LayoutRow>
                          <telerik:LayoutRow>
                                <Content><h2><br />PLAYOFFS</h2></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="PlayoffGames.aspx" CssClass="button orange">FOOTBALL TEAM PLAYOFF PAGES</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBUndefeatedAT.aspx" CssClass="button orange">ALL-TIME UNDEFEATED TEAMS</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBPlayoffTotals.aspx" CssClass="button orange">ALL-TIME Playoff Totals</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBPlayoffRecords.aspx" CssClass="button orange">Playoff Individual Records</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="../docs/ok/2016OKCoachesStateChampionships.pdf" CssClass="button orange" Target="_blank">Coaches State Championships</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBOffensePlayGame.aspx" CssClass="button orange">Most Points Scored in Playoff Game</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBNoChampionship.aspx" CssClass="button orange">Playoff Years w/o Championship</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBPlayoffStreaks.aspx" CssClass="button orange">Consecutive Playoff Years ALL-TIME</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBPlayoffStreaksC.aspx" CssClass="button orange">Consecutive Playoff Years CURRENT</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBPlayoffStreaksS.aspx" CssClass="button orange">Consecutive Playoff Years ALL-TIME (by School)</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>

                    <telerik:CompositeLayoutColumn Span="3" SpanSm="12" SpanXs="12" SpanMd="3" SpanLg="3" SpanXl="3">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content><h2>RECORDS</h2></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBWinningStreaks.aspx" CssClass="button orange">11-MAN Winning Streaks</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="../docs/ok/2017-All-Time_FootballRecords_Coaching.pdf" CssClass="button orange" Target="_blank">All-Time Coaching W/L</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBPlayoffRecords.aspx" CssClass="button orange">Playoff Individual Records</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBOffenseReg.aspx" CssClass="button orange">Season Team Regular Season Scoring</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBOffenseFull.aspx" CssClass="button orange">Season Team FULL Season Scoring</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBCareerRecordsPassing.aspx" CssClass="button orange">All-Time Career PASSING Yards (thru 2019)</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBCareerRecordsRushing.aspx" CssClass="button orange">All-Time Career RUSHING Yards (thru 2019)</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="../docs/ok/2019-All-Time_SeasonFootballRecords_Passing.pdf" CssClass="button orange" Target="_blank">Season Individual Passing Records (thru 2019)</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="../docs/ok/2019-All-Time_SeasonFootballRecords_Rushing.pdf?id=2017" CssClass="button orange" Target="_blank">Season Individual Rushing Records (thru 2019)</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:HyperLink runat="server" NavigateUrl="../docs/ok/2019-All-Time_SeasonFootballRecords_Receiving.pdf" CssClass="button orange" Target="_blank">Season Receiving and Int Records (thru 2019)</asp:HyperLink>
                                </Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><h2><br />SEASON SCORING</h2></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBOD.aspx" CssClass="button orange">Total Scoring 2017 Season</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBScoringLastYear.aspx" CssClass="button orange">Total Scoring 2016 Season</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBScoring5Year.aspx" CssClass="button orange">Total Scoring Last 5 Seasons</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBScoring10Year.aspx" CssClass="button orange">Total Scoring Last 10 Seasons</asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" NavigateUrl="FBScoring15Year.aspx" CssClass="button orange">Total Scoring Last 15 Seasons</asp:HyperLink></Content>
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

