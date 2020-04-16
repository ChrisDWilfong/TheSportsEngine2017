<%@ Page Title="Oklahoma High School Football Coaching Records" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootballNoAJAX.Master" CodeBehind="FBCoachingRecords.aspx.vb" Inherits="TheSportsEngine2017.FBCoachingRecords" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Football Coaching WINS" />
    <meta name="twitter:description" content="List of High School coaching wins in the state of Oklahoma." />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/IWATG_Logo_Football.png" />       
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="RadAjaxPanel212" runat="server" CssClass="grid_wrapper">
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
    </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="2" SpanXl="2" SpanLg="2" SpanMd="2" HiddenSm="true" HiddenXs="true">
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="8" SpanXl="8" SpanLg="8" SpanMd="8" HiddenSm="true" HiddenXs="true">
                        <asp:Panel ID="RadAjaxPanel100" runat="server" CssClass="grid_wrapper">
                            <asp:Table runat="server" ID="tblFBOD">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                                            <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="false" NoMasterRecordsText="Coaching Records" PageSize="100">
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="Rank" HeaderAbbr="Last" UniqueName="Rank" HeaderText="#" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="8%" HorizontalAlign="Center" />
                                                        <ItemStyle Width="50px" HorizontalAlign="Center"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="Id" UniqueName="Id" Visible="false" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="strCoachesName" HeaderAbbr="Coach" UniqueName="strCoachesName" HeaderText="COACH" 
                                                        AllowFiltering="false" AllowSorting="true" >
                                                        <HeaderStyle Font-Bold="true" />
                                                    </telerik:GridBoundColumn>                                
                                                    <telerik:GridBoundColumn DataField="strLastSchool" HeaderAbbr="Lastest Team" UniqueName="strLastSchool" HeaderText="LATEST TEAM" 
                                                        AllowFiltering="false" AllowSorting="true" >
                                                        <HeaderStyle Font-Bold="true" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intLastYearCoaching" HeaderAbbr="Last" UniqueName="intLastYearCoaching" HeaderText="Last" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="12%" HorizontalAlign="Right" />
                                                        <ItemStyle Width="12%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intYears" HeaderAbbr="Yrs" UniqueName="intYears" HeaderText="Years" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" />
                                                        <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intWins" HeaderAbbr="W" UniqueName="intWins" HeaderText="W" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="13%" HorizontalAlign="Right" />
                                                        <ItemStyle Width="13%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intLosses" HeaderAbbr="L" UniqueName="intLosses" HeaderText="L" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" />
                                                        <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                </Columns>                        
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>  
                        </asp:Panel>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn HiddenLg="true" HiddenXl="true" HiddenMd="true" SpanSm="12" SpanXs="12">
                        <asp:Panel ID="Panel1" runat="server" CssClass="grid_wrapper">
                            <asp:Table runat="server" ID="Table1">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <telerik:RadGrid ID="RadGrid2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                                            <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="false" NoMasterRecordsText="Coaching Records" PageSize="100">
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="Rank" HeaderAbbr="Last" UniqueName="Rank" HeaderText="#" AllowFiltering="false" AllowSorting="false" >
                                                        <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Center" Font-Size="X-Small" />
                                                        <ItemStyle Width="10%" HorizontalAlign="Center" Font-Size="X-Small"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="Id" UniqueName="Id" Visible="false" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="strCoachSchool" HeaderAbbr="Coach (Last School)" UniqueName="strCoachSchool" HeaderText="COACH (LAST SCHOOL)" 
                                                        AllowFiltering="false" AllowSorting="true" >
                                                        <HeaderStyle Width="38%" Font-Bold="true" Font-Size="X-Small" />
														<ItemStyle Width="38%" HorizontalAlign="Left" Font-Size="X-Small"/>
                                                    </telerik:GridBoundColumn>                                
                                                    <telerik:GridBoundColumn DataField="strYearsLast" HeaderAbbr="Years (Last)" UniqueName="strYearsLast" HeaderText="Years (Last)" AllowFiltering="false" AllowSorting="false" >
                                                        <HeaderStyle Font-Bold="true" Width="25%" HorizontalAlign="Left" Font-Size="X-Small"/>
                                                        <ItemStyle Width="25%" HorizontalAlign="Left" Font-Size="X-Small"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="strWL" HeaderAbbr="W-L" UniqueName="strWL" HeaderText="W-L" AllowFiltering="false" AllowSorting="false" >
                                                        <HeaderStyle Font-Bold="true" Width="25%" HorizontalAlign="Center" Font-Size="X-Small"/>
                                                        <ItemStyle Width="25%" HorizontalAlign="Left" Font-Size="X-Small"/>
                                                    </telerik:GridBoundColumn>
                                                </Columns>                        
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>  
                        </asp:Panel>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="2" SpanXl="2" SpanLg="2" SpanMd="2" SpanSm="12" SpanXs="12">
                        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                        <!-- Wide Skyscraper 1 -->
                        <ins class="adsbygoogle"
                             style="display:inline-block;width:160px;height:600px"
                             data-ad-client="ca-pub-6403098483302166"
                             data-ad-slot="4934314751"></ins>
                        <script>
                        (adsbygoogle = window.adsbygoogle || []).push({});
                        </script>
                        <br />
                        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                        <!-- 300x600 Ad -->
                        <ins class="adsbygoogle"
                             style="display:inline-block;width:300px;height:600px"
                             data-ad-client="ca-pub-6403098483302166"
                             data-ad-slot="6996083575"></ins>
                        <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                        </script>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT RANK() OVER (ORDER BY intWins DESC) As Rank, *,  CAST(CAST(CAST(intWins AS FLOAT) / CAST(intWins + intLosses AS Float) AS decimal(18, 4)) * 100 AS decimal(18, 2)) AS WinPerc, strCoachesName + '<br>(' + strLastSchool + ')' AS strCoachSchool, CAST(intWins AS varchar(10)) + '-' + CAST(intLosses AS varchar(10)) AS strWL, CAST(intYears AS varchar(10)) + ' (' + CAST(intLastYearCoaching AS varchar(10)) + ')' AS strYearsLast
			FROM tblCoachesRecords WHERE strSportGenderKey = 'Football' AND intWins >= 190 ORDER BY intWins DESC">
    </asp:SqlDataSource>    

</asp:Content>



