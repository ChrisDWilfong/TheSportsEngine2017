<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPage2017.Master" CodeBehind="SportsPage.aspx.vb" Inherits="TheSportsEngine2017.SportsPage" %>
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
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="styles/SportsPage.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Ewart' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Anto' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Holtwood+One+SC' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=IM+Fell+Double+Pica+SC' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Bowlby+One' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Changa+One' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Saira+Extra+Condensed' rel='stylesheet' type='text/css' />
    <link href="styles/imageR.css" rel="stylesheet" />
    <link href="styles/photoGallery.css" rel="stylesheet" />
    <script type="text/javascript" src="scripts/imageR.js"></script>

    <script type="text/javascript">
        (function (global, undefined) {

            function openRadWinTrophyCase(sender) {
                var id;
                // Send the client ID also...
                id = sender._clientStateFieldID;
                id = id.replace("_ClientState", "");
                radopen("TrophyCase.aspx?id=" + sender._commandArgument, "RadWindow5", 960, 760, 10, 10);
            }
            global.openRadWinTrophyCase = openRadWinTrophyCase;
        })(window);

        function OnClientClose(oWnd, args) {
            var arg = args.get_argument();
        }
    </script>
   <telerik:RadWindowManager ID="RadWindowManager1" runat="server" EnableShadow="true" Style="z-index: 7025;">
        <Windows>
            <telerik:RadWindow ID="RadWindow5" runat="server" ShowContentDuringLoad="false" Width="400px"
                Height="400px" Title="PHOTO GALLERY" Behaviors="Close" Modal="true" OnClientClose="OnClientClose">
            </telerik:RadWindow>
        </Windows>
    </telerik:RadWindowManager>
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0&appId=2049549131962643&autoLogAppEvents=1';
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
<div class="divClass">
<telerik:RadAjaxPanel ID="RadAjaxPanel3" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <asp:Table runat="server" CssClass="tableStyle" Style="text-align:center;">
                            <asp:TableRow ID="rowHeader" HorizontalAlign="Center">
                                <asp:TableCell Height="20px" ColumnSpan="2">
                                    <asp:Label runat="server" ID="lblHeader" Text="SPORTS PAGE" CssClass="SPHeader"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow ID="rowHeaderDate" HorizontalAlign="Center">
                                <asp:TableCell ColumnSpan="2">
                                    <asp:Label runat="server" ID="lblHeaderDate" Text="March 2017" CssClass="SPHeaderDate" Style="line-height:24px;"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow ID="rowGameTitle" HorizontalAlign="center">
                                <asp:TableCell ColumnSpan="2">
                                    <asp:Label runat="server" ID="lblResults" Text="" CssClass="SPGameTitle"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow ID="rowGameTitleSub" HorizontalAlign="Center" Visible="false">
                                <asp:TableCell ColumnSpan="2">
                                    <asp:Label runat="server" ID="lblResultsCount" Text="" CssClass="SPGameTitleSub"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>
            
                            <asp:TableRow ID="rowArticles" HorizontalAlign="Center">
                                <asp:TableCell VerticalAlign="top">
                                    <asp:Label runat="server" ID="lblArticles" Text="ARTICLES" CssClass="SPGameTitleSub" ForeColor="Black"></asp:Label><br />
                                    <telerik:RadGrid ID="RadGrid1" runat="server" SkinID="Metro" DataSourceID="SqlDataSourceArticles" AutoGenerateColumns="False" Width="500px">
                                        <MasterTableView DataSourceID="SqlDataSourceArticles" UseAllDataFields="False">
                                            <Columns>
                                                <telerik:GridHyperLinkColumn DataNavigateUrlFields="strURL" DataTextField="strTitleDisplay" Target="_blank" HeaderText="Click Link Below for Article">
                                                    <HeaderStyle Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Bold="true" Font-Italic="true" />
                                                    <ItemStyle Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Bold="true"  />
                                                </telerik:GridHyperLinkColumn>
                                            </Columns>                        
                                        </MasterTableView>
                                    </telerik:RadGrid>
                                </asp:TableCell>
                                <asp:TableCell VerticalAlign="top" HorizontalAlign="left" ID="columnRoadToTheTitle">
                                    <asp:Label runat="server" ID="lblR2THeader" Text="ROAD TO THE TITLE" CssClass="SPGameTitleSub" ForeColor="Black"></asp:Label><br />
                                    <asp:Label runat="server" ID="lblR2TDetail" Text="" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="1.5em" Font-Bold="true" ForeColor="Black"></asp:Label>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow ID="rowPhotos" HorizontalAlign="Center">
                                <asp:TableCell ColumnSpan="2">
                                    <asp:Label runat="server" ID="lblImages" Text="PHOTO GALLERY" CssClass="SPGameTitleSub" ForeColor="black"></asp:Label><br />
                                    <telerik:RadButton runat="server" AutoPostBack="false" OnClientClicked="openRadWinTrophyCase" CommandArgument='<%# Session("globalKey") %>' Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="1.45em" Font-Bold="true" Text="OPEN PHOTO GALLERY" ForeColor="Red" >
                                    </telerik:RadButton>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow ID="rowPhotos1" HorizontalAlign="Center">
                                <asp:TableCell ColumnSpan="2">
                                    <telerik:RadImageGallery BorderStyle="Solid" BorderWidth="5px" BorderColor="Black" RenderMode="Lightweight" ID="RadImageGallery2" runat="server" OnNeedDataSource="RadImageGallery2_NeedDataSource"
                                        DataImageField="strImageURL" Width="900px" Height="200px" LoopItems="false" AllowPaging="false" ShowLoadingPanel="true" >
                                        <ToolbarSettings ShowItemsCounter="false" Position="None" ShowThumbnailsToggleButton="false" ShowSlideshowButton="false" ShowFullScreenButton="false" ShowThumbnailsButtonText="false" />
                                        <ThumbnailsAreaSettings ThumbnailWidth="225px" ThumbnailHeight="200px" Height="200px" />
                                    </telerik:RadImageGallery>
                                </asp:TableCell>
                            </asp:TableRow>

                            <asp:TableRow ID="rowTitleTalk" HorizontalAlign="Center" Visible="false">
                                <asp:TableCell ColumnSpan="2">
                                    <br /><asp:Label runat="server" ID="Label1" Text="STATE TITLE TALK" CssClass="SPGameTitleSub" ForeColor="black"></asp:Label><br />
                                    <%= Session("globalFacebook") %>   
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
</telerik:RadAjaxPanel>
</div>

    <asp:SqlDataSource ID="SqlDataSourceArticles" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT *, strTitle + ' - ' + strSource  AS strTitleDisplay  FROM viewStateChampionshipArticles WHERE strSportGenderKey = @sportGenderKey AND intYear = @year AND strClass = @class AND strState = @state ORDER BY intYear DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="sportGenderKey" SessionField="globalSportGenderKey" DefaultValue="Dodger" Type="String" />
            <asp:SessionParameter Name="year" SessionField="globalYear" DefaultValue="0" />
            <asp:SessionParameter Name="class" SessionField="globalClass" DefaultValue="DODGERS" Type="string" />
        </SelectParameters>    
    </asp:SqlDataSource> 

</asp:Content>

