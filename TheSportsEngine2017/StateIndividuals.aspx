<%@ Page Title="Oklahoma Individual State Champions" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageBillboard.Master" CodeBehind="StateIndividuals.aspx.vb" Inherits="TheSportsEngine2017.StateIndividuals" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/billboard.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <asp:Panel runat="server" ID="panelAd1" Visible="true">    
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
                        </asp:Panel>                          
                        <h1><asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text="" Font-Names="Lalezar"></asp:Label></h1>
                        <h2><asp:Label ID="lblOneColumnDetail0" runat="server" Text="" ForeColor="Black"></asp:Label></h2>
                        <h2><asp:Label ID="lblOneColumnDetail01" runat="server" Text="" ForeColor="Black"></asp:Label></h2>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <asp:Panel runat="server" ID="panelAd2" Visible="true">    
                            <div style="text-align:center;">
                            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- Billboard Mobile -->
                            <ins class="adsbygoogle"
                                 style="display:inline-block;width:320px;height:100px"
                                 data-ad-client="ca-pub-6403098483302166"
                                 data-ad-slot="6146036330"></ins>
                            <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>   
                            </div>
                        </asp:Panel>                          
                        <h1><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text="" ForeColor="Black" Font-Names="Lalezar"></asp:Label></h1>
                        <h2><asp:Label ID="lblOneColumnDetail" runat="server" Text="" ForeColor="Black"></asp:Label></h2>
                        <h2><asp:Label ID="lblOneColumnDetail1" runat="server" Text="" ForeColor="Black"></asp:Label></h2>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="Page1">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper" HorizontalAlign="Center">
        <asp:PlaceHolder runat="server">
        <%= Session("billboardHTML")%>
        </asp:PlaceHolder>
    </telerik:RadAjaxPanel>
    </div>
</asp:Content>



