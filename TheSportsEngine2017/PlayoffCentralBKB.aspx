<%@ Page Title="Oklahoma High School State Champions" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageSchools.Master" CodeBehind="PlayoffCentralBKB.aspx.vb" Inherits="TheSportsEngine2017.PlayoffCentralBKB" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <asp:Image runat="server" ImageUrl="~/images/ads/PlayoffCentralBKDPWeb.png" Width="100%" />
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <asp:Image runat="server" ImageUrl="~/images/ads/PlayoffCentralBKDPWeb.png" Width="100%" />
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout21" BackColor="LightYellow">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="1" SpanXl="1" SpanLg="1" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <Rows>
                            <telerik:LayoutRow><Content></Content></telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>

                    <telerik:CompositeLayoutColumn Span="8" SpanXl="8" SpanLg="8" HiddenMd="true" HiddenSm="true" HiddenXs="true" >
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:Table runat="server" ID="table2">
                                        <asp:TableRow><asp:TableCell ColumnSpan="4" HorizontalAlign="Center" ForeColor="Black"><h1>2019 OSSAA BASKETBALL STATE TOURNEYS</h1></asp:TableCell></asp:TableRow>
                                        <asp:TableRow><asp:TableCell ColumnSpan="4" HorizontalAlign="Center"><h3>Click the team below for Playoff History</h3></asp:TableCell></asp:TableRow>
                                        <asp:TableRow><asp:TableCell>&nbsp;</asp:TableCell></asp:TableRow>
                                    </asp:Table>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="12" HiddenXl="true" HiddenLg="true" SpanMd="12" SpanSm="12" SpanXs="12" >
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:Table runat="server" ID="table3">
                                        <asp:TableRow><asp:TableCell>&nbsp;</asp:TableCell></asp:TableRow>
                                        <asp:TableRow><asp:TableCell ColumnSpan="4" HorizontalAlign="Center" ForeColor="Black"><h2>2019 OSSAA BASKETBALL STATE TOURNEYS</h2></asp:TableCell></asp:TableRow>
                                    </asp:Table>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="8" SpanXl="8" SpanLg="8" SpanMd="12" SpanSm="12" SpanXs="12" >
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:Table runat="server" ID="table1">
                                        <asp:TableRow>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <telerik:RadGrid runat="server" ID="RadGridGirls6A" DataSourceID="SqlDataSourceGirls6A" AutoGenerateColumns="false">
                                                    <MasterTableView DataSourceID="SqlDataSourceGirls6A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                                        <Columns>
                                                            <telerik:GridTemplateColumn>
                                                                <HeaderTemplate>
                                                                    <asp:label runat="server" Text="CLASS 6A GIRLS" Font-Bold="true" Font-Size="1.25em"></asp:label>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("strURL") %>' Text='<%# Eval("strTeam") %>' Target="_blank"></asp:HyperLink>
                                                                </ItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <telerik:RadGrid runat="server" ID="RadGridBoys6A" DataSourceID="SqlDataSourceBoys6A" AutoGenerateColumns="false">
                                                    <MasterTableView DataSourceID="SqlDataSourceBoys6A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                                        <Columns>
                                                            <telerik:GridTemplateColumn>
                                                                <HeaderTemplate>
                                                                    <asp:label runat="server" Text="CLASS 6A BOYS" Font-Bold="true" Font-Size="1.25em"></asp:label>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("strURL") %>' Text='<%# Eval("strTeam") %>' Target="_blank"></asp:HyperLink>
                                                                </ItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <telerik:RadGrid runat="server" ID="RadGridGirls5A" DataSourceID="SqlDataSourceGirls5A" AutoGenerateColumns="false">
                                                    <MasterTableView DataSourceID="SqlDataSourceGirls5A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                                        <Columns>
                                                            <telerik:GridTemplateColumn>
                                                                <HeaderTemplate>
                                                                    <asp:label runat="server" Text="CLASS 5A GIRLS" Font-Bold="true" Font-Size="1.25em"></asp:label>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("strURL") %>' Text='<%# Eval("strTeam") %>' Target="_blank"></asp:HyperLink>
                                                                </ItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <telerik:RadGrid runat="server" ID="RadGridBoys5A" DataSourceID="SqlDataSourceBoys5A" AutoGenerateColumns="false">
                                                    <MasterTableView DataSourceID="SqlDataSourceBoys5A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                                        <Columns>
                                                            <telerik:GridTemplateColumn>
                                                                <HeaderTemplate>
                                                                    <asp:label runat="server" Text="CLASS 5A BOYS" Font-Bold="true" Font-Size="1.25em"></asp:label>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("strURL") %>' Text='<%# Eval("strTeam") %>' Target="_blank"></asp:HyperLink>
                                                                </ItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow><asp:TableCell ColumnSpan="4"><hr /></asp:TableCell></asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <telerik:RadGrid runat="server" ID="RadGridGirls4A" DataSourceID="SqlDataSourceGirls4A" AutoGenerateColumns="false">
                                                    <MasterTableView DataSourceID="SqlDataSourceGirls4A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                                        <Columns>
                                                            <telerik:GridTemplateColumn>
                                                                <HeaderTemplate>
                                                                    <asp:label runat="server" Text="CLASS 4A GIRLS" Font-Bold="true" Font-Size="1.25em"></asp:label>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("strURL") %>' Text='<%# Eval("strTeam") %>' Target="_blank"></asp:HyperLink>
                                                                </ItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <telerik:RadGrid runat="server" ID="RadGridBoys4A" DataSourceID="SqlDataSourceBoys4A" AutoGenerateColumns="false">
                                                    <MasterTableView DataSourceID="SqlDataSourceBoys4A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                                        <Columns>
                                                            <telerik:GridTemplateColumn>
                                                                <HeaderTemplate>
                                                                    <asp:label runat="server" Text="CLASS 4A BOYS" Font-Bold="true" Font-Size="1.25em"></asp:label>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("strURL") %>' Text='<%# Eval("strTeam") %>' Target="_blank"></asp:HyperLink>
                                                                </ItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <telerik:RadGrid runat="server" ID="RadGridGirls3A" DataSourceID="SqlDataSourceGirls3A" AutoGenerateColumns="false">
                                                    <MasterTableView DataSourceID="SqlDataSourceGirls3A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                                        <Columns>
                                                            <telerik:GridTemplateColumn>
                                                                <HeaderTemplate>
                                                                    <asp:label runat="server" Text="CLASS 3A GIRLS" Font-Bold="true" Font-Size="1.25em"></asp:label>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("strURL") %>' Text='<%# Eval("strTeam") %>' Target="_blank"></asp:HyperLink>
                                                                </ItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <telerik:RadGrid runat="server" ID="RadGridBoys3A" DataSourceID="SqlDataSourceBoys3A" AutoGenerateColumns="false">
                                                    <MasterTableView DataSourceID="SqlDataSourceBoys3A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                                        <Columns>
                                                            <telerik:GridTemplateColumn>
                                                                <HeaderTemplate>
                                                                    <asp:label runat="server" Text="CLASS 3A BOYS" Font-Bold="true" Font-Size="1.25em"></asp:label>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("strURL") %>' Text='<%# Eval("strTeam") %>' Target="_blank"></asp:HyperLink>
                                                                </ItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow><asp:TableCell ColumnSpan="4"><hr /></asp:TableCell></asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top"></asp:TableCell>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <telerik:RadGrid runat="server" ID="RadGridGirls2A" DataSourceID="SqlDataSourceGirls2A" AutoGenerateColumns="false">
                                                    <MasterTableView DataSourceID="SqlDataSourceGirls2A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                                        <Columns>
                                                            <telerik:GridTemplateColumn>
                                                                <HeaderTemplate>
                                                                    <asp:label runat="server" Text="CLASS 2A GIRLS" Font-Bold="true" Font-Size="1.25em"></asp:label>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("strURL") %>' Text='<%# Eval("strTeam") %>' Target="_blank"></asp:HyperLink>
                                                                </ItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <telerik:RadGrid runat="server" ID="RadGridBoys2A" DataSourceID="SqlDataSourceBoys2A" AutoGenerateColumns="false">
                                                    <MasterTableView DataSourceID="SqlDataSourceBoys2A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                                        <Columns>
                                                            <telerik:GridTemplateColumn>
                                                                <HeaderTemplate>
                                                                    <asp:label runat="server" Text="CLASS 2A BOYS" Font-Bold="true" Font-Size="1.25em"></asp:label>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("strURL") %>' Text='<%# Eval("strTeam") %>' Target="_blank"></asp:HyperLink>
                                                                </ItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top"></asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow><asp:TableCell ColumnSpan="4"><hr /></asp:TableCell></asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <telerik:RadGrid runat="server" ID="RadGridGirlsA" DataSourceID="SqlDataSourceGirlsA" AutoGenerateColumns="false">
                                                    <MasterTableView DataSourceID="SqlDataSourceGirlsA" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                                        <Columns>
                                                            <telerik:GridTemplateColumn>
                                                                <HeaderTemplate>
                                                                    <asp:label runat="server" Text="CLASS A GIRLS" Font-Bold="true" Font-Size="1.25em"></asp:label>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("strURL") %>' Text='<%# Eval("strTeam") %>' Target="_blank"></asp:HyperLink>
                                                                </ItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <telerik:RadGrid runat="server" ID="RadGridBoysA" DataSourceID="SqlDataSourceBoysA" AutoGenerateColumns="false">
                                                    <MasterTableView DataSourceID="SqlDataSourceBoysA" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                                        <Columns>
                                                            <telerik:GridTemplateColumn>
                                                                <HeaderTemplate>
                                                                    <asp:label runat="server" Text="CLASS A BOYS" Font-Bold="true" Font-Size="1.25em"></asp:label>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("strURL") %>' Text='<%# Eval("strTeam") %>' Target="_blank"></asp:HyperLink>
                                                                </ItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <telerik:RadGrid runat="server" ID="RadGridGirlsB" DataSourceID="SqlDataSourceGirlsB" AutoGenerateColumns="false">
                                                    <MasterTableView DataSourceID="SqlDataSourceGirlsB" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                                        <Columns>
                                                            <telerik:GridTemplateColumn>
                                                                <HeaderTemplate>
                                                                    <asp:label runat="server" Text="CLASS B GIRLS" Font-Bold="true" Font-Size="1.25em"></asp:label>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("strURL") %>' Text='<%# Eval("strTeam") %>' Target="_blank"></asp:HyperLink>
                                                                </ItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <telerik:RadGrid runat="server" ID="RadGridBoysB" DataSourceID="SqlDataSourceBoysB" AutoGenerateColumns="false">
                                                    <MasterTableView DataSourceID="SqlDataSourceBoysB" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                                        <Columns>
                                                            <telerik:GridTemplateColumn>
                                                                <HeaderTemplate>
                                                                    <asp:label runat="server" Text="CLASS B BOYS" Font-Bold="true" Font-Size="1.25em"></asp:label>
                                                                </HeaderTemplate>
                                                                <ItemTemplate>
                                                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("strURL") %>' Text='<%# Eval("strTeam") %>' Target="_blank"></asp:HyperLink>
                                                                </ItemTemplate>
                                                            </telerik:GridTemplateColumn>
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                        </asp:TableRow>

                                    </asp:Table>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="3" SpanXl="3" SpanLg="3" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <div style="text-align:center;">
                                    <br />
                                    <div style="text-align:center;">
                                    <asp:ImageButton runat="server" ID="img40YearsB" ImageUrl="~/images/40PointClubBoys150.png" PostBackUrl="BKBGameScoring2019.aspx" />&nbsp;<asp:ImageButton runat="server" ID="img40YearsG" ImageUrl="~/images/40PointClubGirls150.png" PostBackUrl="BKGGameScoring2019.aspx" />
                                    </div>
                                    <h3>GIRLS STATE TOURNEY</h3>
                                    <asp:HyperLink runat="server" NavigateUrl="BKGStateChampionships.aspx" CssClass="button orange" Target="_self">STATE CHAMPIONSHIPS</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BKGStateChampionshipCount.aspx" CssClass="button orange" Target="_self">STATE TITLE COUNT</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BKGStateTourneyScores.aspx" CssClass="button orange" Target="_self">TOURNEY SCORES</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BKGStateTourneyWL.aspx" CssClass="button orange" Target="_self">TOURNEY W-L RECORD</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BKGStateTourneyPTSInGame.aspx" CssClass="button orange" Target="_self">TEAM PTS GAME</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BKGThreePM.aspx" CssClass="button orange" Target="_self">3-PEATS ALL-TIME</asp:HyperLink>
                                    <h3>BOYS STATE TOURNEY</h3>
                                    <asp:HyperLink runat="server" NavigateUrl="BKBStateChampionships.aspx" CssClass="button orange" Target="_self">STATE CHAMPIONSHIPS</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BKBStateChampionshipCount.aspx" CssClass="button orange" Target="_self">STATE TITLE COUNT</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BKBStateTourneyScores.aspx" CssClass="button orange" Target="_self">TOURNEY SCORES</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BKBStateTourneyWL.aspx" CssClass="button orange" Target="_self">TOURNEY W-L RECORD</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BKBStateTourneyPTSInGame.aspx" CssClass="button orange" Target="_self">TEAM PTS GAME</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BKBThreePM.aspx" CssClass="button orange" Target="_self">3-PEATS ALL-TIME</asp:HyperLink>
                                    <h3>GIRLS BASKETBALL</h3>
                                    <asp:HyperLink runat="server" NavigateUrl="BKGCareerScoringM.aspx" CssClass="button orange">CAREER PTS 5-on-5</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BKGCareerScoring6M.aspx" CssClass="button orange">CAREER PTS 6-on-6</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BKGUndefeated.aspx" CssClass="button orange">UNDEFEATED TEAMS</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BKGGameScoringAT.aspx" CssClass="button orange" Target="_self">PTS GAME (ALL-TIME)</asp:HyperLink>
                                    <h3>BOYS BASKETBALL</h3>
                                    <asp:HyperLink runat="server" NavigateUrl="BKBCareerScoringM.aspx" CssClass="button orange">CAREER SCORING</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BKBUndefeated.aspx" CssClass="button orange">UNDEFEATED TEAMS</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BKBGameScoringAT.aspx" CssClass="button orange" Target="_self">PTS GAME (ALL-TIME)</asp:HyperLink>
                                    <br />    
                                    <asp:HyperLink runat="server" Font-Size="X-Large" Font-Bold="true" ForeColor="Maroon" Font-Names="Anton;Arial;" Text="LIST OF CHAMPIONS - 100 YEARS<br>Order yours TODAY for only $19.99!<br>Free Shipping" NavigateUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=YTFBEWGMEUDCY" Target="_blank"></asp:HyperLink>
                                    <iframe width="350" height="350" src="https://www.youtube.com/embed/NraFX8j8xXQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br /><br />
                                        <asp:HyperLink runat="server" NavigateUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=YTFBEWGMEUDCY" Target="_blank"><asp:Image runat="server" ImageUrl="~/images/ListOfChampionsCover2018300.png" /></asp:HyperLink><br />
                                    <asp:Label runat="server" ID="lblInfo" Text="100 Years of Oklahoma High School State Champions, that's over 25,000 in one Almanac!  Over 325 pages of champions in every sport, non-athletic actvities, teams, individuals, academic, IT'S ALL HERE!  Get yours with FREE SHIPPING TODAY!" Font-Name="Arial" Font-Size="Medium"></asp:Label><br />
                                        <asp:ImageButton Visible="false" runat="server" ImageUrl="~/images/youtubebutton-01.png" Width="250px" PostBackUrl="https://www.youtube.com/channel/UCHrietY_N_4p0xcBob_QzRg"  /><br />
                                    </div>                                        
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:RadPageLayout>         
    <asp:SqlDataSource ID="SqlDataSourceGirlsA" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblBasketballPlayoffCentral WHERE strSportGenderKey = 'BasketballGirlsA' AND intYear = 19 ORDER BY intSort">
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSourceBoysA" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblBasketballPlayoffCentral WHERE strSportGenderKey = 'BasketballBoysA' AND intYear = 19 ORDER BY intSort">
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSourceGirlsB" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblBasketballPlayoffCentral WHERE strSportGenderKey = 'BasketballGirlsB' AND intYear = 19 ORDER BY intSort">
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSourceBoysB" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblBasketballPlayoffCentral WHERE strSportGenderKey = 'BasketballBoysB' AND intYear = 19 ORDER BY intSort">
    </asp:SqlDataSource>  

    <asp:SqlDataSource ID="SqlDataSourceGirls6A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblBasketballPlayoffCentral WHERE strSportGenderKey = 'BasketballGirls6A' AND intYear = 19 ORDER BY intSort">
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSourceBoys6A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblBasketballPlayoffCentral WHERE strSportGenderKey = 'BasketballBoys6A' AND intYear = 19 ORDER BY intSort">
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSourceGirls5A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblBasketballPlayoffCentral WHERE strSportGenderKey = 'BasketballGirls5A' AND intYear = 19 ORDER BY intSort">
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSourceBoys5A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblBasketballPlayoffCentral WHERE strSportGenderKey = 'BasketballBoys5A' AND intYear = 19 ORDER BY intSort">
    </asp:SqlDataSource> 

    <asp:SqlDataSource ID="SqlDataSourceGirls4A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblBasketballPlayoffCentral WHERE strSportGenderKey = 'BasketballGirls4A' AND intYear = 19 ORDER BY intSort">
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSourceBoys4A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblBasketballPlayoffCentral WHERE strSportGenderKey = 'BasketballBoys4A' AND intYear = 19 ORDER BY intSort">
    </asp:SqlDataSource> 
    <asp:SqlDataSource ID="SqlDataSourceGirls3A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblBasketballPlayoffCentral WHERE strSportGenderKey = 'BasketballGirls3A' AND intYear = 19 ORDER BY intSort">
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSourceBoys3A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblBasketballPlayoffCentral WHERE strSportGenderKey = 'BasketballBoys3A' AND intYear = 19 ORDER BY intSort">
    </asp:SqlDataSource> 
    <asp:SqlDataSource ID="SqlDataSourceGirls2A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblBasketballPlayoffCentral WHERE strSportGenderKey = 'BasketballGirls2A' AND intYear = 19 ORDER BY intSort">
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSourceBoys2A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblBasketballPlayoffCentral WHERE strSportGenderKey = 'BasketballBoys2A' AND intYear = 19 ORDER BY intSort">
    </asp:SqlDataSource> 

</asp:Content>



