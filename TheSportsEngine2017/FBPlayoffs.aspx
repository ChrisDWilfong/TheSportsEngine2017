
    <%@ Page Title="Oklahoma High School Football Playoffs" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootball.Master" CodeBehind="FBPlayoffs.aspx.vb" Inherits="TheSportsEngine2017.FBPlayoffs" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Lalezar' rel='stylesheet' type='text/css' />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Football Playoffs" />
    <meta name="twitter:description" content="2019 Oklahoma High School Playoff Central Matchups" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/PlayoffCentralFB_DP1.png" />   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXl="12" SpanLg="12" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <asp:Table runat="server">
                            <asp:TableRow Visible="false">
                                <asp:TableCell>
                                    <asp:HyperLink runat="server" ID="HyperLink18" NavigateUrl="~/Polls/AllDecade.aspx" Target="_blank"><asp:Image runat="server" ImageUrl="~/images/OK/IWATG_AllDecade.png" Width="100%" /></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Image runat="server" ImageUrl="~/images/OK/IWATG_PlayoffCentralFB_DP.png" Width="100%" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                                    <asp:Label runat="server" Text="PLAYOFF BRACKETS:" Font-size="18px"></asp:Label>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink0" Text="CLASS 6A-I" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_6AIPlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink1" Text="CLASS 6A-II" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_6AIIPlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink2" Text="CLASS 5A" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_5APlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink3" Text="CLASS 4A" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_4APlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink4" Text="CLASS 3A" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_3APlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink5" Text="CLASS 2A" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_2APlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;<br />
                                    <asp:HyperLink runat="server" ID="HyperLink6" Text="CLASS A" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_APlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink7" Text="CLASS B" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_BPlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink8" Text="CLASS C" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_CPlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow><asp:TableCell ColumnSpan="2">&nbsp;</asp:TableCell></asp:TableRow>
                            <asp:TableRow><asp:TableCell ColumnSpan="2"><h2>2019 PLAYOFFS WEEK 5</h2></asp:TableCell></asp:TableRow>
                        </asp:Table>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" HiddenXl="true" HiddenLg="true" SpanMd="12" SpanSm="12" SpanXs="12">
                        <asp:Table runat="server">
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:HyperLink runat="server" ID="hlAllDecade" NavigateUrl="~/Polls/AllDecade.aspx" Target="_blank"><asp:Image runat="server" ImageUrl="~/images/OK/IWATG_AllDecade.png" Width="100%" /></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:Image runat="server" ImageUrl="~/images/OK/IWATG_PlayoffCentralFB_DP.png" Width="100%" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                                    <asp:Label runat="server" Text="PLAYOFF BRACKETS:" Font-size="12px"></asp:Label>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink9" Text="CLASS 6A-I" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_6AIPlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Small" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink10" Text="CLASS 6A-II" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_6AIIPlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Small" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink11" Text="CLASS 5A" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_5APlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Small" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink12" Text="CLASS 4A" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_4APlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Small" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink13" Text="CLASS 3A" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_3APlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Small" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink14" Text="CLASS 2A" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_2APlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Small" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink15" Text="CLASS A" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_APlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Small" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink16" Text="CLASS B" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_BPlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Small" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink17" Text="CLASS C" NavigateUrl="http://www.ossaa.net/docs/2019-20/Football/FB_2019-20_CPlayoffBracket.pdf?id=1234" Target="_blank" Font-Size="Small" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow><asp:TableCell ColumnSpan="2">&nbsp;</asp:TableCell></asp:TableRow>
                            <asp:TableRow><asp:TableCell ColumnSpan="2"><h2>2019 PLAYOFFS WEEK 5</h2></asp:TableCell></asp:TableRow>
                        </asp:Table>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout21">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="1" SpanXl="1" SpanLg="1" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    &nbsp;
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="5" SpanXl="5" SpanLg="5" HiddenMd="true" HiddenSm="true" HiddenXs="true" >
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:Table runat="server">
                                        <asp:TableRow Visible="true">
                                            <asp:TableCell VerticalAlign="Top">
                                                <telerik:RadGrid ID="RadGrid6AI" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource6AI"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSource6AI" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class 6A-I STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                     </MasterTableView>
                                                </telerik:RadGrid>
                                                <telerik:RadGrid ID="RadGrid5A" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource5A"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSource5A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class 5A STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                                <telerik:RadGrid ID="RadGrid3A" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3A"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSource3A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class 3A STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                                <telerik:RadGrid ID="RadGridA" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceA"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSourceA" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class A STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                                <telerik:RadGrid ID="RadGridC" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceC"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSourceC" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class C STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                     </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>

                    <telerik:CompositeLayoutColumn Span="5" SpanXl="5" SpanLg="5" HiddenMd="true" HiddenSm="true" HiddenXs="true" >
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:Table runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell VerticalAlign="Top">
                                                <telerik:RadGrid ID="RadGrid6AII" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource6AII"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSource6AII" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class 6A-II STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                     </MasterTableView>
                                                </telerik:RadGrid>
                                                <telerik:RadGrid ID="RadGrid4A" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4A"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSource4A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class 4A STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                                <telerik:RadGrid ID="RadGrid2A" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2A"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSource2A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class 2A STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                                <telerik:RadGrid ID="RadGridB" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceB"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSourceB" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class B STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow><asp:TableCell ColumnSpan="2">&nbsp;</asp:TableCell></asp:TableRow>
                                        <asp:TableRow><asp:TableCell ColumnSpan="2">&nbsp;</asp:TableCell></asp:TableRow>
                                    </asp:Table>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="1" SpanXl="1" SpanLg="1" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    &nbsp;
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="12" HiddenXL="true" HiddenLg="true" SpanMd="12" SpanSm="12" SpanXs="12" >
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:Table runat="server">
                                        <asp:TableRow Visible="true">
                                            <asp:TableCell VerticalAlign="Top">
                                                <telerik:RadGrid ID="RadGrid6AIm" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource6AI"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSource6AI" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class 6A-I STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                     </MasterTableView>
                                                </telerik:RadGrid>                                                
						                        <telerik:RadGrid ID="RadGrid6AIIm" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource6AII"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSource6AII" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class 6A-II STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                     </MasterTableView>
                                                </telerik:RadGrid>
                                                <telerik:RadGrid ID="RadGrid5Am" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource5A"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSource5A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class 5A STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                                <telerik:RadGrid ID="RadGrid4Am" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4A"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSource4A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class 4A STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                                <telerik:RadGrid ID="RadGrid3Am" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3A"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSource3A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class 3A STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="12" HiddenXl="true" HiddenLg="true" SpanMd="12" SpanSm="12" SpanXs="12" >
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:Table runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell VerticalAlign="Top">
                                                <telerik:RadGrid ID="RadGrid2Am" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2A"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSource2A" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class 2A STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                                <telerik:RadGrid ID="RadGridAm" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceA"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSourceA" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class A STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                                <telerik:RadGrid ID="RadGridBm" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceB"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSourceB" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class B STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                                <telerik:RadGrid ID="RadGridCm" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceC"
                                                     AllowPaging="false" >
                                                    <MasterTableView DataSourceID="SqlDataSourceC" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                                        <Columns>
                                                            <telerik:GridHyperlinkColumn
                                                                UniqueName="strDisplayCaps"
                                                                DataTextField="strDisplayCaps"
                                                                DataNavigateUrlFields="strSchool"
                                                                DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}"
                                                                HeaderText="Class C STATE CHAMPIONSHIP"
                                                                ItemStyle-Width="70%"
                                                                HeaderStyle-Width="70%"
                                                                meta:resourcekey="CustomerEditColumn">
                                                            </telerik:GridHyperlinkColumn>                            
                                                        </Columns>
                                                     </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow><asp:TableCell ColumnSpan="2">&nbsp;</asp:TableCell></asp:TableRow>
                                        <asp:TableRow><asp:TableCell ColumnSpan="2">&nbsp;</asp:TableCell></asp:TableRow>
                                    </asp:Table>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="1" SpanXl="1" SpanLg="1" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    &nbsp;
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="5" SpanXl="5" SpanLg="5" SpanMd="12" SpanSm="12" SpanXs="12">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <div style="text-align:center;">
                                    <asp:HyperLink runat="server" NavigateUrl="Schools.aspx" CssClass="button orange" Target="_self" Visible="true">ALL SCHOOLS PAGE</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="RPIFootball.aspx" CssClass="button orange" Target="_self" Visible="true">FOOTBALL FINAL RPI</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="FBOD.aspx" CssClass="button orange" Target="_self" Visible="True">FOOTBALL OFFENSE/DEFENSE<br />(FINAL REG SEASON)</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="FBPlayoffs1st.aspx" CssClass="button orange" Target="_self" Visible="true">ALL-TIME 1st ROUND<br />FOOTBALL PLAYOFF RECORDS</asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="PLAYOFF YEARS w/o CHAMPIONSHIP" NavigateUrl="FBNoChampionship.aspx" CssClass="button orange"></asp:HyperLink>
                                    
                                    <asp:HyperLink runat="server" Text="FOOTBALL TEAM PLAYOFF PAGES" NavigateUrl="PlayoffGames.aspx" Visible="false" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="FBCoachingRecords.aspx" CssClass="button orange" Target="_self">ALL-TIME FOOTBALL<br />COACHING WINS</asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="ALL-TIME PLAYOFF RECORDS" NavigateUrl="FBPlayoffTotals.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>ALL-TIME" NavigateUrl="FBPlayoffStreaks.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>CURRENT" NavigateUrl="FBPlayoffStreaksC.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>BY SCHOOL" NavigateUrl="FBPlayoffStreaksS.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="ALL-TIME UNDEFEATED FOOTBALL TEAMS" NavigateUrl="FBUndefeatedAT.aspx" CssClass="button orange"></asp:HyperLink>
                                    </div>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="5" SpanXl="5" SpanLg="5" SpanMd="12" SpanSm="12" SpanXs="12">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <div style="text-align:center;">
                                    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                    <!-- Right Ad -->
                                    <ins class="adsbygoogle"
                                         style="display:inline-block;width:336px;height:280px"
                                         data-ad-client="ca-pub-6403098483302166"
                                         data-ad-slot="2649207139"></ins>
                                    <script>
                                        (adsbygoogle = window.adsbygoogle || []).push({});
                                    </script>
                                    </div>
                                </Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>
                                    <div style="text-align:center;">
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
                                    </div>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="1" SpanXl="1" SpanLg="1" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    &nbsp;
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                </Columns>
                </telerik:LayoutRow>
            </Rows>
      
        </telerik:RadPageLayout>         

    <asp:SqlDataSource ID="SqlDataSource6AI" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek5 WHERE (strLevel = 'F') AND (intShow = 1) AND (strDistrict = '6A-1' OR strDistrict = '6A-2') ORDER BY intGame, strSchool">
    </asp:SqlDataSource>    
    <asp:SqlDataSource ID="SqlDataSource6AII" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek5 WHERE (strLevel = 'F') AND (intShow = 1) AND (strDistrict = '6A-3' OR strDistrict = '6A-4') ORDER BY intGame, strSchool">
    </asp:SqlDataSource>    
    <asp:SqlDataSource ID="SqlDataSource5A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek5 WHERE (strLevel = 'F') AND (intShow = 1) AND strClass = '5A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSource4A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek5 WHERE (strLevel = 'F') AND (intShow = 1) AND strClass = '4A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSource3A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek5 WHERE (strLevel = 'F') AND (intShow = 1) AND strClass = '3A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSource2A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek5 WHERE (strLevel = 'F') AND (intShow = 1) AND strClass = '2A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSourceA" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek5 WHERE (strLevel = 'F') AND (intShow = 1) AND strClass = 'A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSourceB" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek5 WHERE (strLevel = 'F') AND (intShow = 1) AND strClass = 'B' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSourceC" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek5 WHERE (strLevel = 'F') AND (intShow = 1) AND strClass = 'C' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  
</asp:Content>
