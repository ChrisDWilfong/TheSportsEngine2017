<%@ Page Title="State Champions by School" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPage2017.Master" CodeBehind="StateChampionshipsBySchool.aspx.vb" Inherits="TheSportsEngine2017.StateChampionshipsBySchool" %>

<%@ Register Src="~/ucSportsPage.ascx" TagPrefix="uc1" TagName="ucSportsPage" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Your Schools Oklahoma High School State Champions" />
    <meta name="twitter:description" content="Your schools ALL-TIME Oklahoma High School State Championships list." />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/IWATGCOM_New_JustBallsBG_TC.png" />       
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h5>
                        <asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text="" CssClass="headerTitle"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text="" CssClass="headerDetail"></asp:Label>
                        </h5>
						<div style="text-align:center;">
                            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- Top Banner -->
                            <ins class="adsbygoogle"
                                 style="display:inline-block;width:970px;height:90px"
                                 data-ad-client="ca-pub-6403098483302166"
                                 data-ad-slot="4121249041"></ins>
                            <script>
								(adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
						</div>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h5>
                        <asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text="" CssClass="headerTitle"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text="" CssClass="headerDetail"></asp:Label>
                        </h5>
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
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <link href="styles/SCBySchool.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Ewart' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Anto' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Holtwood+One+SC' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=IM+Fell+Double+Pica+SC' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Bowlby+One' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Changa+One' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Saira+Extra+Condensed' rel='stylesheet' type='text/css' />
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper0">
        <asp:Table runat="server" ID="tblSCBySchool" Width="90%" HorizontalAlign="center">
        <asp:TableRow ID="rowSportsPage" Visible="false" HorizontalAlign="center">
            <asp:TableCell HorizontalAlign="center">
                <telerik:RadButton runat="server" ID="cmdCloseSportsPage" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="1.25em" Font-Bold="true" Text="CLOSE SPORTS PAGE" >
                </telerik:RadButton><br /><br />
                <div style="text-align:center;">
                    <uc1:ucSportsPage runat="server" id="ucSportsPage" />
                </div>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow><asp:TableCell>&nbsp;</asp:TableCell></asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:DropDownList ID="RadDropDownListSchools" runat="server" DataSourceID="SqlDataSourceSchools" DataTextField="strSchool" DataValueField="strSchool" AutoPostBack="True" DefaultMessage="Select School..." DropDownHeight="300px"
                    BackColor="#ffcc99" Height="40px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="26px">
                </asp:DropDownList>
                &nbsp;
                <asp:Label runat="server" Id="lblInfo" Text="<-- SELECT your school" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="20px" ForeColor="Red" Font-Bold="true" ></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
            <asp:TableRow ID="rowBaseball" CssClass="rowSport">
                <asp:TableCell>&nbsp;Baseball</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowBaseballYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strBaseball") %></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowBaseballFall" CssClass="rowSport">
                <asp:TableCell>&nbsp;Baseball Fall</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowBaseballFallYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strBaseballFall") %></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowBasketballBoys" CssClass="rowSport">
                <asp:TableCell>&nbsp;Basketball Boys</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowBasketballBoysYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strBasketballBoys") %></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowBasketballGirls" CssClass="rowSport">
                <asp:TableCell>&nbsp;Basketball Girls</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowBasketballGirlsYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strBasketballGirls") %></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowFootball" CssClass="rowSport">
                <asp:TableCell>&nbsp;Football</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowFootballYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strFootball") %></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowFPSoftball" CssClass="rowSport">
                <asp:TableCell>&nbsp;Fast Pitch Softball</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowFPSoftballYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strFPSoftball") %></asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow ID="rowSPSoftball" CssClass="rowSport">
                <asp:TableCell>&nbsp;Slow Pitch Softball</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowSPSoftballYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strSPSoftball") %></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="rowCheerleading" CssClass="rowSport">
                <asp:TableCell>&nbsp;Cheerleading</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowCheerleadingYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strCheerleading") %></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="rowCrossCountryBoys" CssClass="rowSport">
                <asp:TableCell>&nbsp;Cross Country Boys</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowCrossCountryBoysYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strCrossCountryBoys") %></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowCrossCountryGirls" CssClass="rowSport">
                <asp:TableCell>&nbsp;Cross Country Girls</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowCrossCountryGirlsYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strCrossCountryGirls") %></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="rowGolfBoys" CssClass="rowSport">
                <asp:TableCell>&nbsp;Golf Boys</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowGolfBoysYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strGolfBoys") %></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowGolfGirls" CssClass="rowSport">
                <asp:TableCell>&nbsp;Golf Girls</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowGolfGirlsYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strGolfGirls") %></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="rowSoccerBoys" CssClass="rowSport">
                <asp:TableCell>&nbsp;Soccer Boys</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowSoccerBoysYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strSoccerBoys") %></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowSoccerGirls" CssClass="rowSport">
                <asp:TableCell>&nbsp;Soccer Girls</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowSoccerGirlsYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strSoccerGirls") %></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="rowSwimmingBoys" CssClass="rowSport">
                <asp:TableCell>&nbsp;Swimming Boys</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowSwimmingBoysYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strSwimmingBoys") %></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowSwimmingGirls" CssClass="rowSport">
                <asp:TableCell>&nbsp;Swimming Girls</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowSwimmingGirlsYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strSwimmingGirls") %></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="rowTennisBoys" CssClass="rowSport">
                <asp:TableCell>&nbsp;Tennis Boys</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowTennisBoysYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strTennisBoys") %></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowTennisGirls" CssClass="rowSport">
                <asp:TableCell>&nbsp;Tennis Girls</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowTennisGirlsYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strTennisGirls") %></asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow ID="rowTrackBoys" CssClass="rowSport">
                <asp:TableCell>&nbsp;Track Boys</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowTrackBoysYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strTrackBoys") %></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowTrackGirls" CssClass="rowSport">
                <asp:TableCell>&nbsp;Track Girls</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowTrackGirlsYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strTrackGirls") %></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="rowVolleyball" CssClass="rowSport">
                <asp:TableCell>&nbsp;Volleyball</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowVolleyballYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strVolleyball") %></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="rowWrestling" CssClass="rowSport">
                <asp:TableCell>&nbsp;Wrestling</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowWrestlingYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strWrestling") %></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowWrestlingDual" CssClass="rowSport">
                <asp:TableCell>&nbsp;Wrestling Dual</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowWrestlingDualYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strWrestlingDual") %></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="rowJazzBand" CssClass="rowSport">
                <asp:TableCell>&nbsp;Jazz Band</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowJazzBandYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strJazzBand") %></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="rowSpeechDebate" CssClass="rowSport">
                <asp:TableCell>&nbsp;Speech/Debate</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowSpeechDebateYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strSpeechDebate") %></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow ID="rowOneAct" CssClass="rowSport">
                <asp:TableCell>&nbsp;One Act</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="rowOneActYears" CssClass="rowYears">
                <asp:TableCell><%= Session("strOneAct") %></asp:TableCell>
            </asp:TableRow>

            <asp:TableRow><asp:TableCell>&nbsp;</asp:TableCell></asp:TableRow>
            
            <asp:TableRow ID="rowAdBottom" Visible="false">
                <asp:TableCell>
                    <div style="text-align:center;">
                    <asp:HyperLink ID="hlBottom" runat="server" NavigateUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=4XH5CLU3AKTVW" ImageUrl="~/images/OK/ORDER100YearSpecial.png" Target="_blank"></asp:HyperLink>
                    </div>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>  
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSourceSchools" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
            SelectCommand="SELECT * FROM viewStateChampionsDistinctSchools WHERE strState = @state ORDER BY strSchool">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource> 
   

</asp:Content>



