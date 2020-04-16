<%@ Page Title="Oklahoma High School Boys Basketball Coaching Records" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageBasketballPOPUP.Master" CodeBehind="BKBCoachingRecords.aspx.vb" Inherits="TheSportsEngine2017.BKBCoachingRecords" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Boys Basketball All-Time Coaching Wins ACTIVE" />
    <meta name="twitter:description" content="ALL-TIME High School Basketball Coaching W-L Records" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/IWATG_Logo_Basketball.png" />
    <script type="text/javascript">
        (function (global, undefined) {

            function openRadWinEditNote(sender) {
                var id;
                // Send the client ID also...
                id = sender._clientStateFieldID;
                id = id.replace("_ClientState", "");
                radopen("CoachesInfo.aspx?id=" + sender._commandArgument, "RadWindowBK", 860, 660, 10, 10);
            }
            global.openRadWinEditNote = openRadWinEditNote;

        })(window);
        function OnClientClose(oWnd, args) {
            //get the transferred arguments
            var arg = args.get_argument();
        }
    </script>
        <script>
            fbq('track', 'ViewContent', {
            value: 2001,
            });
        </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text=""></asp:Label></h3>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text=""></asp:Label></h3>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1"  runat="server" CssClass="grid_wrapper">
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                         AllowPaging="false" >
                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                            <Columns>
                              <telerik:GridTemplateColumn UniqueName="TemplateColumn" HeaderText="#">
                                <ItemStyle Font-Size="Small" HorizontalAlign="Right" Width="60px" />
                                <HeaderStyle Font-Size="Small" Font-Bold="true" HorizontalAlign="Center" Width="35px" />
                                <ItemTemplate>
                                  <asp:Label ID="numberLabel" runat="server" Width="40px" />
                                </ItemTemplate>
                                <HeaderStyle Width="60px" />
                              </telerik:GridTemplateColumn>
                                <telerik:GridTemplateColumn Visible="false">
                                    <ItemTemplate>
                                        <telerik:RadButton runat="server" AutoPostBack="false" OnClientClicked="openRadWinEditNote" CommandArgument='<%# Eval("id") %>' Text="" >
                                            <Icon PrimaryIconUrl="images/add-more.png" PrimaryIconWidth="40px" PrimaryIconHeight="40px" />
                                        </telerik:RadButton>
                                    </ItemTemplate>
                                    <ItemStyle Width="12%" HorizontalAlign="Center"  />
                                    <HeaderStyle Width="12%" HorizontalAlign="Center" />
                                </telerik:GridTemplateColumn>
                            </Columns>
                            <Columns>
                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="WINS - Coach - (School)" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true"  />
                                </telerik:GridBoundColumn>
                            </Columns>
                            <Columns>
                                <telerik:GridBoundColumn DataField="intWins" HeaderAbbr="" UniqueName="intWins" HeaderText="" 
                                    AllowFiltering="false" AllowSorting="false" Display="false" >
                                </telerik:GridBoundColumn>

                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid> 
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </telerik:RadAjaxPanel>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT TOP 100 CAST(intWins AS varchar(10)) + ' - ' + strFirstName + ' ' + strLastName + ' ' + ' (' + strLastSchool + ') ' + CASE WHEN strActive Is Null THEN '' ELSE strActive END AS strDisplay, intWins, id FROM tblBasketballCoachingRecords WHERE strSportGenderKey = 'BasketballBoys' AND strActive = '**' ORDER BY intWins DESC">
    </asp:SqlDataSource>    
</asp:Content>



