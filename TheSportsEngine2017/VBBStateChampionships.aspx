<%@ Page Title="Oklahoma High School Boys Volleyball State Championships" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageVolleyball.Master" CodeBehind="VBBStateChampionships.aspx.vb" Inherits="TheSportsEngine2017.VBBStateChampionships" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
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
                                <telerik:GridTemplateColumn>
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
                                <telerik:GridBoundColumn DataField="strSchoolClass" HeaderAbbr="Team" UniqueName="strSchoolClass" HeaderText="STATE CHAMPIONS" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true" />
                                    <ItemStyle Font-Bold="true" />
                                </telerik:GridBoundColumn>
                                <telerik:GridTemplateColumn>
                                    <ItemTemplate>
                                        <telerik:RadButton runat="server" AutoPostBack="false" OnClientClicked="openRadWinTopic" CommandArgument='<%# Eval("idForum") %>' Text="" >
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
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_VolleyballBoys_StateChampions WHERE strState = @state AND intYear = @selectedYear ORDER BY strSportGenderKey DESC, strClass DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selectedYear" ControlID="RadDropDownListYear" DefaultValue="1900" />
        </SelectParameters>    
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT intYear, CAST(intYear AS varchar) AS strYear FROM IWATGview_VolleyballBoys_StateChampions WHERE strState = @state ORDER BY intYear DESC">
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



