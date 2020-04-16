<%@ Page Title="Oklahoma High School ALL-DECADE State Champions 2010-2019" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageAllDecade.Master" CodeBehind="AllDecade2010.aspx.vb" Inherits="TheSportsEngine2017.AllDecade2010" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="description" content="Oklahoma All Decade List Of Champions 2010-19 - #OKPrepsALLDECADE">
    <meta name="keywords" content="OKPreps, OK Preps, Oklahoma All Decade, Oklahoma High School sports">
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School ALL-DECADE List of Champions" />
    <meta name="twitter:description" content="List of Champions from the 2010-2019 Decade in Oklahoma High School Sports" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/images/OK/AllDecade_LOCWB.png" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="RadAjaxPanel21" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text="" Font-Size="XX-Large"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text="" Font-Size="XX-Large"></asp:Label></h3>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text="" Font-Size="Large"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text="" Font-Size="X-Large"></asp:Label></h3>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="12" SpanSm="12" SpanXs="12">
                        &nbsp;
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="6" SpanXl="6" SpanLg="6" SpanMd="12" SpanSm="12" SpanXs="12">
                        <asp:Panel ID="RadAjaxPanel1001" runat="server" CssClass="grid_wrapper">
                            <asp:Table runat="server" ID="tblFBScoring10Year">
                                <asp:TableRow HorizontalAlign="Center">
                                    <asp:TableCell>
                                        <asp:DropDownList ID="RadDropDownListClass" runat="server" AutoPostBack="True" DataValueField="strClass" DataTextField="strClass"
                                            Width="60%" BackColor="#ffcc99" Height="32px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="20px">
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="Center">
                                    <asp:TableCell>
                                        <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                                            <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="False" NoMasterRecordsText="" PageSize="1000">
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="COACH (Teams)" UniqueName="strDisplay" HeaderText="COACH (Teams)" 
                                                        AllowFiltering="false" AllowSorting="true" >
                                                        <HeaderStyle Width="65%" Font-Bold="true" />
                                                        <ItemStyle Width="65%" HorizontalAlign="Left" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="sumWins" HeaderAbbr="Wins" UniqueName="sumWins" HeaderText="W" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="15%" HorizontalAlign="Center" />
                                                        <ItemStyle Width="15%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="sumLosses" HeaderAbbr="Losses" UniqueName="sumLosses" HeaderText="L" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="15%" HorizontalAlign="Center" />
                                                        <ItemStyle Width="15%" HorizontalAlign="Right" />
                                                    </telerik:GridBoundColumn>
                                                </Columns>                        
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="Center">
                                    <asp:TableCell>
                                        <telerik:RadGrid ID="RadGrid2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowPaging="true" >
                                            <MasterTableView DataSourceID="SqlDataSource2" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="False" NoMasterRecordsText="" PageSize="1000">
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="intWins" HeaderAbbr="TITLES" UniqueName="intWins" HeaderText="TITLES" AllowFiltering="false" AllowSorting="true" AutoPostBackOnFilter="true" >
                                                        <HeaderStyle Font-Bold="true" Width="20%" HorizontalAlign="Center" />
                                                        <ItemStyle Width="20%" HorizontalAlign="Center" Font-Size="Large"/>
                                                    </telerik:GridBoundColumn>  
                                                    <telerik:GridBoundColumn DataField="strSchool" HeaderAbbr="Team" UniqueName="strSchool" HeaderText="TEAM" 
                                                        AllowFiltering="false" AllowSorting="true" >
                                                        <HeaderStyle Width="60%" Font-Bold="true" />
                                                        <ItemStyle Width="60%" HorizontalAlign="Left" Font-Size="Large" />
                                                    </telerik:GridBoundColumn>

                                                </Columns>                        
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>  
                        </asp:Panel>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="12" SpanSm="12" SpanXs="12">
                        <div style="text-align:center;">
                        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                        <!-- Wide Skyscraper 1 -->
                        <ins class="adsbygoogle"
                             style="display:inline-block;width:160px;height:600px"
                             data-ad-client="ca-pub-6403098483302166"
                             data-ad-slot="4934314751"></ins>
                        <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                        </script>
                        <br /><br />    
                        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                        <!-- 300x600 Ad -->
                        <ins class="adsbygoogle"
                             style="display:inline-block;width:300px;height:600px"
                             data-ad-client="ca-pub-6403098483302166"
                             data-ad-slot="6996083575"></ins>
                        <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                        </script>
                    </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT CAST(SUM(intW) AS varchar(10)) AS sumWins, CAST(SUM(intL) AS varchar(10)) AS sumLosses, UPPER(strCoach) + ' (' + dbo.GetSchoolsForCoach(strCoach, 2010, 2019) + ') ' AS strDisplay, SUM(intW) AS intWins, SUM(intL) as intLosses, UPPER(strCoach) AS strCoach, dbo.GetSchoolsForCoach(strCoach, 2010, 2019) AS strSchools FROM tblCoachesDetail
WHERE (intYear >= 2010 AND intYear <= 2019)
GROUP BY strCoach
HAVING (SUM(intW) >= 40)
ORDER BY SUM(intW) DESC, strCoach">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter ControlID="RadDropDownListClass" Name="cboClass" DefaultValue="DODGERS" />
            <asp:SessionParameter Name="sport" SessionField="globalSportGenderKey" DefaultValue="None" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>   

    <asp:SqlDataSource ID="SqlDataSource1a" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT CAST(SUM(intW) AS varchar(10)) AS sumWins, CAST(SUM(intL) AS varchar(10)) AS sumLosses, UPPER(strCoach) + ' (' + dbo.GetSchoolsForCoach(strCoach, 2000, 2009) + ') ' AS strDisplay, SUM(intW) AS intWins, SUM(intL) as intLosses, UPPER(strCoach) AS strCoach, dbo.GetSchoolsForCoach(strCoach, 2000, 2009) AS strSchools FROM tblCoachesDetail
WHERE (intYear >= 2000 AND intYear <= 2009)
GROUP BY strCoach
HAVING (SUM(intW) >= 50)
ORDER BY SUM(intW) DESC, strCoach">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter ControlID="RadDropDownListClass" Name="cboClass" DefaultValue="DODGERS" />
            <asp:SessionParameter Name="sport" SessionField="globalSportGenderKey" DefaultValue="None" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>        
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT COUNT(*) AS intWins, UPPER(strSchool) + '<br />(' + dbo.GetStateChampionshipYearsSport(@sport, strSchool, 2010, 2019) + ')' AS strSchool FROM tblStateChampions 
            WHERE (intYear >= 2010 AND intYear <= 2019) AND strState = @state AND strSportGenderKey = @sport GROUP BY strSchool
            ORDER BY Count(*) DESC, strSchool">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter ControlID="RadDropDownListClass" Name="cboClass" DefaultValue="DODGERS" />
            <asp:SessionParameter Name="sport" SessionField="globalSportGenderKey" DefaultValue="None" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>  

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT COUNT(strSchool) AS intWins, strSchool FROM tblStateChampions 
                WHERE (intYear >= 2010 AND intYear <= 2019) AND strState = 'OK' AND (strSportGenderKey <> 'AcademicBowl' AND strSportGenderKey <> 'OneAct' AND strSportGenderKey <> 'JazzBand' AND strSportGenderKey <> 'SpeechDebate')
                GROUP BY strSchool
                ORDER BY COUNT(strSchool) DESC, strSchool">
    </asp:SqlDataSource> 

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT COUNT(*) AS intWins, UPPER(strSchool) + '<br />(' + dbo.GetStateChampionshipYearsSport(@sport, strSchool, 2010, 2019) + ')' AS strSchool FROM tblStateChampions 
            WHERE (intYear >= 2010 AND intYear <= 2019) AND strState = @state AND strSportGenderKey = @sport GROUP BY strSchool
            ORDER BY Count(*) DESC, strSchool">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter ControlID="RadDropDownListClass" Name="cboClass" DefaultValue="DODGERS" />
            <asp:SessionParameter Name="sport" SessionField="globalSportGenderKey" DefaultValue="None" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>  

</asp:Content>



