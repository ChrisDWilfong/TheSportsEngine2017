<%@ Page Title="Oklahoma High School Wrestling State Champions" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageWrestlingNOAJAX.Master" CodeBehind="WRStateChampionsI.aspx.vb" Inherits="TheSportsEngine2017.WRStateChampionsI" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Wrestling Individual State Champions" />
    <meta name="twitter:description" content="ALL-TIME High School Wrestling Individual State Champions (since 1922)" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/IWATG_Logo_Wrestling.png" />
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
    <asp:Panel ID="RadAjaxPanel1111" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="12" SpanSm="12" SpanXs="12">
                        &nbsp;
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="6" SpanMd="6" SpanLg="6" SpanXl="6" SpanSm="12" SpanXs="12">
                        <asp:Table runat="server" ID="tblBKBStateTourneyScores">
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:DropDownList ID="RadDropDownListSchool" runat="server" DataSourceID="SqlDataSource2" DataTextField="strSchool" DataValueField="strSchool" 
                                        AutoPostBack="True" DefaultMessage="Select School..." DropDownHeight="250px"
                                        BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                                    </asp:DropDownList>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="false" >
                                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="Make selection above...">
                                            <Columns>
                                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="WRESTLING STATE CHAMPIONS" 
                                                    AllowFiltering="false" AllowSorting="false" >
                                                    <HeaderStyle Font-Bold="true" />
                                                </telerik:GridBoundColumn>
                                            </Columns>                        
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>  
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="12" SpanSm="12" SpanXs="12">
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
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </asp:Panel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_Wrestling_StateChampionsIndividuals WHERE strState = @state AND strSchool = @selectedSchool ORDER BY intYear DESC, intSortClass">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selectedSchool" ControlID="RadDropDownListSchool" DefaultValue="DODGERS" />
        </SelectParameters>    
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT strSchool FROM IWATGview_Wrestling_StateChampionsIndividuals WHERE strState = @state ORDER BY strSchool">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>    

</asp:Content>



