<%@ Page Title="Oklahoma High School State Champions 2018-19" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageChampionsGOLD.Master" CodeBehind="ChampionsGold.aspx.vb" Inherits="TheSportsEngine2017.ChampionsGold" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Most 2018-19 OKLAHOMA HIGH SCHOOL STATE CHAMPIONSHIPS" />
    <meta name="twitter:description" content="What school brought home the most GOLD in 2018-19 Oklahoma High School Sports?" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/Top8Gold.PNG" /> 
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.3&appId=2049549131962643&autoLogAppEvents=1"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout21">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="8" SpanXl="8" SpanLg="8" SpanMd="12" SpanSm="12" SpanXs="12">
                        <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper">
                                <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="false" >
                                    <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                        <Columns>
                                            <telerik:GridTemplateColumn UniqueName="TemplateColumn" HeaderText="#">
                                                <ItemStyle HorizontalAlign="Center" Width="35px" />
                                                    <HeaderStyle Font-Bold="true" HorizontalAlign="Center" Width="35px" />
                                                        <ItemTemplate>
                                                            <asp:Label ID="numberLabel" runat="server" Width="20px" />
                                                        </ItemTemplate>
                                                <HeaderStyle Width="35px" />
                                            </telerik:GridTemplateColumn>
                                        </Columns>
                                        <Columns>
                                            <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="CHAMPIONSHIPS : SCHOOL" 
                                                        AllowFiltering="false" AllowSorting="false" >
                                                <HeaderStyle Font-Bold="true" />
                                            </telerik:GridBoundColumn>
                                        </Columns>                        
                                        <Columns>
                                        <telerik:GridBoundColumn DataField="intCount" HeaderAbbr="" UniqueName="intCount" HeaderText="" 
                                                AllowFiltering="false" AllowSorting="false" Display="false" >
                                        </telerik:GridBoundColumn>
                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid> 
                            <br />
                        </telerik:RadAjaxPanel>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="4" SpanXl="4" SpanLg="4" SpanMd="12" SpanSm="12" SpanXs="12" >
                        <div style="text-align:center;vertical-align:top;">
                            <asp:Label runat="server" ID="lblComments" Text="ADD YOUR COMMENTS" Font-Size="X-Large"></asp:Label>
                            <div class="fb-comments" data-href="http://www.iwasatthegame.com/ChampionsGold.aspx" data-width="325" data-numposts="25"></div>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT intCount, CAST(intCount AS varchar(10)) + ' : ' + UPPER(strTeam) AS strDisplay FROM viewTop8GOLD ORDER BY intCount DESC, strTeam">
    </asp:SqlDataSource>  
</asp:Content>



