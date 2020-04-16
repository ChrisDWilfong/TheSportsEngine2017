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
        SelectCommand="SELECT TOP 10 * FROM viewStateChampionshipArticles WHERE strState = @state AND Not strImage Is Null ORDER BY Id DESC">
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
										<h2>Click below for PLAYOFF CENTRAL!</h2>
                                        <asp:ImageButton PostBackUrl="PlayoffCentralBKS.aspx" ID="imgAllDecade" runat="server" ImageUrl="~/images/OK/IWATG_Basketball_PlayoffCentral300.png" />
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE ALL CHAMPIONSHIPS</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=FBW" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE FOOTBALL<br />WINNINGEST COACHES</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=Football" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE FOOTBALL</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=BKB" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE BASKETBALL (BOYS)</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=BKG" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE BASKETBALL (GIRLS)</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=Baseball" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE BASEBALL</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=FP" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE FAST PITCH</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=SP" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE SLOW PITCH</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=FBA" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE FALL BASEBALL</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=XRCB" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE CROSS COUNTRY (BOYS)</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=XRCG" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE CROSS COUNTRY (GIRLS)</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=CH" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE CHEERLEADING</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=GOB" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE GOLF (BOYS)</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=GOG" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE GOLF (GIRLS)</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=TNB" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE TENNIS (BOYS)</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=TNG" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE TENNIS (GIRLS)</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=TKB" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE TRACK (BOYS)</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=TKG" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE TRACK (GIRLS)</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=VB" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE VOLLEYBALL</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=WR" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE WRESTLING</asp:HyperLink>
                                        <asp:HyperLink runat="server" NavigateUrl="ALLDecade2010.aspx?sp=WRD" CssClass="button orange" Target="_self" Visible="true">#OKPrepsALLDECADE WRESTLING DUAL</asp:HyperLink>
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
                                    <asp:Table runat="server" HorizontalAlign="center">
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
                                    <h3>ALL TIME GIRLS BASKETBALL COACHING WINS</h3>
                                        <telerik:RadGrid ID="RadGrid1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="false" Width="95%" >
                                            <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="Coaching Records" PageSize="100">
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="Rank" HeaderAbbr="Last" UniqueName="Rank" HeaderText="#" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="15%" HorizontalAlign="Center" />
                                                        <ItemStyle Width="50px" HorizontalAlign="Center"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="Id" UniqueName="Id" Visible="false" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="strDisplayWins" HeaderAbbr="Wins - Coach (Last School)" UniqueName="strDisplayWins" HeaderText="Wins - Coach (Last School)" 
                                                        AllowFiltering="false" AllowSorting="false" >
                                                        <HeaderStyle Font-Bold="true" />
                                                        <ItemStyle HorizontalAlign="left" />
                                                    </telerik:GridBoundColumn>                                
                                                </Columns>                        
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </div>
                                </Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><br /></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content>
                                    <div style="text-align:left; vertical-align:top;">
                                        <%= Session("footerTwitterFeed") %>
                                    </div>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>

    </telerik:RadPageLayout>  
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT TOP 50 RANK() OVER (ORDER BY intWins DESC) As Rank, CAST(intWins AS varchar(10)) + ' - ' + strFirstName + ' ' + strLastName + ' ' + CASE WHEN strActive Is Null THEN '' ELSE strActive END AS strDisplayWins, intWins FROM tblBasketballCoachingRecords WHERE strSportGenderKey = 'BasketballGirls' AND intWins >= 500 ORDER BY intWins DESC">
    </asp:SqlDataSource>    
</asp:Content>



