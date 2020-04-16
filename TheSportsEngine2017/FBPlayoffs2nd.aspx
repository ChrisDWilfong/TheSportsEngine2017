<%@ Page Title="Oklahoma High School Football Playoffs" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootball.Master" CodeBehind="FBPlayoffs2nd.aspx.vb" Inherits="TheSportsEngine2017.FBPlayoffs" %>

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
    <telerik:RadPageLayout runat="server" ID="RadPageLayout21">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="3" SpanXl="3" SpanLg="3" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <div style="text-align:center;">
                                    <br /><br /><br />
                                    <asp:Label runat="server" ID="Label2" Font-Size="X-Large" Font-Bold="true" ForeColor="Red" Font-Names="Anton">NEW VLOG for 11-11-2018 (click below)<br />Football Playoffs Week #1"</asp:Label><br />
                                    <iframe width="100%" height="300" src="https://www.youtube.com/embed/i6NnxTAuw6Y" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br />
                                    </div>

                                    <asp:Label runat="server" ID="lblInfo" Text="This time around we talk about Week #1 of Oklahoma High School Football.  Record breakers, Hulbert running back Jacob Bruce and Wagoner head coach Dale Condict.  Some of the teams, Millwood, Carl Albert and Watts.  Some BIG TIME numbers from Week #1.  RPI and some State Championship game predictions.  Also, how you can get a FREE copy of the new 100 YEAR LIST OF CHAMPIONS ALMANAC.  Check it out!" Font-Name="Arial" Font-Size="Medium"></asp:Label><br />
                                    <asp:ImageButton runat="server" ImageUrl="~/images/youtubebutton-01.png" Width="250px" PostBackUrl="https://www.youtube.com/channel/UCHrietY_N_4p0xcBob_QzRg"  /><br />
                                    <asp:HyperLink runat="server" NavigateUrl="https://cwilfong.wixsite.com/iwatgblog/blog/10-consecutive-win-season-in-oklahoma-high-school-football" Target="_self" Visible="true"><asp:Image runat="server" ImageUrl="~/images/OK/DaleCondictBLOG.PNG" Width="100%" /></asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="RPIFootball.aspx" CssClass="button orange" Target="_self" Visible="true">FOOTBALL FINAL RPI (Regular Season)</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="FBPlayoffs1st.aspx" CssClass="button orange" Target="_self" Visible="true">ALL-TIME 1st ROUND<br />FOOTBALL PLAYOFF RECORDS</asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="PLAYOFF YEARS w/o CHAMPIONSHIP" NavigateUrl="FBNoChampionship.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="NEW!! - LIST OF CHAMPIONS ALMANAC - $20" NavigateUrl="http://www.okalmanac.com" Target="_blank" CssClass="button green"></asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="FBOD.aspx" CssClass="button orange" Target="_self" Visible="true">FOOTBALL OFFENSE/DEFENSE<br />(thru Week #10)</asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="FOOTBALL TEAM PLAYOFF PAGES" NavigateUrl="PlayoffGames.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="FBCoachingRecords.aspx" CssClass="button green" Target="_self">ALL-TIME FOOTBALL<br />COACHING WINS</asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="ALL-TIME PLAYOFF RECORDS" NavigateUrl="FBPlayoffTotals.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>ALL-TIME" NavigateUrl="FBPlayoffStreaks.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>CURRENT" NavigateUrl="FBPlayoffStreaksC.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>BY SCHOOL" NavigateUrl="FBPlayoffStreaksS.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="ALL-TIME UNDEFEATED FOOTBALL TEAMS" NavigateUrl="FBUndefeatedAT.aspx" CssClass="button orange"></asp:HyperLink>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="1" SpanXl="1" SpanLg="1" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="7" SpanXl="7" SpanLg="7" SpanMd="7" SpanSm="12" SpanXs="12" >
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
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
                                        <asp:TableRow><asp:TableCell ColumnSpan="2"><h2>2018 PLAYOFFS WEEK 2</h2></asp:TableCell></asp:TableRow>
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
                                                                HeaderText="Class 6A-I STATE SEMI-FINALS"
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
                                                                HeaderText="Class 6A-II STATE SEMI-FINALS"
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

                                    </asp:Table>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="1" SpanXl="1" SpanLg="1" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
        </Columns>
        </telerik:LayoutRow>
            </Rows>
        </telerik:RadPageLayout>         

    <asp:SqlDataSource ID="SqlDataSource6AI" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE (strLevel = 'SF' AND strClass = '6A-I' AND intShowGame = 1) ORDER BY intGame, strSchool">
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource6AII" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE (strLevel = 'SF' AND strClass = '6A' AND intShowGame = 1) ORDER BY intGame, strSchool">
    </asp:SqlDataSource>    

        <asp:SqlDataSource ID="SqlDataSource5A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = '5A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSource4A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = '4A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSource3A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = '3A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSource2A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = '2A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSourceA" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = 'A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSourceB" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = 'B' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

    <asp:SqlDataSource ID="SqlDataSourceC" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = 'C' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  


</asp:Content>



