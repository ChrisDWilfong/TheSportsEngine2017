<%@ Page Title="Oklahoma High School Football State Champions" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootballNOAJAX.Master" CodeBehind="FBStateChampionships.aspx.vb" Inherits="TheSportsEngine2017.FBStateChampionships" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Football State Champions" />
    <meta name="twitter:description" content="ALL-TIME High School Football State Champions (since 1907)" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/IWATG_Logo_Football.png" />
    <script type="text/javascript">
        (function (global, undefined) {

            function openRadWinEditNote(sender) {
                var id;
                // Send the client ID also...
                id = sender._clientStateFieldID;
                id = id.replace("_ClientState", "");
                radopen("PhotoGallery.aspx?id=" + sender._commandArgument, "RadWindow5", 960, 760, 10, 10);
            }
            global.openRadWinEditNote = openRadWinEditNote;

            function openRadWinTopic(sender) {
                var id;
                // Send the client ID also...
                id = sender._clientStateFieldID;
                id = id.replace("_ClientState", "");
                radopen("http://www.statetitletalk.com/topics.aspx?ForumID=" + sender._commandArgument, "RadWindowBK", 1100, 760, 10, 10);
            }
            global.openRadWinTopic = openRadWinTopic;

        })(window);
        function OnClientClose(oWnd, args) {
            //get the transferred arguments
            var arg = args.get_argument();
        }
    </script>

        <script>
            fbq('track', 'ViewContent', {
            value: 1001,
            });
        </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="RadAjaxPanel12" runat="server" CssClass="grid_wrapper">
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
    </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="1" SpanXl="1" SpanLg="1" SpanMd="12" SpanSm="12" SpanXs="12">
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="6" SpanXl="6" SpanLg="6" SpanMd="12" SpanSm="12" SpanXs="12">
                        <asp:Panel ID="RadAjaxPanel100" runat="server" CssClass="grid_wrapper">
                            <asp:Table runat="server" ID="tblFBStateChampionships" HorizontalAlign="center">
                                <asp:TableRow HorizontalAlign="Center">
                                    <asp:TableCell HorizontalAlign="Center">
                                        <asp:DropDownList ID="RadDropDownListYear" runat="server" DataSourceID="SqlDataSource2" DataTextField="strYear" DataValueField="intYear" AutoPostBack="True" DefaultMessage="Select Year..."
                                            Width="125px" BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow ID="rowClickArrow">
                                    <asp:TableCell>
                                        <asp:Label runat="server" ID="lblArrow" Text="Click the Arrow for Championship Articles" Font-Size="Medium" Visible="false"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <telerik:RadAjaxLoadingPanel runat="server" ID="gridLoadingPanel"></telerik:RadAjaxLoadingPanel>
                                        <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" 
                                            DataSourceID="SqlDataSource1" AllowPaging="false" >
                                            <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" DataKeyNames="Id" NoMasterRecordsText="Make selection above...">
                                                <DetailTables>
                                                    <telerik:GridTableView DataKeyNames="id" DataSourceID="SQLDataSourceDetail" runat="server" AllowFilteringByColumn="false" AllowSorting="false">
                                                        <ItemStyle BackColor="LightYellow"  />
                                                        <AlternatingItemStyle BackColor="Yellow" />
                                                        <ParentTableRelation>
                                                            <telerik:GridRelationFields DetailKeyField="idStateChampion" MasterKeyField="Id"  />
                                                        </ParentTableRelation>
                                                        <Columns>
                                                            <telerik:GridHyperLinkColumn DataTextField="strTitle" DataNavigateUrlFields="strURL" Target="_blank" HeaderText="CHAMPIONSHIP ARTICLES">
                                                                <HeaderStyle ForeColor="Yellow" Font-Bold="true" />
                                                            </telerik:GridHyperLinkColumn>
                                                        </Columns>
                                                    </telerik:GridTableView>
                                                </DetailTables>
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strDisplayResultsClass" HeaderAbbr="Team" UniqueName="strDisplayResultsClass" HeaderText="STATE CHAMPIONS" 
                                                        AllowFiltering="false" AllowSorting="false" >
                                                        <HeaderStyle Font-Bold="true" Width="80%" />
                                                        <ItemStyle Font-Bold="true" Width="80%" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridButtonColumn CommandName="Facebook" Text="STATE TITLE TALK" ButtonType="ImageButton" Visible="false" >
                                                        <ItemStyle Font-Bold="true" />
                                                    </telerik:GridButtonColumn>
                                                    <telerik:GridBoundColumn DataField="idStateChampion" DataType="System.Int16" Visible="false"></telerik:GridBoundColumn>
                                                </Columns>                        
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>  
                        </asp:Panel>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="5" SpanXl="5" SpanLg="5" SpanMd="12" SpanSm="12" SpanXs="12">
                    <h4><%= Session("idFacebookTitle") %></h4>
                    <div class="fb-comments" data-href="http://www.iwasatthegame.com/BKBStateChampionships.aspx?id=" & <%= Session("idFacebook") %> data-width="500" data-numposts="20"></div>
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_Football_StateChampionsALL WHERE strState = @state AND intYear = @selectedYear ORDER BY intSortClass">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selectedYear" ControlID="RadDropDownListYear" DefaultValue="1900" />
        </SelectParameters>    
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT intYear, CAST(intYear AS varchar) AS strYear FROM IWATGview_Football_StateChampionsALL WHERE strState = @state ORDER BY intYear DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSourceDetail" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM viewStateChampionshipArticles WHERE idStateChampion = @idStateChampion AND strState = @state ORDER BY intYear DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:Parameter Name="idStateChampion" Type="Int16" />
        </SelectParameters>    
    </asp:SqlDataSource>
 
</asp:Content>



