<%@ Page Title="Oklahoma High School Spring Baseball State Champions" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageBaseballNOAJAX.Master" CodeBehind="BAProPlayers.aspx.vb" Inherits="TheSportsEngine2017.BAProPlayers" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="RadAjaxPanel200" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text="" Font-Bold="true"></asp:Label></h3>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text="" Font-Bold="true"></asp:Label></h3>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="9" SpanXl="9" SpanLg="9" SpanMd="12" SpanSm="12" SpanXs="12">
                        <asp:Panel ID="RadAjaxPanel111" runat="server" CssClass="grid_wrapper">
                            <asp:Table runat="server" ID="tblBAStateTourneyScores">
                                <asp:TableRow HorizontalAlign="center">
                                    <asp:TableCell>
                                        <asp:DropDownList ID="RadDropDownListPlayers" runat="server" DataSourceID="SqlDataSource2" DataTextField="strPlayer" DataValueField="Id" 
                                            AutoPostBack="True" DefaultMessage="Select Player..." DropDownHeight="250px" Width="250px"
                                            BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <%= Session("HTMLLink") %>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>  
                        </asp:Panel>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="12" SpanSm="12" SpanXs="12">
                        <div style="text-align:right;">
                            <br /><br />
                            <asp:Image runat="server" ID="imgPlayer" width="300px" BorderWidth="2" />
                            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- Wide Skyscraper 1 -->
                            <ins class="adsbygoogle"
                                 style="display:inline-block;width:160px;height:600px"
                                 data-ad-client="ca-pub-6403098483302166"
                                 data-ad-slot="4934314751"></ins>
                            <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </div>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM tblStatLinks WHERE strSport = 'Baseball' ORDER BY strPlayer">
    </asp:SqlDataSource>    

</asp:Content>



