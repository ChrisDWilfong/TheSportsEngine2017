<%@ Page Title="Spring Playoff Central" Language="VB" AutoEventWireup="false" MasterPageFile="MasterPage2017.Master" CodeBehind="PlayoffCentralSpring.aspx.vb" Inherits="TheSportsEngine2017.PlayoffCentralSpring"  %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
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
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper0">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">  
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="12" HiddenSm="true" HiddenXs="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <div style="text-align:center;">
                                    <asp:HyperLink runat="server" ID="hlBanner" ImageUrl="~/images/banners/SpringBannerWeb.png" NavigateUrl="http://www.iwasatthegame.com" ></asp:HyperLink>
                                    </div>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="6" SpanSm="12" SpanXs="12" SpanMd="6" SpanLg="6" SpanXl="6">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content><h2>SPRING BASEBALL/SLOW PITCH</h2></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink00" runat="server" CssClass="button green" NavigateUrl="~/BAStateAppearancesCount.aspx" Text="Spring Baseball State Tourney Appearances" ></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink0" runat="server" CssClass="button green" NavigateUrl="~/OBCARecords.aspx" Text="OBCA High School Baseball Record Book" ></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink1" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink2" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink3" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink4" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink5" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink6" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink7" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink8" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink9" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink10" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>

                    <telerik:CompositeLayoutColumn Span="6" SpanSm="12" SpanXs="12" SpanMd="6" SpanLg="6" SpanXl="6">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content><h2>GOLF/SOCCER/TENNIS/TRACK</h2></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink11" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink12" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink13" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink14" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink15" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink16" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink17" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink18" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink19" runat="server" Text="" CssClass="button orange" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                            <telerik:LayoutRow>
                                <Content><asp:HyperLink ID="Hyperlink20" runat="server" Text="" CssClass="button green" Target="_blank"></asp:HyperLink></Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                </Columns>
            </telerik:LayoutRow>

        </Rows>
        <Rows>
            <telerik:LayoutRow Visible="false">
                <Content>
                    <br />
                    <div style="text-align:center;">
                    <asp:HyperLink ID="hlBottom" runat="server" NavigateUrl="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=4XH5CLU3AKTVW" ImageUrl="~/images/OK/ORDER100YearSpecial.png" Target="_blank"></asp:HyperLink>
                    </div>
                </Content>
            </telerik:LayoutRow>
        </Rows>

    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>
