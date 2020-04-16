<%@ Page Title="Oklahoma High School Football Playoffs" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootball.Master" CodeBehind="FBPlayoffStreaksS.aspx.vb" Inherits="TheSportsEngine2017.FBPlayoffStreaksS" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Football Playoffs" />
    <meta name="twitter:description" content="Active Oklahoma High School Football Playoff Years Streak (since 1944)" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/IWATG_Logo_Football.png" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Text="OKLAHOMA HIGH SCHOOL CONSECUTIVE YEARS PLAYOFFS" Font-Bold="true"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text="FOOTBALL - CURRENT STREAKS"></asp:Label></h3>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Text="OKLAHOMA HIGH SCHOOL CONSECUTIVE YEARS PLAYOFFS" Font-Bold="true"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text="FOOTBALL - CURRENT STREAKS"></asp:Label></h3>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
        <telerik:RadAjaxPanel ID="RadAjaxPanel1"  runat="server" CssClass="grid_wrapper">
            <asp:Table ID="tblOne" runat="server">
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Center">
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="false" Width="70%">
                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                            <Columns>
                                <telerik:GridBoundColumn DataField="strStreak" HeaderAbbr="Streak" UniqueName="strStreak" HeaderText="Team - Years" AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true"  />
                                </telerik:GridBoundColumn>
                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid> 
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT strTeam, strTeam + ' - ' + (SELECT TOP 1 strStreak FROM tblStreak WHERE strState = @state AND strSport = 'Football' AND strTeam = IWATGtmpview_FootballGameWinnersAndLosers_ALL.strTeam ORDER BY intyears DESC) AS strStreak FROM IWATGtmpview_FootballGameWinnersAndLosers_ALL WHERE NOT (SELECT TOP 1 strStreak FROM tblStreak WHERE strState = @state AND strSport = 'Football' AND strTeam = IWATGtmpview_FootballGameWinnersAndLosers_ALL.strTeam ORDER BY intyears DESC) Is Null ORDER BY strTeam">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>    
</asp:Content>



