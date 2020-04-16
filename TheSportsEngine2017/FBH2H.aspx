<%@ Page Title="Oklahoma High School Football Head to Head" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootballNOAJAX.Master" CodeBehind="FBH2H.aspx.vb" Inherits="TheSportsEngine2017.FBH2H" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Football Head to Head" />
    <meta name="twitter:description" content="Historical Oklahoma High School Football Head-to-Head Matchups" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/IWATG_Logo_Football.png" />
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
    <div class="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="12" SpanSm="12" SpanXs="12">
                        &nbsp;
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="6" SpanXl="6" SpanLg="6" SpanMd="12" SpanSm="12" SpanXs="12">
                        <asp:Table runat="server" ID="tblBKBStateTourneyScores">
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:DropDownList ID="RadDropDownListSchool" runat="server" DataSourceID="SqlDataSourceSchools" DataTextField="strSchool" DataValueField="strSchool" 
                                        AutoPostBack="True" DefaultMessage="Select School..." DropDownHeight="250px"
                                        BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                                    </asp:DropDownList>&nbsp;
                                    <asp:Label ID="lblSchool" runat="server" Text="" Visible="false"></asp:Label>
                                    &nbsp;
                                    <asp:DropDownList ID="RadDropDownListSchoolOpp" runat="server" DataSourceID="SqlDataSourceSchoolsOpp" DataTextField="strOpponent" DataValueField="strOpponent" 
                                        AutoPostBack="True" DefaultMessage="Select Opponent..." DropDownHeight="250px"
                                        BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                                    </asp:DropDownList>
                                    <asp:Label ID="lblOpponent" runat="server" Text="" Visible="false"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Label ID="lblSeasonInfo" runat="server" Font-Size="Large" Font-Bold="true"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="Make selection above...">
                                            <Columns>
                                                <telerik:GridBoundColumn DataField="intYear" HeaderAbbr="Year" UniqueName="intYear" HeaderText="Year" AllowFiltering="false" AllowSorting="false" >
                                                    <HeaderStyle Font-Bold="true" Width="12%" />
                                                    <ItemStyle Width="12%" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="strWL" HeaderAbbr="WL" UniqueName="strWL" HeaderText="WL" AllowFiltering="false" AllowSorting="false" >
                                                    <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Center" />
                                                    <ItemStyle Width="10%" HorizontalAlign="Center" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="FOOTBALL GAMES" 
                                                    AllowFiltering="false" AllowSorting="false" >
                                                    <HeaderStyle Font-Bold="true" />
                                                </telerik:GridBoundColumn>
                                                <telerik:GridBoundColumn DataField="Level" HeaderAbbr="" UniqueName="Level" HeaderText="" 
                                                    AllowFiltering="false" AllowSorting="false" >
                                                    <HeaderStyle Font-Bold="true" Width="30%" />
                                                    <ItemStyle HorizontalAlign="Left" Width="30%" />
                                                </telerik:GridBoundColumn>
                                            </Columns>                        
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>  
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="2" SpanXl="2" SpanLg="2" SpanMd="12" SpanSm="12" SpanXs="12">
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
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_Football_Games WHERE strState = @state AND (strSchool = @selectedSchool AND strOpponent = @selectedOpponent) ORDER BY intYear DESC, intSort">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selectedSchool" ControlID="RadDropDownListSchool" PropertyName="SelectedValue" DefaultValue="DODGERS" />
            <asp:ControlParameter Name="selectedOpponent" ControlID="RadDropDownListSchoolOpp" PropertyName="SelectedValue" DefaultValue="DODGERS" />
        </SelectParameters>    
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSourceSchools" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT strSchool FROM IWATGview_Football_Games WHERE strState = @state ORDER BY strSchool">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>   
    
    <asp:SqlDataSource ID="SqlDataSourceSchoolsOpp" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT strOpponent FROM IWATGview_Football_Games WHERE strSchool = @selectedSchool AND strState = @state ORDER BY strOpponent">
        <SelectParameters>
            <asp:ControlParameter Name="selectedSchool" ControlID="RadDropDownListSchool" PropertyName="SelectedValue" DefaultValue="DODGERS" />
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>        


</asp:Content>



