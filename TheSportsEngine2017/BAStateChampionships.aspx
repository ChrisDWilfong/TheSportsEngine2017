<%@ Page Title="Oklahoma High School Baseball State Champions" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageBaseballPhotoNOAJAX.Master" CodeBehind="BAStateChampionships.aspx.vb" Inherits="TheSportsEngine2017.BAStateChampionships" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Baseball State Champions" />
    <meta name="twitter:description" content="ALL-TIME High School Baseball State Champions (since 1947)" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/IWATG_Logo_Baseball_300x400.png" />
    <script type="text/javascript">
        (function (global, undefined) {

            function openRadWinEditNote(sender) {
                var id;
                // Send the client ID also...
                id = sender._clientStateFieldID;
                id = id.replace("_ClientState", "");
                radopen("PhotoGallery.aspx?id=" + sender._commandArgument, "RadWindowBK", 960, 760, 10, 10);
            }
            global.openRadWinEditNote = openRadWinEditNote;

            function openRadWinTopic(sender) {
                var id;
                // Send the client ID also...
                id = sender._clientStateFieldID;
                id = id.replace("_ClientState", "");
                radopen("http://www.statetitletalk.com/topics.aspx?ForumID=" + sender._commandArgument, "RadWindowBK", 1100, 760, 50, 10);
            }
            global.openRadWinTopic = openRadWinTopic;

        })(window);
        function OnClientClose(oWnd, args) {
            //get the transferred arguments
            var arg = args.get_argument();
        }
    </script>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.3&appId=2049549131962643&autoLogAppEvents=1"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="RadAjaxPanel200" runat="server" CssClass="grid_wrapper">
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
                    <telerik:LayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="12" SpanSm="12" SpanXs="12">
                        &nbsp;
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="6" SpanXl="6" SpanLg="6" SpanMd="12" SpanSm="12" SpanXs="12">
                        <asp:Panel ID="RadAjaxPanel100" runat="server" CssClass="grid_wrapper">
        <asp:Table runat="server" ID="tblBAStateChampionships">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="RadDropDownListYear" runat="server" DataSourceID="SqlDataSource2" DataTextField="strYear" DataValueField="intYear" AutoPostBack="True" DefaultMessage="Select Year..."
                        Width="125px" BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
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
                                        <telerik:GridRelationFields DetailKeyField="idStateChampion" MasterKeyField="Id" />
                                    </ParentTableRelation>
                                    <Columns>
                                        <telerik:GridHyperLinkColumn DataTextField="strTitle" DataNavigateUrlFields="strURL" Target="_blank" HeaderText="CHAMPIONSHIP ARTICLES">
                                            <HeaderStyle ForeColor="Yellow" Font-Bold="true" />
                                        </telerik:GridHyperLinkColumn>
                                    </Columns>
                                </telerik:GridTableView>
                            </DetailTables>
                            <Columns>
                                <telerik:GridTemplateColumn Visible="false">
                                    <ItemTemplate>
                                        <telerik:RadButton runat="server" AutoPostBack="false" OnClientClicked="openRadWinEditNote" CommandArgument='<%# Eval("idImage") %>' Text="Photos" >
                                        </telerik:RadButton>
                                    </ItemTemplate>
                                    <HeaderTemplate>
                                        <strong>Photos?</strong>
                                    </HeaderTemplate>
                                    <ItemStyle Width="15%" HorizontalAlign="Center" />
                                    <HeaderStyle Width="15%" />
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="strDisplayResultsClass" HeaderAbbr="Team" UniqueName="strDisplayResultsClass" HeaderText="STATE CHAMPIONS" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true" />
                                    <ItemStyle Font-Bold="true" />
                                </telerik:GridBoundColumn>
                                <telerik:GridTemplateColumn Visible="false">
                                    <ItemTemplate >
                                        <telerik:RadButton  runat="server" AutoPostBack="false" OnClientClicked="openRadWinTopic" CommandArgument='<%# Eval("Id") %>' Text="" >
                                            <Icon PrimaryIconUrl="images/TitleTalkLogoIconA.png" PrimaryIconWidth="82px" PrimaryIconHeight="32px" />
                                        </telerik:RadButton>
                                    </ItemTemplate>
                                    <ItemStyle Width="17%" HorizontalAlign="Center" BackColor="Yellow"  />
                                    <HeaderStyle Width="17%" HorizontalAlign="Center" />
                                </telerik:GridTemplateColumn>
                                <telerik:GridBoundColumn DataField="idStateChampion" DataType="System.Int16" Visible="false"></telerik:GridBoundColumn>
                            </Columns>                        
                        </MasterTableView>
                    </telerik:RadGrid>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>  
            </asp:Panel>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="2" SpanXl="2" SpanLg="2" SpanMd="12" SpanSm="12" SpanXs="12">
                    <asp:Table runat="server" ID="tblBAContent">
                        <asp:TableRow ID="rowAd">
                            <asp:TableCell>
                                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                <!-- 300x600 Ad -->
                                <ins class="adsbygoogle"
                                     style="display:inline-block;width:300px;height:600px"
                                     data-ad-client="ca-pub-6403098483302166"
                                     data-ad-slot="6996083575"></ins>
                                <script>
                                (adsbygoogle = window.adsbygoogle || []).push({});
                                </script>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="rowFB">
                            <asp:TableCell>
                                <asp:Label runat="server" ID="lblComments" Text="STATE TITLE TALK" Font-Size="Large"></asp:Label>
                                <div class="fb-comments" data-href="http://www.iwasatthegame.com/BAStateChampionships.aspx?id=<%= Session("fbID") %>" data-width="325" data-numposts="25"></div>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_Baseball_StateChampions WHERE strState = @state AND intYear = @selectedYear ORDER BY strSportGenderKey DESC, intSortClass">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selectedYear" ControlID="RadDropDownListYear" DefaultValue="1900" />
        </SelectParameters>    
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT intYear, CAST(intYear AS varchar) AS strYear FROM IWATGview_Baseball_StateChampions WHERE strState = @state ORDER BY intYear DESC">
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



