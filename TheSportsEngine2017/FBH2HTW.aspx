<%@ Page Title="Oklahoma High School Football Head to Head" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootballNOAJAX.Master" CodeBehind="FBH2HTW.aspx.vb" Inherits="TheSportsEngine2017.FBH2HTW" %>

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
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper">
        <asp:Table runat="server" ID="tblFBStateTourneyScores">
            <asp:TableRow>
                <asp:TableCell>
                    <h2>
                    <asp:Label runat="server" ID="globalSchool"></asp:Label>
                    vs.
                    <asp:Label runat="server" ID="globalOpponent"></asp:Label>
                    </h2>
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
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_Football_Games WHERE strState = @state AND (strSchool = @selectedSchool AND strOpponent = @selectedOpponent) ORDER BY intYear DESC, intSort">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="selectedSchool" SessionField="globalSchool" DefaultValue="DODGERS" />
            <asp:SessionParameter Name="selectedOpponent" SessionField="globalOpponent" DefaultValue="DODGERS" />
        </SelectParameters>    
    </asp:SqlDataSource>    

</asp:Content>



