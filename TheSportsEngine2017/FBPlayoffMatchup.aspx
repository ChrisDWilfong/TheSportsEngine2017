<%@ Page Title="Oklahoma High School Football Playoffs" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootball.Master" CodeBehind="FBPlayoffMatchup.aspx.vb" Inherits="TheSportsEngine2017.FBPlayoffMatchup" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Lalezar' rel='stylesheet' type='text/css' />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Football Playoff Matchup" />
    <meta name="twitter:description" content="2019 Oklahoma High School Playoff Central" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/PlayoffCentralFB_DP1.png" />   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
    </telerik:RadPageLayout>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout212">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="2" HiddenXs="true" HiddenSm="true" SpanMd="2" SpanLg="2" SpanXl="2">
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="11" SpanXs="11" SpanSm="11" SpanMd="8" SpanLg="8" SpanXl="8">
                        <div style="text-align:center;">
                        <asp:Table runat="server" ID="tblFBPlayoffMatchup">  
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell>
                                    <asp:Label runat="server" ID="lblTeamVSTeam" Font-Names="Lalezar" Font-Size="X-Large"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow HorizontalAlign="Center">
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:Button runat="server" ID="cmdGoBack" Text="Back to PLAYOFF CENTRAL" BackColor="Green" ForeColor="Yellow" Width="100%" Font-Size="Large" Font-Bold="true" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell BackColor="LightGray" HorizontalAlign="Center">
                                    <asp:Label runat="server" ID="lblHeadToHead" Text="HEAD to HEAD" Font-Size="Large" Font-Bold="true"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell VerticalAlign="Top" Width="80%">
                                    <telerik:RadGrid ID="RadGridHeadToHead" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource5"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource5" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                            <Columns>
                                                <telerik:GridBoundColumn DataField="strDisplayYear" HeaderAbbr="Streak" UniqueName="strDisplayYear" HeaderText="" 
                                                    AllowFiltering="false" AllowSorting="false" >
                                                    <HeaderStyle Font-Bold="true"  />
                                                </telerik:GridBoundColumn>
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                    <!-- Right Ad -->
                                    <ins class="adsbygoogle"
                                         style="display:inline-block;width:336px;height:280px"
                                         data-ad-client="ca-pub-6403098483302166"
                                         data-ad-slot="2649207139"></ins>
                                    <script>
                                        (adsbygoogle = window.adsbygoogle || []).push({});
                                    </script>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="1" HiddenSm="true" HiddenXs="true" SpanMd="1" SpanLg="1" SpanXl="1">
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="5" SpanXs="12" SpanSm="12" SpanMd="5" SpanLg="5" SpanXl="5">
                        <asp:Table runat="server">
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:TableCell HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlSchoolAd1" Visible="true" Target="_blank"></asp:HyperLink></asp:TableCell>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell BackColor="LightGray">
                                    <asp:TableCell BackColor="LightGray"><h3><asp:Label runat="server" ID="lblTeam1SeasonInfo"></asp:Label></h3></asp:TableCell>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell VerticalAlign="Top">
                                    <telerik:RadGrid ID="RadGridTeam1Season" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                            <Columns>
                                                <telerik:GridBoundColumn DataField="strWL" HeaderAbbr="" UniqueName="strWL" HeaderText="" 
                                                    AllowFiltering="false" AllowSorting="false" Display="false" >
                                                </telerik:GridBoundColumn>
                                            </Columns>
                                            <Columns>
                                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Streak" UniqueName="strDisplay" HeaderText="" 
                                                    AllowFiltering="false" AllowSorting="false" >
                                                    <HeaderStyle Font-Bold="true"  />
                                                </telerik:GridBoundColumn>
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell BackColor="LightGray">
                                    <asp:TableCell BackColor="LightGray"><h3><asp:Label runat="server" ID="lblTeam1HistoryInfo"></asp:Label></h3></asp:TableCell>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell VerticalAlign="Top">
                                    <telerik:RadGrid ID="RadGridTeam1History" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource3" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                            <Columns>
                                                <telerik:GridBoundColumn DataField="strDisplayYear" HeaderAbbr="Streak" UniqueName="strDisplayYear" HeaderText="PLAYOFF HISTORY" 
                                                    AllowFiltering="false" AllowSorting="false" >
                                                    <HeaderStyle Font-Bold="true"  />
                                                </telerik:GridBoundColumn>
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                    <!-- Responsive Ad -->
                                    <ins class="adsbygoogle"
                                         style="display:block"
                                         data-ad-client="ca-pub-6403098483302166"
                                         data-ad-slot="7074715447"
                                         data-ad-format="auto"></ins>
                                    <script>
                                        (adsbygoogle = window.adsbygoogle || []).push({});
                                    </script>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="5" SpanXs="12" SpanSm="12" SpanMd="5" SpanLg="5" SpanXl="5">
                        <asp:Table runat="server">
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:TableCell HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlSchoolAd2" Visible="true" Target="_blank"  ></asp:HyperLink></asp:TableCell>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell BackColor="LightGray">
                                    <asp:TableCell BackColor="LightGray"><h3><asp:Label runat="server" ID="lblTeam2SeasonInfo"></asp:Label></h3></asp:TableCell>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell VerticalAlign="Top">
                                    <telerik:RadGrid ID="RadGridTeam2Season" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource2" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                            <Columns>
                                                <telerik:GridBoundColumn DataField="strWL" HeaderAbbr="" UniqueName="strWL" HeaderText="" 
                                                    AllowFiltering="false" AllowSorting="false" Display="false" >
                                                </telerik:GridBoundColumn>
                                            </Columns>
                                            <Columns>
                                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Streak" UniqueName="strDisplay" HeaderText="" 
                                                    AllowFiltering="false" AllowSorting="false" >
                                                    <HeaderStyle Font-Bold="true"  />
                                                </telerik:GridBoundColumn>
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell BackColor="LightGray">
                                    <asp:TableCell BackColor="LightGray"><h3><asp:Label runat="server" ID="lblTeam2HistoryInfo"></asp:Label></h3></asp:TableCell>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell VerticalAlign="Top">
                                    <telerik:RadGrid ID="RadGridTeam2History" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource4" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                            <Columns>
                                                <telerik:GridBoundColumn DataField="strDisplayYear" HeaderAbbr="Streak" UniqueName="strDisplayYear" HeaderText="PLAYOFF HISTORY" 
                                                    AllowFiltering="false" AllowSorting="false" >
                                                    <HeaderStyle Font-Bold="true"  />
                                                </telerik:GridBoundColumn>
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                    <!-- Responsive Ad -->
                                    <ins class="adsbygoogle"
                                         style="display:block"
                                         data-ad-client="ca-pub-6403098483302166"
                                         data-ad-slot="7074715447"
                                         data-ad-format="auto"></ins>
                                    <script>
                                        (adsbygoogle = window.adsbygoogle || []).push({});
                                    </script>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="1" HiddenSm="true" HiddenXs="true" SpanMd="1" SpanLg="1" SpanXl="1">
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
        </telerik:RadPageLayout>                            

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_Football_Games WHERE strState = @state AND strSchool = @team1 AND intYear = 2019 ORDER BY intSort, strInfo">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="team1" SessionField="globalTeam1" DefaultValue="Dodgers" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_Football_Games WHERE strState = @state AND strSchool = @team2 AND intYear = 2019 ORDER BY intSort, strInfo">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="team2" SessionField="globalTeam2" DefaultValue="Dodgers" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>  

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_Football_Games WHERE strState = @state AND strSchool = @team1 ORDER BY intSort, strInfo">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="team1" SessionField="globalTeam1" DefaultValue="Dodgers" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_Football_Games WHERE strState = @state AND strSchool = @team2 ORDER BY intSort, strInfo">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="team2" SessionField="globalTeam2" DefaultValue="Dodgers" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>  

    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT *, CAST(intYear AS varchar) + ' : ' + strDisplay AS strDisplayYear FROM IWATGview_Football_Games WHERE strState = @state AND (strSchool = @team1 AND strOpponent = @team2) ORDER BY intYear DESC, intSort">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="team1" SessionField="globalTeam1" DefaultValue="Dodgers" Type="String" />
            <asp:SessionParameter Name="team2" SessionField="globalTeam2" DefaultValue="Dodgers" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>  
</asp:Content>



