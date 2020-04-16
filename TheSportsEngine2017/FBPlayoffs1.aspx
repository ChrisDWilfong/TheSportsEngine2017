<%@ Page Title="Oklahoma High School Football Playoffs" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootballNOAJAX.Master" CodeBehind="FBPlayoffs1.aspx.vb" Inherits="TheSportsEngine2017.FBPlayoffs1" %>

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
                        <asp:Image runat="server" ImageUrl="~/images/OK/IWATG_PlayoffCentralFB.png" Width="100%" />
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <asp:Image runat="server" ImageUrl="~/images/OK/IWATG_PlayoffCentralFB.png" Width="100%" />
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout21">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" SpanLg="12" SpanMd="12" SpanXl="12">
                        <asp:Table runat="server">
                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                                    <asp:HyperLink ID="hlTitleAd1" runat="server" ImageUrl="images/ads/LOCAdPage.gif" NavigateUrl="http://www.okalmanac.com" Visible="false" Target="_blank" Width="100%" ></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                                    <asp:Label runat="server" Text="PLAYOFF BRACKETS:" Font-size="18px"></asp:Label>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink0" Text="CLASS 6A-I" NavigateUrl="http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_6A1PlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink1" Text="CLASS 6A-II" NavigateUrl="http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_6A2PlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink2" Text="CLASS 5A" NavigateUrl="http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_5APlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink3" Text="CLASS 4A" NavigateUrl="http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_4APlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink4" Text="CLASS 3A" NavigateUrl="http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_3APlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink5" Text="CLASS 2A" NavigateUrl="http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_2APlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink6" Text="CLASS A" NavigateUrl="http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_APlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink7" Text="CLASS B" NavigateUrl="http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_BPlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink8" Text="CLASS C" NavigateUrl="http://www.ossaa.net/docs/2018-19/Football/FB_2018-19_CPlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow><asp:TableCell ColumnSpan="2">&nbsp;</asp:TableCell></asp:TableRow>
                            <asp:TableRow><asp:TableCell ColumnSpan="2"><h2>2018 PLAYOFFS WEEK 1</h2></asp:TableCell></asp:TableRow>
                            <asp:TableRow Visible="true">
                                <asp:TableCell VerticalAlign="Top">
                                    <telerik:RadGrid ID="RadGrid6AI" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource6AI"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource6AI" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                    HeaderText="Class 6A-I STATE PLAYOFFS"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                         </MasterTableView>
                                    </telerik:RadGrid>
                                    <telerik:RadGrid ID="RadGrid5A" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource5A"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource5A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                    HeaderText="Class 5A STATE PLAYOFFS"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <telerik:RadGrid ID="RadGrid3A" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3A"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource3A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                    HeaderText="Class 3A STATE PLAYOFFS"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <telerik:RadGrid ID="RadGridA" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceA"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSourceA" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                    HeaderText="Class A STATE PLAYOFFS"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <telerik:RadGrid ID="RadGridC" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceC"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSourceC" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                    HeaderText="Class C STATE PLAYOFFS"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                         </MasterTableView>
                                    </telerik:RadGrid>
                                </asp:TableCell>

                                <asp:TableCell VerticalAlign="Top">
                                    <telerik:RadGrid ID="RadGrid6AII" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource6AII"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource6AII" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                    HeaderText="Class 6A-II STATE PLAYOFFS"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                         </MasterTableView>
                                    </telerik:RadGrid>
                                    <telerik:RadGrid ID="RadGrid4A" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4A"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource4A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                    HeaderText="Class 4A STATE PLAYOFFS"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <telerik:RadGrid ID="RadGrid2A" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2A"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource2A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                    HeaderText="Class 2A STATE PLAYOFFS"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <telerik:RadGrid ID="RadGridB" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceB"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSourceB" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                    HeaderText="Class B STATE PLAYOFFS"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow><asp:TableCell ColumnSpan="2">&nbsp;</asp:TableCell></asp:TableRow>

                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="2">

                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <h2>2018 FOOTBALL</h2>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <h2>PLAYOFF CENTRAL</h2>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" NavigateUrl="FBOD.aspx" CssClass="button orange" Target="_self" Visible="true">FOOTBALL OFFENSE/DEFENSE<br />(thru Week #10)</asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="FOOTBALL TEAM PLAYOFF PAGES" NavigateUrl="PlayoffGames.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" NavigateUrl="FBCoachingRecords.aspx" CssClass="button green" Target="_self">ALL-TIME FOOTBALL<br />COACHING WINS</asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="ALL-TIME PLAYOFF RECORDS" NavigateUrl="FBPlayoffTotals.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" NavigateUrl="FBWinningStreaks.aspx" CssClass="button green" Target="_self">ALL-TIME FOOTBALL<br />11-MAN WINNING STREAKS</asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>ALL-TIME" NavigateUrl="FBPlayoffStreaks.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="2018-19 STATE TITLE COUNT" NavigateUrl="TitleCount201718.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>CURRENT" NavigateUrl="FBPlayoffStreaksC.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="LIST OF CHAMPIONS ALMANAC" NavigateUrl="http://www.okalmanac.com" Target="_blank" CssClass="button green"></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>BY SCHOOL" NavigateUrl="FBPlayoffStreaksS.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" NavigateUrl="RPIBaseballFall.aspx" CssClass="button orange" Target="_self">FALL BASEBALL RPI<br />(thru ENTERING PLAYOFFS)</asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="PLAYOFF YEARS w/o CHAMPIONSHIP" NavigateUrl="FBNoChampionship.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" NavigateUrl="RPIFPSoftballSOS.aspx" CssClass="button green" Target="_self">FAST PITCH SOFTBALL RPI<br />(thru 9/28/18)</asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="COACHING STATE CHAMPIONSHIPS" NavigateUrl="http://www.iwasatthegame.com/docs/OK/2016OKCoachesStateChampionships.pdf" CssClass="button orange" Target="_blank"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="ALL-TIME UNDEFEATED FOOTBALL TEAMS" NavigateUrl="FBUndefeatedAT.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="FOOTBALL TEAM PAGES" NavigateUrl="FBTeamPage.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
        </telerik:LayoutColumn>
        </Columns>
        </telerik:LayoutRow>
            </Rows>
        </telerik:RadPageLayout>         
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource6AI" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek1 WHERE (strAt = 'Away' OR strAt = 'A') AND strClass = '6A-I' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource6AII" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek1 WHERE (strAt = 'Away' OR strAt = 'A') AND strClass = '6A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>    

        <asp:SqlDataSource ID="SqlDataSource5A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek1 WHERE (strAt = 'Away' OR strAt = 'A') AND strClass = '5A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSource4A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek1 WHERE (strAt = 'Away' OR strAt = 'A') AND strClass = '4A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSource3A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek1 WHERE (strAt = 'Away' OR strAt = 'A') AND strClass = '3A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSource2A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek1 WHERE (strAt = 'Away' OR strAt = 'A') AND strClass = '2A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSourceA" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek1 WHERE (strAt = 'Away' OR strAt = 'A') AND strClass = 'A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSourceB" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek1 WHERE (strAt = 'Away' OR strAt = 'A') AND strClass = 'B' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

    <asp:SqlDataSource ID="SqlDataSourceC" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek1 WHERE (strAt = 'Away' OR strAt = 'A') AND strClass = 'C' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  


</asp:Content>



