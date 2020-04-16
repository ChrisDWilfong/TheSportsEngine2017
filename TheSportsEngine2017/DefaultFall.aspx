<%@ Page Title="Oklahoma High School Sports" Language="VB" AutoEventWireup="false" MasterPageFile="MasterPage2017.Master" CodeBehind="DefaultFall.aspx.vb" Inherits="TheSportsEngine2017.DefaultFall"  %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" CssClass="grid_wrapper">
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
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper1">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">  
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="6" SpanSm="12" SpanXs="12" SpanMd="6" SpanLg="6" SpanXl="6">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content><h2>WHAT'S NEW</h2></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" Text="OKLAHOMANS IN WORLD SERIES" NavigateUrl="docs/ok/OKHSWorldSeries.pdf" CssClass="button green" Target="_blank" ForeColor="Yellow"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" Text="CURRENT STATE CHAMPIONSHIP 3-PEATS" NavigateUrl="StateThreeP.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" Text="2017-18 ACADEMIC TITLE COUNT" NavigateUrl="TitleCountAcademic201718.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" Text="2017-18 STATE TITLE COUNT" NavigateUrl="TitleCount201718.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow >
                                <Content><asp:HyperLink runat="server" Text="LIST OF CHAMPIONS ALMANAC" NavigateUrl="http://www.okalmanac.com" Target="_blank" CssClass="button green"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow >
                                <Content><asp:HyperLink runat="server" Text="2017 UNDEFEATED FOOTBALL TEAMS (FINAL)" NavigateUrl="FBUndefeated.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow >
                                <Content><asp:HyperLink runat="server" Text="2017 TEAM SCORING (FINAL)" NavigateUrl="FBOD.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow >
                                <Content><asp:HyperLink runat="server" Text="11-MAN WINNING STREAK" NavigateUrl="FBWinningStreaks.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                                <telerik:LayoutRow >
                                <Content><asp:HyperLink runat="server" Text="OBCA COACHES W-L RECORDS" NavigateUrl="OBCACoachingRecords.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>&nbsp;</Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>

                    <telerik:CompositeLayoutColumn Span="6" SpanSm="12" SpanXs="12" SpanMd="6" SpanLg="6" SpanXl="6">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content><h2>PLAYOFF CENTRAL</h2></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" Text="FOOTBALL TEAM PLAYOFF PAGES" NavigateUrl="PlayoffGames.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" Text="ALL-TIME PLAYOFF RECORDS" NavigateUrl="FBPlayoffTotals.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>ALL-TIME" NavigateUrl="FBPlayoffStreaks.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>CURRENT" NavigateUrl="FBPlayoffStreaksC.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>BY SCHOOL" NavigateUrl="FBPlayoffStreaksS.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" Text="PLAYOFF YEARS w/o CHAMPIONSHIP" NavigateUrl="FBNoChampionship.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" Text="COACHING STATE CHAMPIONSHIPS" NavigateUrl="http://www.iwasatthegame.com/docs/OK/2016OKCoachesStateChampionships.pdf" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink runat="server" Text="FOOTBALL TEAM PAGES" NavigateUrl="FBTeamPage.aspx" CssClass="button orange"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>
