<%@ Page Title="Oklahoma High School Football Playoffs" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootball.Master" CodeBehind="FBPlayoffs.aspx.vb" Inherits="TheSportsEngine2017.FBPlayoffs" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Text="OKLAHOMA HIGH SCHOOL FOOTBALL PLAYOFFS" Font-Bold="true"></asp:Label><br />
                        <asp:Label ID="lblOneColumnHeader0a" runat="server" Text="Click the Game below for your 'ONE STOP SHOP' for Football Playoff Info" Font-Bold="true"></asp:Label></h3>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h5><asp:Label ID="lblOneColumnHeader" runat="server" Text="OKLAHOMA HIGH SCHOOL FOOTBALL PLAYOFFS" Font-Bold="true"></asp:Label><br />
                        <asp:Label ID="lblOneColumnHeadera" runat="server" Text="Click the Game below for your 'ONE STOP SHOP' for Football Playoff Info" Font-Bold="true"></asp:Label></h5>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout21">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" SpanLg="12" SpanMd="12" SpanXl="12">
                        <asp:Table runat="server">
                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                                    <asp:HyperLink ID="hlTitleAd1" runat="server" ImageUrl="images/ads/LOCAdPage.gif" NavigateUrl="http://www.okalmanac.com" Visible="false" Target="_blank" Width="100%" ></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                                    <asp:Label runat="server" Text="PLAYOFF BRACKETS : " Font-size="18px"></asp:Label>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink0" Text="CLASS 6A-I" NavigateUrl="http://www.ossaa.net/docs/2017-18/Football/FB_2018-19_6A1PlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink1" Text="CLASS 6A-II" NavigateUrl="http://www.ossaa.net/docs/2017-18/Football/FB_2018-19_6A2PlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink2" Text="CLASS 5A" NavigateUrl="http://www.ossaa.net/docs/2017-18/Football/FB_2018-19_5APlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink3" Text="CLASS 4A" NavigateUrl="http://www.ossaa.net/docs/2017-18/Football/FB_2018-19_4APlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink4" Text="CLASS 3A" NavigateUrl="http://www.ossaa.net/docs/2017-18/Football/FB_2018-19_3APlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink5" Text="CLASS 2A" NavigateUrl="http://www.ossaa.net/docs/2017-18/Football/FB_2018-19_2APlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink6" Text="CLASS A" NavigateUrl="http://www.ossaa.net/docs/2017-18/Football/FB_2018-19_APlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink7" Text="CLASS B" NavigateUrl="http://www.ossaa.net/docs/2017-18/Football/FB_2018-19_BPlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>&nbsp;
                                    <asp:HyperLink runat="server" ID="HyperLink8" Text="CLASS C" NavigateUrl="http://www.ossaa.net/docs/2017-18/Football/FB_2018-19_CPlayoffBracket.pdf" Target="_blank" Font-Size="Medium" Font-Names="'Segoe UI', Arial, sans-serif"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow><asp:TableCell ColumnSpan="2">&nbsp;</asp:TableCell></asp:TableRow>
                            <asp:TableRow><asp:TableCell ColumnSpan="2"><h2>2018 PLAYOFFS WEEK 1</h2></asp:TableCell></asp:TableRow>
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
                                           <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strAdSchool"
                                                    DataTextField="strAdSchool"
                                                    DataNavigateUrlFields="strAdSchoolURL"
                                                    DataNavigateUrlFormatString="{0}"
                                                    HeaderText=""
                                                    ItemStyle-Font-Bold="true"
                                                    ItemStyle-ForeColor="Red"
                                                    Target="_blank"
                                                    ItemStyle-Width="30%"
                                                    HeaderStyle-Width="30%"
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
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strAdSchool"
                                                    DataTextField="strAdSchool"
                                                    DataNavigateUrlFields="strAdSchoolURL"
                                                    DataNavigateUrlFormatString="{0}"
                                                    HeaderText=""
                                                    ItemStyle-Font-Bold="true"
                                                    ItemStyle-ForeColor="Red"
                                                    Target="_blank"
                                                    ItemStyle-Width="30%"
                                                    HeaderStyle-Width="30%"
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
                                           <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strAdSchool"
                                                    DataTextField="strAdSchool"
                                                    DataNavigateUrlFields="strAdSchoolURL"
                                                    DataNavigateUrlFormatString="{0}"
                                                    HeaderText=""
                                                    ItemStyle-Font-Bold="true"
                                                    ItemStyle-ForeColor="Red"
                                                    Target="_blank"
                                                    ItemStyle-Width="30%"
                                                    HeaderStyle-Width="30%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                         </MasterTableView>
                                    </telerik:RadGrid>
                                </asp:TableCell>

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
                                           <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strAdSchool"
                                                    DataTextField="strAdSchool"
                                                    DataNavigateUrlFields="strAdSchoolURL"
                                                    DataNavigateUrlFormatString="{0}"
                                                    HeaderText=""
                                                    ItemStyle-Font-Bold="true"
                                                    ItemStyle-ForeColor="Red"
                                                    Target="_blank"
                                                    ItemStyle-Width="30%"
                                                    HeaderStyle-Width="30%"
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
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strAdSchool"
                                                    DataTextField="strAdSchool"
                                                    DataNavigateUrlFields="strAdSchoolURL"
                                                    DataNavigateUrlFormatString="{0}"
                                                    HeaderText=""
                                                    ItemStyle-Font-Bold="true"
                                                    ItemStyle-ForeColor="Red"
                                                    Target="_blank"
                                                    ItemStyle-Width="30%"
                                                    HeaderStyle-Width="30%"
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
                            <asp:TableRow Visible="false"><asp:TableCell ColumnSpan="2"><h2>2017 PLAYOFFS WEEK 4</h2></asp:TableCell></asp:TableRow>
                            <asp:TableRow Visible="false">
                                <asp:TableCell VerticalAlign="Top">
                                    <telerik:RadGrid ID="RadGrid6AI1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource6AI"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource6AI1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}&w=4"
                                                    HeaderText="Class 6A-I Playoffs"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <telerik:RadGrid ID="RadGrid5A1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource5A"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource5A1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}&w=4"
                                                    HeaderText="Class 5A Playoffs"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <telerik:RadGrid ID="RadGrid3A1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3A"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource3A1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}&w=4"
                                                    HeaderText="Class 3A Playoffs"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <telerik:RadGrid ID="RadGridA1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceA"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSourceA1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}&w=4"
                                                    HeaderText="Class A Playoffs"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <telerik:RadGrid ID="RadGridC1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceC"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSourceC1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}&w=4"
                                                    HeaderText="Class C Playoffs"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                </asp:TableCell>

                                <asp:TableCell VerticalAlign="Top">
                                    <telerik:RadGrid ID="RadGrid6AII2" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource6AII"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource6AII1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}&w=4"
                                                    HeaderText="Class 6A-II Playoffs"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <telerik:RadGrid ID="RadGrid4A1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4A"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource4A1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}&w=4"
                                                    HeaderText="Class 4A Playoffs"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <telerik:RadGrid ID="RadGrid2A1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2A"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource2A1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}&w=4"
                                                    HeaderText="Class 2A Playoffs"
                                                    ItemStyle-Width="70%"
                                                    HeaderStyle-Width="70%"
                                                    meta:resourcekey="CustomerEditColumn">
                                                </telerik:GridHyperlinkColumn>                            
                                            </Columns>
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                    <telerik:RadGrid ID="RadGridB1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceB"
                                         AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSourceB1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="TBD">
                                            <Columns>
                                                <telerik:GridHyperlinkColumn
                                                    UniqueName="strDisplayCaps"
                                                    DataTextField="strDisplayCaps"
                                                    DataNavigateUrlFields="strSchool"
                                                    DataNavigateUrlFormatString="~/FBPlayoffMatchup.aspx?id={0}&w=4"
                                                    HeaderText="Class B Playoffs"
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
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <h2>WHAT'S NEW</h2>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <h2>PLAYOFF CENTRAL</h2>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="OKLAHOMANS IN WORLD SERIES" NavigateUrl="docs/ok/OKHSWorldSeries.pdf" CssClass="button green" Target="_blank" ForeColor="Yellow"></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="FOOTBALL TEAM PLAYOFF PAGES" NavigateUrl="PlayoffGames.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="CURRENT STATE CHAMPIONSHIP 3-PEATS" NavigateUrl="StateThreeP.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="ALL-TIME PLAYOFF RECORDS" NavigateUrl="FBPlayoffTotals.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="2017-18 ACADEMIC TITLE COUNT" NavigateUrl="TitleCountAcademic201718.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>ALL-TIME" NavigateUrl="FBPlayoffStreaks.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="2017-18 STATE TITLE COUNT" NavigateUrl="TitleCount201718.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>CURRENT" NavigateUrl="FBPlayoffStreaksC.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="LIST OF CHAMPIONS ALMANAC" NavigateUrl="http://www.okalmanac.com" Target="_blank" CssClass="button green"></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>BY SCHOOL" NavigateUrl="FBPlayoffStreaksS.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="2017 UNDEFEATED FOOTBALL TEAMS (FINAL)" NavigateUrl="FBUndefeated.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="PLAYOFF YEARS w/o CHAMPIONSHIP" NavigateUrl="FBNoChampionship.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="2017 TEAM SCORING (FINAL)" NavigateUrl="FBOD.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="COACHING STATE CHAMPIONSHIPS" NavigateUrl="http://www.iwasatthegame.com/docs/OK/2016OKCoachesStateChampionships.pdf" CssClass="button orange" Target="_blank"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="ALL-TIME UNDEFEATED FOOTBALL TEAMS" NavigateUrl="FBUndefeatedAT.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                                <asp:TableCell HorizontalAlign="Center">
                                    <asp:HyperLink runat="server" Text="FOOTBALL TEAM PAGES" NavigateUrl="FBTeamPage.aspx" CssClass="button orange"></asp:HyperLink>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
        </telerik:LayoutColumn>
        </Columns>
        </telerik:LayoutRow>
            </Rows>
        </telerik:RadPageLayout>         
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource6AI" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'F') AND intShow = 1)) AND strClass = '6A-I' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource6AII" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'F') AND intShow = 1)) AND strClass = '6A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>    

        <asp:SqlDataSource ID="SqlDataSource5A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = '5A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSource4A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = '4A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSource3A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = '3A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSource2A" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = '2A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSourceA" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = 'A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSourceB" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = 'B' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

    <asp:SqlDataSource ID="SqlDataSourceC" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsCurrentWeek WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = 'C' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  


    <asp:SqlDataSource ID="SqlDataSource6AI1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek4 WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = '6A-I' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource6AII1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek4 WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = '6A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>    

        <asp:SqlDataSource ID="SqlDataSource5A1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek4 WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = '5A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSource4A1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek4 WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = '4A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSource3A1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek4 WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = '3A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSource2A1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek4 WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = '2A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSourceA1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek4 WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = 'A' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

        <asp:SqlDataSource ID="SqlDataSourceB1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek4 WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = 'B' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  

    <asp:SqlDataSource ID="SqlDataSourceC1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strDisplay, strSchoolName AS strSchool, strDisplayCaps, strAdSchool, strAdSchoolURL FROM viewFootballScoresPlayoffsWeek4 WHERE ((strAt = 'Away' OR strAt = 'A') OR ((strLevel = 'SF' OR strLevel = 'F') AND intShow = 1)) AND strClass = 'C' ORDER BY intGame, strSchool">
    </asp:SqlDataSource>  


</asp:Content>



