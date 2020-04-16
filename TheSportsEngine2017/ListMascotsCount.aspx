<%@ Page Title="Oklahoma High School Mascots" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPage2017.Master" CodeBehind="ListMascotsCount.aspx.vb" Inherits="TheSportsEngine2017.ListMascotsCount" %>

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
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text=""></asp:Label></h3>
                        <h4><asp:HyperLink runat="server" NavigateUrl="~/ListMascots.aspx">For a COMPLETE list of Schools/Mascot Names (click here)</asp:HyperLink></h4>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text=""></asp:Label></h3>
                        <h4><asp:HyperLink runat="server" NavigateUrl="~/ListMascots.aspx">For a COMPLETE list of Schools/Mascot Names</asp:HyperLink></h4>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper">
        <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
            <Rows>
                <telerik:LayoutRow>
                    <Columns>
                        <telerik:LayoutColumn Span="9" SpanXl="9" SpanLg="9" SpanMd="9" SpanSm="12" SpanXs="12">
                            <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                                    <Columns>
                                        <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="SCHOOL - MASCOT" 
                                            AllowFiltering="false" AllowSorting="false" >
                                            <HeaderStyle Font-Bold="true" />
                                        </telerik:GridBoundColumn>
                                    </Columns>                        
                                </MasterTableView>
                            </telerik:RadGrid>
                            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- Billboard Web -->
                            <ins class="adsbygoogle"
                                 style="display:inline-block;width:970px;height:250px"
                                 data-ad-client="ca-pub-6403098483302166"
                                 data-ad-slot="4948079706"></ins>
                            <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="3" SpanSm="12" SpanXs="12">
                            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- Right Ad -->
                            <ins class="adsbygoogle"
                                 style="display:inline-block;width:336px;height:280px"
                                 data-ad-client="ca-pub-6403098483302166"
                                 data-ad-slot="2649207139"></ins>
                            <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                            <br />
                            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- 300x600 Ad -->
                            <ins class="adsbygoogle"
                                 style="display:inline-block;width:300px;height:600px"
                                 data-ad-client="ca-pub-6403098483302166"
                                 data-ad-slot="6996083575"></ins>
                            <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT COUNT(strMascot) AS intCount, strMascot, CASE WHEN COUNT(strMascot) >= 10 THEN CAST(COUNT(strMascot) AS varchar(10)) + ' - ' + strMascot ELSE '&nbsp;&nbsp;' + CAST(COUNT(strMascot) AS varchar(10)) + ' - ' + strMascot END AS strDisplay
            FROM  tblSchoolInfo
            WHERE (ysnCurrentOSSAASchool = 1) AND (NOT (strMascot IS NULL))
            GROUP BY strMascot
            ORDER BY intCount DESC, strMascot">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>    


</asp:Content>



