<%@ Page Title="Oklahoma High School Sports" Language="VB" AutoEventWireup="false" MasterPageFile="MasterPage2017.Master" CodeBehind="DefaultWinter.aspx.vb" Inherits="TheSportsEngine2017.DefaultWinter"  %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text=""></asp:Label></h3>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text=""></asp:Label></h3>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">  
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="6" SpanSm="12" SpanXs="12" SpanMd="12" SpanLg="6" SpanXl="6">

                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:HyperLink runat="server" Text="" NavigateUrl="http://www.okalmanac.com" Target="_blank" ><asp:Image runat="server" ImageUrl="~/images/ListOfChampionsHalf.png" ImageAlign="Middle" /></asp:HyperLink><br />
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:Image runat="server" ImageUrl="~/images/FancyLine475.png" />
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:HyperLink runat="server" Text="" NavigateUrl="BKBGameScoring2018.aspx" ><asp:Image runat="server" ImageUrl="~/images/40PointClubBoys200.png" ImageAlign="Middle" /></asp:HyperLink><br />
                                    <asp:Label runat="server" Text="2017-18 40+ Points in a Game" Font-Bold="true"></asp:Label>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:HyperLink runat="server" Text="" NavigateUrl="BKGGameScoring2018.aspx" ><asp:Image runat="server" ImageUrl="~/images/40PointClubGirls200.png" ImageAlign="Middle"  /></asp:HyperLink><br />
                                    <asp:Label runat="server" Text="2017-18 40+ Points in a Game" Font-Bold="true"></asp:Label>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:HyperLink runat="server" Text="" NavigateUrl="BKGCareerScoringM.aspx" ><asp:Image runat="server" ImageUrl="~/images/2000PointClubGirls200.png" ImageAlign="Middle"  /></asp:HyperLink><br />
                                    <asp:Label runat="server" Text="2000+ Career Points" Font-Bold="true"></asp:Label>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="6" SpanSm="12" SpanXs="12" SpanMd="6" SpanLg="6" SpanXl="6">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:HyperLink runat="server" Text="" NavigateUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=LKL97ZP2MVBLG" Target="_blank" ><asp:Image runat="server" ImageUrl="~/images/OK/100yearsLogoAdSmall.png" ImageAlign="Middle" /></asp:HyperLink><br />
                                </Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow >
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="PRE-ORDER NOW (mailed in March)" NavigateUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=LKL97ZP2MVBLG" Target="_blank" CssClass="button green"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                        </Rows>
                        <Rows>
                            <telerik:LayoutRow>
                                <Content><br /></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><h2>QUICK LINKS</h2>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="2017-18 STATE TITLE COUNT" NavigateUrl="TitleCount201718.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="ALL-TIME FOOTBALL CAREER PASSING YDS" NavigateUrl="FBCareerRecordsPassing.aspx" CssClass="button orange" Font-Size="Large" ForeColor="Maroon"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="ALL-TIME FOOTBALL CAREER RUSHING YDS" NavigateUrl="FBCareerRecordsRushing.aspx" CssClass="button orange" Font-Size="Large" ForeColor="Maroon"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="ACADEMIC STATE CHAMPIONS (BY YEAR)" NavigateUrl="ACStateChampionshipsYear.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="ALL-TIME FOOTBALL COACHING WINS" NavigateUrl="/docs/ok/2017-All-Time_FootballRecords_Coaching.pdf" Target="_blank" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="ALL-TIME FOOTBALL SEASON PASSING YARDS (thru 2019)" NavigateUrl="/docs/ok/2019-All-Time_SeasonFootballRecords_Passing.pdf" Target="_blank" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="ALL-TIME FOOTBALL SEASON RUSHING YARDS (thru 2019)" NavigateUrl="/docs/ok/2019-All-Time_SeasonFootballRecords_Rushing.pdf?id=2017" Target="_blank" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="ALL-TIME FOOTBALL SEASON RECEIVING AND INTERCEPTIONS (thru 2019)" NavigateUrl="/docs/ok/2019-All-Time_SeasonFootballRecords_Receiving.pdf" Target="_blank" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>

                            <telerik:LayoutRow>
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="ALL-TIME CAREER SCORING 5-on-5 (Girls Basketball)" NavigateUrl="BKGCareerScoringM.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="ALL-TIME SCORING IN GAME (Boys Basketball)" NavigateUrl="BKBGameScoringAT.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="ALL-TIME SCORING IN GAME (Girls Basketball)" NavigateUrl="BKGGameScoringAT.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow >
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="2017 FOOTBALL PLAYOFF CENTRAL" NavigateUrl="FBPlayoffs.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow >
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="2017 FOOTBALL TEAM SCORING (FINAL)" NavigateUrl="FBOD.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow >
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="LIST OF CHAMPIONS ALMANAC" NavigateUrl="http://www.okalmanac.com" Target="_blank" CssClass="button green"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="CURRENT STATE CHAMPIONSHIP 3-PEATS" NavigateUrl="StateThreeP.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow >
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="OBCA COACHES W-L RECORDS" NavigateUrl="OBCACoachingRecords.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="2017-18 ACADEMIC TITLE COUNT" NavigateUrl="TitleCountAcademic201718.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow >
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="2017 UNDEFEATED FOOTBALL TEAMS (FINAL)" NavigateUrl="FBUndefeated.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow >
                                <Content>&nbsp;&nbsp;<asp:HyperLink runat="server" Text="11-MAN WINNING STREAK" NavigateUrl="FBWinningStreaks.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>&nbsp;</Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>
