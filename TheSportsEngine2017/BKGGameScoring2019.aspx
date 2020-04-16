<%@ Page Title="Oklahoma High School Girls Basketball Game Scoring 2018-2019" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageBasketball40.Master" CodeBehind="BKGGameScoring2019.aspx.vb" Inherits="TheSportsEngine2017.BKGGameScoring2019" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Text="OKLAHOMA HIGH SCHOOL 2018-19 40 POINT CLUB" Font-Bold="true"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text="GIRLS BASKETBALL - #OK40PointClub"></asp:Label></h3>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Text="OKLAHOMA HIGH SCHOOL 2018-19 40 POINT CLUB" Font-Bold="true"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text="GIRLS BASKETBALL - #OK40PointClub"></asp:Label></h3>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper">
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                         AllowPaging="false" >
                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                            <Columns>
                              <telerik:GridTemplateColumn UniqueName="TemplateColumn" HeaderText="#">
                                <ItemStyle  HorizontalAlign="Right" Width="35px" />
                                <HeaderStyle Font-Bold="true" HorizontalAlign="Center" Width="35px" />
                                <ItemTemplate>
                                  <asp:Label ID="numberLabel" runat="server" Width="20px" />
                                </ItemTemplate>
                                <HeaderStyle Width="35px" />
                              </telerik:GridTemplateColumn>
                            </Columns>
                            <Columns>
                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="Pts - Player" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true" />
                                </telerik:GridBoundColumn>
                            </Columns>                        
                            <Columns>
                                <telerik:GridBoundColumn DataField="intStat" HeaderAbbr="" UniqueName="intStat" HeaderText="" 
                                    AllowFiltering="false" AllowSorting="false" Display="false" >
                                </telerik:GridBoundColumn>
                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid> 
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT CAST(intStat AS varchar(10)) + ' - ' + strPlayer + ' (' + strSchool + ') ' + CASE WHEN strOpponent IS NULL THEN '' ELSE ' ' + strOpponent + ' ' + strScore + ' ' + strWL END + CASE WHEN dtmDate Is Null THEN '' ELSE ' (' + CAST(dtmDate AS varchar(20)) + ')' END AS strDisplay, * FROM tblBasketballStatsGame WHERE strState = @state AND strSport = 'BasketballGirls' AND strType = 'SEASON' AND strCategory = 'POINTS' AND intStat >= 40 AND intYear = 2019 ORDER BY intStat DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>   

</asp:Content>



