<%@ Page Title="Oklahoma High School State Champions" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageSchools.Master" CodeBehind="Schools.aspx.vb" Inherits="TheSportsEngine2017.Schools" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
    <link href="styles/RadRotator.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css' />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <telerik:RadRotator ID="RadRotator1" EnableEmbeddedBaseStylesheet="true" runat="server" DataSourceID="SqlDataSourceArticles"
                            RenderMode="Lightweight" Width="890px" Height="350px" ItemWidth="300px" ItemHeight="300px" CssClass="RadRotator" Visible="false" >  
                            <ItemTemplate>
                                <asp:Table runat="server" HorizontalAlign="Center">
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Label runat="server" ID="lblImage" Text='<%# Eval("strTitle") %>' Font-Size="Small"></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:HyperLink runat="server" ID="hlImage" NavigateUrl='<%# Eval("strURL") %>' Target="_blank">
                                                <asp:Image ID="AdImage" runat="server" AlternateText="Ad Image" ImageUrl='<%# Eval("strImage") %>' CssClass="personImage"></asp:Image>
                                            </asp:HyperLink>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                           </ItemTemplate>
                        </telerik:RadRotator>
                        <br />  
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
    <asp:SqlDataSource ID="SqlDataSourceArticles" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT TOP 5 * FROM viewStateChampionshipArticles WHERE strState = @state AND Not strImage Is Null ORDER BY Id DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            </SelectParameters>    
    </asp:SqlDataSource>   
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout21">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="12" SpanSm="12" SpanXs="12">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <div style="text-align:center;">
                                    <br />
                                    <h2>MILLWOOD COACH VARRYL FRANKLIN<br />1979-2018</h2>
                                    <a href="docs/OK/CoachFrankin_Millwood.pdf" target="_blank"><img src="images/OK/CoachFrankinFinal.png" /></a>
                                    <br />
                                    <h2>CLAY MARTIN INTERVIEW</h2>
                                    <iframe width="350" height="350" src="https://www.youtube.com/embed/k2kCVEh6Esc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br /><br />
                                    <h2>ORDER ALMANACS</h2>
                                    <img src="images/bullet.png" /><asp:HyperLink runat="server" Font-Size="X-Large" Font-Bold="true" ForeColor="Maroon" Font-Names="Anton;Arial;" Text="LIST OF CHAMPIONS - 100 YEARS" NavigateUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=YTFBEWGMEUDCY" Target="_blank"></asp:HyperLink><br />
                                    <img src="images/bullet.png" /><asp:HyperLink runat="server" Font-Size="X-Large" Font-Bold="true" ForeColor="Maroon" Font-Names="Anton;Arial;" Text="100 YEARS BOYS STATE TOURNEYS" NavigateUrl="https://www.paypal.com/webapps/shoppingcart?flowlogging_id=9cba8396ed761&mfid=1553323000555_9cba8396ed761#/checkout/openButton" Target="_blank"></asp:HyperLink><br />
                                    <img src="images/bullet.png" /><asp:HyperLink runat="server" Font-Size="X-Large" Font-Bold="true" ForeColor="Maroon" Font-Names="Anton;Arial;" Text="50 YEARS at THE BIG HOUSE" NavigateUrl="https://www.paypal.com/webapps/shoppingcart?mfid=1553323078351_82ed3bfff0e3b&flowlogging_id=82ed3bfff0e3b#/checkout/shoppingCart" Target="_blank"></asp:HyperLink><br /><br />
                                        <asp:HyperLink runat="server" NavigateUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=YTFBEWGMEUDCY" Target="_blank"><asp:Image runat="server" ImageUrl="~/images/ListOfChampionsCover2018300.png" /></asp:HyperLink><br />
                                    <asp:Label runat="server" ID="lblInfo" Text="100 Years of Oklahoma High School State Champions, that's over 25,000 in one Almanac!  Over 325 pages of champions in every sport, non-athletic actvities, teams, individuals, academic, IT'S ALL HERE!  Get yours with FREE SHIPPING TODAY!" Font-Name="Arial" Font-Size="Medium"></asp:Label><br />
                                        <asp:ImageButton Visible="false" runat="server" ImageUrl="~/images/youtubebutton-01.png" Width="250px" PostBackUrl="https://www.youtube.com/channel/UCHrietY_N_4p0xcBob_QzRg"  /><br />
                                    </div>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="6" SpanXl="6" SpanLg="6" SpanMd="12" SpanSm="12" SpanXs="12" >
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <div style="text-align:center;">
                                    <asp:Table runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell HorizontalAlign="Left" Width="33%" VerticalAlign="top">
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
                                            <asp:TableCell HorizontalAlign="Left" Width="33%" VerticalAlign="top">
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
                                            <asp:TableCell HorizontalAlign="Left" Width="33%" VerticalAlign="top">
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
                                        </asp:TableRow>
                                    </asp:Table>
                                    </div>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="12" SpanSm="12" SpanXs="12">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <div style="text-align:center;">
                                    <br />
                                    <h2>WHAT'S NEW</h2>
                                    </div>
                                    <asp:HyperLink runat="server" NavigateUrl="ChampionsGold.aspx" CssClass="button orange" Target="_self" Visible="true">2018-19 STATE CHAMPIONSHIP COUNT</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="ChampionsTop8.aspx" CssClass="button orange" Target="_self" Visible="true">2018-19 TOP 8 FINISHES COUNT</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="https://cwilfong.wixsite.com/iwatgblog/blog/2018-2019-oklahoma-high-school-baseball-coaching-records-updated" CssClass="button orange" Target="_blank" Visible="true">2018-19 ALL-TIME BASEBALL COACHING RECORDS</asp:HyperLink>  
                                    <asp:HyperLink runat="server" NavigateUrl="https://cwilfong.wixsite.com/iwatgblog/blog/2018-19-oklahoma-undefeated-teams" CssClass="button orange" Target="_blank" Visible="true">2018-19 UNDEFEATED TEAMS</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="BAWL3Years.aspx" CssClass="button orange" Target="_self" Visible="true">MOST WINS SPRING BASEBALL PAST 4 YEARS</asp:HyperLink>
                                    <asp:HyperLink runat="server" NavigateUrl="OBCARecords.aspx" CssClass="button orange" Target="_self" Visible="true">BASEBALL RECORD BOOK</asp:HyperLink>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>   
</asp:Content>



