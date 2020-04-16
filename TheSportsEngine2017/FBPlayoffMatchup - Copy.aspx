<%@ Page Title="Oklahoma High School Football Playoffs" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootball.Master" CodeBehind="FBPlayoffMatchup.aspx.vb" Inherits="TheSportsEngine2017.FBPlayoffMatchup" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Football Playoff Matchup" />
    <meta name="twitter:description" content="2019 Oklahoma High School Playoff Central" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/IWATG_Logo_Football.png" />   
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Lalezar' rel='stylesheet' type='text/css' />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1"  runat="server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout21">
    <Rows>
    <telerik:LayoutRow>
    <Columns>
    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" SpanLg="12" SpanMd="12" SpanXl="12">
    <asp:Table runat="server" ID="tblFBPlayoffMatchup">  
                  
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="center">
                <asp:HyperLink ID="hlTitleAd1" runat="server" ImageUrl="images/ads/StateTitleTalkBanner100s.png" NavigateUrl="http://ok.statetitletalk.com/" Visible="false" Target="_blank" Width="100%" ></asp:HyperLink>
            </asp:TableCell>
        </asp:TableRow>

       <asp:TableRow>
            <asp:TableCell ColumnSpan="2">
                <h2><asp:Label runat="server" ID="lblTeamVSTeam" Font-Bold="true" Font-Names="Lalezar" Font-Size="XX-Large"></asp:Label></h2>
            </asp:TableCell>
       </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center" Width="99%">
                <asp:Button runat="server" ID="cmdGoBack" Text="Go back to IWasAtTheGame.com PLAYOFF CENTRAL" BackColor="Green" ForeColor="Yellow" Font-Size="30px" Font-Bold="true" Width="950px" Height="60px" />
            </asp:TableCell>
        </asp:TableRow>
       
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlSchoolAd1" Visible="true" Target="_blank"></asp:HyperLink></asp:TableCell>
            <asp:TableCell HorizontalAlign="center"><asp:HyperLink runat="server" ID="hlSchoolAd2" Visible="true" Target="_blank"  ></asp:HyperLink></asp:TableCell>
        </asp:TableRow>

       <asp:TableRow>
                <asp:TableCell BackColor="LightGray"><h3><asp:Label runat="server" ID="lblTeam1SeasonInfo"></asp:Label></h3></asp:TableCell>
                <asp:TableCell BackColor="LightGray"><h3><asp:Label runat="server" ID="lblTeam2SeasonInfo"></asp:Label></h3></asp:TableCell>
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
                <asp:TableCell ColumnSpan="2">&nbsp;</asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" BackColor="LightGray">
                    <h3><strong>HEAD to HEAD</strong></h3>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell VerticalAlign="Top" ColumnSpan="2">
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
                <asp:TableCell ColumnSpan="2">&nbsp;</asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell BackColor="LightGray"><h3><asp:Label runat="server" ID="lblTeam1HistoryInfo"></asp:Label></h3></asp:TableCell>
                <asp:TableCell BackColor="LightGray"><h3><asp:Label runat="server" ID="lblTeam2HistoryInfo"></asp:Label></h3></asp:TableCell>
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
        </asp:Table>        
        </telerik:LayoutColumn>
        </Columns>
        </telerik:LayoutRow>
        </Rows>
        </telerik:RadPageLayout>                            
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_Football_Games WHERE strState = @state AND strSchool = @team1 AND intYear = 2018 ORDER BY intSort, strInfo">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="team1" SessionField="globalTeam1" DefaultValue="Dodgers" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_Football_Games WHERE strState = @state AND strSchool = @team2 AND intYear = 2018 ORDER BY intSort, strInfo">
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



