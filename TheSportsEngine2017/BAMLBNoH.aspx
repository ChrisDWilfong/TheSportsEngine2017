<%@ Page Title="Oklahomans in the Major Leagues" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageBaseballNoMenuNoHeader.Master" CodeBehind="BAMLBNoH.aspx.vb" Inherits="TheSportsEngine2017.BAMLBNoH" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2"  runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text="OKLAHOMA HIGH SCHOOL PLAYERS IN THE MAJOR LEAGUES"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text="(as of April 11, 2017)"></asp:Label></h3>
                        <h5><asp:Label ID="Label1" runat="server" Text="Sponsored By : Oklahoma High School Sports Historical Society (www.okalmanac.com)"></asp:Label></h5>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text="OKLAHOMA HIGH SCHOOL PLAYERS IN THE MAJOR LEAGUES"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text="(as of April 11, 2017)"></asp:Label></h3>
                        <h5><asp:Label ID="Label2" runat="server" Text="Sponsored By : Oklahoma High School Sports Historical Society (www.okalmanac.com)"></asp:Label></h5>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1"  runat="server" CssClass="grid_wrapper">
        <telerik:RadGrid ID="RadGrid1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
            AllowPaging="false" ShowFooter="true" OnCustomAggregate="RadGrid1_CustomAggregate" >
            <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                <Columns>
                    <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="HITTING PLAYER" FooterText="TOTALS" AllowFiltering="false" AllowSorting="false" >
                        <HeaderStyle Width="42%" Font-Bold="true" />
                        <ItemStyle Width="42%" HorizontalAlign="Left" />
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" />
                    </telerik:GridBoundColumn>
                </Columns>

                <Columns>
                    <telerik:GridBoundColumn DataField="AB" HeaderAbbr="AB" UniqueName="AB" HeaderText="AB" AllowFiltering="false" AllowSorting="false" Aggregate="Sum" FooterAggregateFormatString="{0:d}">
                        <HeaderStyle Font-Bold="true" HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                </Columns>
                <Columns>
                    <telerik:GridBoundColumn DataField="H" HeaderAbbr="H" UniqueName="H" HeaderText="H" AllowFiltering="false" AllowSorting="false" Aggregate="Sum" FooterAggregateFormatString="{0:d}" >
                        <HeaderStyle Font-Bold="true" HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                </Columns>
                <Columns>
                    <telerik:GridBoundColumn DataField="R" HeaderAbbr="R" UniqueName="R" HeaderText="R" AllowFiltering="false" AllowSorting="false" Aggregate="Sum" FooterAggregateFormatString="{0:d}" >
                        <HeaderStyle Font-Bold="true" HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                </Columns>
                <Columns>
                    <telerik:GridBoundColumn DataField="HR" HeaderAbbr="HR" UniqueName="HR" HeaderText="HR" AllowFiltering="false" AllowSorting="false" Aggregate="Sum" FooterAggregateFormatString="{0:d}" >
                        <HeaderStyle Font-Bold="true" HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                </Columns>
                <Columns>
                    <telerik:GridBoundColumn DataField="RBI" HeaderAbbr="RBI" UniqueName="RBI" HeaderText="RBI" AllowFiltering="false" AllowSorting="false" Aggregate="Sum" FooterAggregateFormatString="{0:d}" >
                        <HeaderStyle Font-Bold="true" HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                </Columns>
                <Columns>
                    <telerik:GridBoundColumn DataField="AVG" HeaderAbbr="AVG" UniqueName="AVG" HeaderText="AVG" AllowFiltering="false" AllowSorting="false" Aggregate="Custom" FooterAggregateFormatString="{0:.000}" >
                        <HeaderStyle Font-Bold="true" HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                </Columns>
            </MasterTableView>
        </telerik:RadGrid> 
    </telerik:RadAjaxPanel>

    <telerik:RadAjaxPanel ID="RadAjaxPanel3"  runat="server" CssClass="grid_wrapper">
        <hr />
        <telerik:RadGrid ID="RadGrid2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" 
            AllowPaging="false" ShowFooter="true" OnCustomAggregate="RadGrid2_CustomAggregate" >
            <MasterTableView DataSourceID="SqlDataSource2" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                <Columns>
                    <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Player" UniqueName="strDisplay" HeaderText="PITCHING PLAYER" FooterText="TOTALS" AllowFiltering="false" AllowSorting="false" Aggregate="Custom" >
                        <HeaderStyle Width="42%" Font-Bold="true"/>
                        <ItemStyle Width="42%" HorizontalAlign="Left" />
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" />
                    </telerik:GridBoundColumn>
                </Columns>
                <Columns>
                    <telerik:GridBoundColumn DataField="IPF" HeaderAbbr="IP" UniqueName="IP" HeaderText="IP" AllowFiltering="false" AllowSorting="false" Aggregate="Sum" FooterAggregateFormatString="{0:0.0}">
                        <HeaderStyle Font-Bold="true" HorizontalAlign="Center" Width="9%"/>
                        <ItemStyle HorizontalAlign="Right" Width="9%" />
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                </Columns>
                <Columns>
                    <telerik:GridBoundColumn DataField="W" Visible="false" HeaderAbbr="W" UniqueName="W" HeaderText="W" AllowFiltering="false" AllowSorting="false" Aggregate="Sum" FooterAggregateFormatString="{0:d}" >
                        <HeaderStyle Font-Bold="true"/>
                        <ItemStyle HorizontalAlign="Right"/>
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                </Columns>
                <Columns>
                    <telerik:GridBoundColumn DataField="L" Visible="false" HeaderAbbr="L" UniqueName="L" HeaderText="L" AllowFiltering="false" AllowSorting="false" Aggregate="Sum" FooterAggregateFormatString="{0:d}" >
                        <HeaderStyle Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Right" />
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                </Columns>
                <Columns>
                    <telerik:GridBoundColumn DataField="HA" HeaderAbbr="HA" UniqueName="HA" HeaderText="H" AllowFiltering="false" AllowSorting="false" Aggregate="Sum" FooterAggregateFormatString="{0:d}" >
                        <HeaderStyle Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Right"/>
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                </Columns>
                <Columns>
                    <telerik:GridBoundColumn DataField="BB" HeaderAbbr="BB" UniqueName="BB" HeaderText="BB" AllowFiltering="false" AllowSorting="false" Aggregate="Sum" FooterAggregateFormatString="{0:d}" >
                        <HeaderStyle Font-Bold="true" />
                        <ItemStyle HorizontalAlign="Right" />
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                </Columns>
                <Columns>
                    <telerik:GridBoundColumn DataField="ER" HeaderAbbr="ER" UniqueName="ER" HeaderText="ER" AllowFiltering="false" AllowSorting="false" Aggregate="Sum" FooterAggregateFormatString="{0:d}" >
                        <HeaderStyle Font-Bold="true" HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Right" />
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                </Columns>
                <Columns>
                    <telerik:GridBoundColumn DataField="K" HeaderAbbr="K" UniqueName="K" HeaderText="K" AllowFiltering="false" AllowSorting="false" Aggregate="Sum" FooterAggregateFormatString="{0:d}" >
                        <HeaderStyle Font-Bold="true" HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Right" />
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" HorizontalAlign="Right" />
                    </telerik:GridBoundColumn>
                </Columns>
                <Columns>
                    <telerik:GridBoundColumn DataField="ERA" HeaderAbbr="ERA" UniqueName="ERA" HeaderText="ERA" AllowFiltering="false" AllowSorting="false" Aggregate="Custom" >
                        <HeaderStyle Font-Bold="true" Width="9%" />
                        <ItemStyle HorizontalAlign="Right" Width="9%"/>
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" HorizontalAlign="Left" />
                    </telerik:GridBoundColumn>
                </Columns>
                <Columns>
                    <telerik:GridBoundColumn DataField="WHIP" HeaderAbbr="WHIP" UniqueName="WHIP" HeaderText="WHIP" HeaderTooltip="WHIP = H + BB / IP" AllowFiltering="false" AllowSorting="false" Aggregate="Custom" FooterAggregateFormatString="{0:0.00}" >
                        <HeaderStyle Font-Bold="true" HorizontalAlign="Left" Width="10%" />
                        <ItemStyle HorizontalAlign="Right" Width="10%" />
                        <FooterStyle ForeColor="Yellow" Font-Bold="true" />
                    </telerik:GridBoundColumn>
                </Columns>
            </MasterTableView>
        </telerik:RadGrid> 
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT CAST(IP AS decimal(18,1)) AS IPF, *, '<strong>' + strPlayer + '</strong> (' + strTeam + ')<br>' + strHighSchool  + ' ' + CAST(intGradYear AS varchar) + ' ' + CASE WHEN NOT strTwitter Is Null THEN '<a href=http://www.twitter.com/' + strTwitter + '  target=_blank>@' + strTwitter + '</a>'  ELSE '' END + CASE WHEN NOT strLatest Is Null THEN '<br><i><span style=color:red;>Latest : ' + strLatest + '</span></i>' ELSE '' END AS strDisplay FROM tblBaseballHSMLB WHERE strType = 'Batter' AND strState = @state ORDER BY Avg DESC, strLastName, strFirstName">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="MLBState" DefaultValue="OK" />
        </SelectParameters>
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT CAST(IP AS decimal(18,1)) AS IPF, *, '<strong>' + strPlayer  + '</strong> (' + strTeam + ')' + ' <strong>(' + CAST(W AS varchar) + '-' + CAST(L AS varchar) + ')</strong><br>' + strHighSchool  + ' ' + CAST(intGradYear AS varchar) + ' ' + CASE WHEN NOT strTwitter Is Null THEN '<a href=http://www.twitter.com/' + strTwitter + ' target=_blank>@' + strTwitter + '</a>'  ELSE '' END + CASE WHEN NOT strLatest Is Null THEN '<br><i><span style=color:red;>Latest : ' + strLatest + '</span></i>' ELSE '' END AS strDisplay FROM tblBaseballHSMLB WHERE strType = 'Pitcher' AND strState = @state ORDER BY ERA, strLastName, strFirstName">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="MLBState" DefaultValue="OK" />
        </SelectParameters>
    </asp:SqlDataSource>  
</asp:Content>



