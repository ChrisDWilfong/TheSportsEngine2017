<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFlashbackNOAJAX.Master" CodeBehind="FBFlashbackBlog.aspx.vb" Inherits="TheSportsEngine2017.FBFlashbackBlog" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/flashback.css" rel="Stylesheet" />
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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
    <Rows>
        <telerik:LayoutRow >
            <Columns>
                <telerik:CompositeLayoutColumn Span="2" SpanXl="2" SpanLg="2" SpanMd="2" SpanSm="12" SpanXs="12" >
                    <Content>
                        &nbsp;
                    </Content>
                </telerik:CompositeLayoutColumn>
                <telerik:CompositeLayoutColumn Span="8" SpanXl="8" SpanLg="8" SpanMd="8" SpanSm="12" SpanXs="12" >
                    <Rows>
                        <telerik:LayoutRow>
                            <Content>
                                <div style="text-align:center;">
                                <script type="text/javascript" src="//www.powr.io/powr.js?external-type=html"></script> 
                                <div class="powr-media-gallery" id="2f882949_1532304348"></div>  
                                </div>
                            </Content>
                        </telerik:LayoutRow>
                    </Rows>
                </telerik:CompositeLayoutColumn>
                <telerik:CompositeLayoutColumn Span="2" SpanXl="2" SpanLg="2" SpanMd="2" SpanSm="12" SpanXs="12" >
                    <Content>
                        &nbsp;
                    </Content>
                </telerik:CompositeLayoutColumn>
            </Columns>
        </telerik:LayoutRow>
   </Rows>
    </telerik:RadPageLayout>
</asp:Content>
