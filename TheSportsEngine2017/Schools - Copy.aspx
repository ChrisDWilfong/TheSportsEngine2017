<%@ Page Title="Oklahoma High School State Champions" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageSchools.Master" CodeBehind="Schools.aspx.vb" Inherits="TheSportsEngine2017.Schools" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <asp:Image runat="server" ImageUrl="~/images/OK/IWATG_SchoolPageWebNoLogo.png" Width="100%" />
                        <div style="text-align:center;">
                        <asp:Label runat="server" ID="lblScroller1" Text="Most Visited School Below??" ForeColor="Red" Font-Size="Larger"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <asp:Image runat="server" ImageUrl="~/images/OK/IWATG_SchoolPageWebNoLogo.png" Width="100%" />
                        <div style="text-align:center;">
                        <asp:Label runat="server" ID="lblScroller2" Text="Most Visited School Below??" forecolor="Red" Font-Size="Larger"></asp:Label>
                        </div>
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
                    <telerik:CompositeLayoutColumn Span="3" SpanXl="3" SpanLg="3" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <div style="text-align:center;">
                                    <br /><br /><br />
                                    <asp:HyperLink runat="server" Font-Size="X-Large" Font-Bold="true" ForeColor="Maroon" Font-Names="Anton;Arial;" Text="LIST OF CHAMPIONS - 100 YEARS<br>Order yours TODAY for only $19.99!<br>Free Shipping" NavigateUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=YTFBEWGMEUDCY" Target="_blank"></asp:HyperLink>
                                    <iframe width="350" height="350" src="https://www.youtube.com/embed/NraFX8j8xXQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br /><br />
                                        <asp:HyperLink runat="server" NavigateUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=YTFBEWGMEUDCY" Target="_blank"><asp:Image runat="server" ImageUrl="~/images/ListOfChampionsCover2018300.png" /></asp:HyperLink><br />
                                    <asp:Label runat="server" ID="lblInfo" Text="100 Years of Oklahoma High School State Champions, that's over 25,000 in one Almanac!  Over 325 pages of champions in every sport, non-athletic actvities, teams, individuals, academic, IT'S ALL HERE!  Get yours with FREE SHIPPING TODAY!" Font-Name="Arial" Font-Size="Medium"></asp:Label><br />
                                        <asp:ImageButton Visible="false" runat="server" ImageUrl="~/images/youtubebutton-01.png" Width="250px" PostBackUrl="https://www.youtube.com/channel/UCHrietY_N_4p0xcBob_QzRg"  /><br />
                                    </div>
                                    <div style="text-align:center;">
                                    <asp:ImageButton runat="server" ID="img40YearsB" ImageUrl="~/images/40PointClubBoys150.png" PostBackUrl="BKBGameScoring2019.aspx" />&nbsp;<asp:ImageButton runat="server" ID="img40YearsG" ImageUrl="~/images/40PointClubGirls150.png" PostBackUrl="BKGGameScoring2019.aspx" />
                                    </div>
                                    <asp:HyperLink runat="server" NavigateUrl="RPIFootball.aspx" CssClass="button orange" Target="_self" Visible="true">FOOTBALL FINAL RPI (Regular Season)</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="FBPlayoffs1st.aspx" CssClass="button orange" Target="_self" Visible="true">ALL-TIME 1st ROUND<br />FOOTBALL PLAYOFF RECORDS</asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="PLAYOFF YEARS w/o CHAMPIONSHIP" NavigateUrl="FBNoChampionship.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="FBOD.aspx" CssClass="button orange" Target="_self" Visible="true">FOOTBALL OFFENSE/DEFENSE<br />(thru Week #12)</asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="FOOTBALL TEAM PLAYOFF PAGES" NavigateUrl="PlayoffGames.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="FBCoachingRecords.aspx" CssClass="button green" Target="_self">ALL-TIME FOOTBALL<br />COACHING WINS</asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="ALL-TIME PLAYOFF RECORDS" NavigateUrl="FBPlayoffTotals.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>ALL-TIME" NavigateUrl="FBPlayoffStreaks.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>CURRENT" NavigateUrl="FBPlayoffStreaksC.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="CONSECUTIVE PLAYOFF YEARS<br>BY SCHOOL" NavigateUrl="FBPlayoffStreaksS.aspx" CssClass="button orange"></asp:HyperLink>
                                    <asp:HyperLink runat="server" Text="ALL-TIME UNDEFEATED FOOTBALL TEAMS" NavigateUrl="FBUndefeatedAT.aspx" CssClass="button orange"></asp:HyperLink>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="8" SpanXl="8" SpanLg="8" SpanMd="8" SpanSm="10" SpanXs="10" >
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:Table runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <asp:GridView ID="GridView0" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="98%"
                                                    Font-Names="Oswald" Visible="true" HorizontalAlign="Left" Font-Size="X-Large">
                                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                    <RowStyle BackColor="LightGray" ForeColor="#333333" />
                                                        <Columns>
                                                            <asp:HyperLinkField DataTextField="strTeam" Text="" HeaderText="" ItemStyle-HorizontalAlign="Left" />
                                                        </Columns>
                                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="#FFCC66" ForeColor="Navy" />
                                                    <HeaderStyle BackColor="Transparent" ForeColor="White" Height="1px" />
                                                    <AlternatingRowStyle BackColor="White" />
                                                </asp:GridView>                                               
                                            </asp:TableCell>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="98%"
                                                    Font-Names="Oswald" Visible="true" HorizontalAlign="Left" Font-Size="X-Large">
                                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                    <RowStyle BackColor="LightGray" ForeColor="#333333" />
                                                        <Columns>
                                                            <asp:HyperLinkField DataTextField="strTeam" Text="" HeaderText="" ItemStyle-HorizontalAlign="Left" />
                                                        </Columns>
                                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="#FFCC66" ForeColor="Navy" />
                                                    <HeaderStyle BackColor="Transparent" ForeColor="White" Height="1px" />
                                                    <AlternatingRowStyle BackColor="White" />
                                                </asp:GridView>                                               
                                            </asp:TableCell>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="98%"
                                                    Font-Names="Oswald" Visible="true" HorizontalAlign="Left" Font-Size="X-Large">
                                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                    <RowStyle BackColor="LightGray" ForeColor="#333333" />
                                                        <Columns>
                                                            <asp:HyperLinkField DataTextField="strTeam" Text="" HeaderText="" ItemStyle-HorizontalAlign="Left" />
                                                        </Columns>
                                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="#FFCC66" ForeColor="Navy" />
                                                    <HeaderStyle BackColor="Transparent" ForeColor="White" Height="1px" />
                                                    <AlternatingRowStyle BackColor="White" />
                                                </asp:GridView>                                               
                                            </asp:TableCell>
                                            <asp:TableCell HorizontalAlign="Left" Width="25%" VerticalAlign="top">
                                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="98%"
                                                    Font-Names="Oswald" Visible="true" HorizontalAlign="Left" Font-Size="X-Large">
                                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                    <RowStyle BackColor="LightGray" ForeColor="#333333" />
                                                        <Columns>
                                                            <asp:HyperLinkField DataTextField="strTeam" Text="" HeaderText="" ItemStyle-HorizontalAlign="Left" />
                                                        </Columns>
                                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="#FFCC66" ForeColor="Navy" />
                                                    <HeaderStyle BackColor="Transparent" ForeColor="White" Height="1px" />
                                                    <AlternatingRowStyle BackColor="White" />
                                                </asp:GridView>                                               
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="1" SpanXl="1" SpanLg="1" HiddenMd="true" HiddenSm="true" HiddenXs="true">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
        </Columns>
        </telerik:LayoutRow>
            </Rows>
        </telerik:RadPageLayout>         


</asp:Content>



