<%@ Page Title="Oklahoma High School Football Games" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootballNOAJAX.Master" CodeBehind="FBPlayoffTotals.aspx.vb" Inherits="TheSportsEngine2017.FBPlayoffTotals" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Football Playoffs" />
    <meta name="twitter:description" content="ALL-TIME High School Football Wins, Losses and Championships (since 1944)" />
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
        <asp:Table runat="server" ID="tblBKBStateTourneyScores">
            <asp:TableRow>
                <asp:TableCell>
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="false" NoMasterRecordsText="Playoffs" PageSize="500">
                            <Columns>
                                <telerik:GridBoundColumn DataField="strTeam" HeaderAbbr="Team" UniqueName="strTeam" HeaderText="TEAM" 
                                    AllowFiltering="false" AllowSorting="true" >
                                    <HeaderStyle Font-Bold="true" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="intAppearances" HeaderAbbr="Appear" UniqueName="intAppearances" HeaderText="Appear" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" />
                                    <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="intGames" HeaderAbbr="Games" UniqueName="intGames" HeaderText="Games" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" />
                                    <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="intChampionships" HeaderAbbr="Titles" UniqueName="intChampionships" HeaderText="Titles" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" />
                                    <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="intW" HeaderAbbr="Wins" UniqueName="intW" HeaderText="Wins" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" />
                                    <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="intL" HeaderAbbr="Losses" UniqueName="intL" HeaderText="Losses" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" />
                                    <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="intLastPlayoffAppearance" HeaderAbbr="Last" UniqueName="intLastPlayoffAppearance" HeaderText="Last" 
                                    AllowFiltering="false" AllowSorting="true" >
                                    <HeaderStyle Font-Bold="true" Width="15%" HorizontalAlign="Right" />
                                    <ItemStyle Width="15%" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                            </Columns>                        
                        </MasterTableView>
                    </telerik:RadGrid>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>  
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_FootballPlayoffGameTotals WHERE strState = @state ORDER BY strTeam">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>    

</asp:Content>



