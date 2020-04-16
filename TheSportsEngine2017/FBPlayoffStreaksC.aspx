<%@ Page Title="Oklahoma High School Football Playoffs" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootball.Master" CodeBehind="FBPlayoffStreaksC.aspx.vb" Inherits="TheSportsEngine2017.FBPlayoffStreaksC" %>

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
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                         AllowPaging="false" >
                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                            <Columns>
                              <telerik:GridTemplateColumn UniqueName="TemplateColumn" HeaderText="#">
                                <ItemStyle Font-Size="Small" HorizontalAlign="Right" Width="35px" />
                                <HeaderStyle Font-Size="Small" Font-Bold="true" HorizontalAlign="Center" Width="35px" />
                                <ItemTemplate>
                                  <asp:Label ID="numberLabel" runat="server" Width="20px" />
                                </ItemTemplate>
                                <HeaderStyle Width="35px" />
                              </telerik:GridTemplateColumn>
                            </Columns>
                            <Columns>
                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Streak" UniqueName="strDisplay" HeaderText="# (Years) - Team" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true"  />
                                </telerik:GridBoundColumn>
                            </Columns>
                            <Columns>
                                <telerik:GridBoundColumn DataField="intYears" HeaderAbbr="" UniqueName="intYears" HeaderText="" 
                                    AllowFiltering="false" AllowSorting="false" Display="false" >
                                </telerik:GridBoundColumn>
                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid> 
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT Id, strSport, strTeam, intYearStart, intYearEnd, intYears, strStreak, CAST(intYears AS varchar(5)) + ' (' + CAST(intYearEnd AS varchar(5)) + '-' + CAST(intYearStart AS varchar(5)) + ') - ' + strTeam AS strDisplay FROM tblStreak WHERE strSport = 'Football' AND intYearEnd = 2018 AND intYears >= 7 AND strState = @state ORDER BY intYears DESC, strTeam">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>    
</asp:Content>



