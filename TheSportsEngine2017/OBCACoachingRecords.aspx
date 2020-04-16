<%@ Page Title="OBCA - Oklahoma Baseball Coaches Association" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageBACANoAJAX.Master" CodeBehind="OBCACoachingRecords.aspx.vb" Inherits="TheSportsEngine2017.OBCACoachingRecords" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="OBCA - Oklahoma Baseball Coaches Association" />
    <meta name="twitter:description" content="ALL-TIME Oklahoma High School Baseball Coaching Records from IWasAtTheGame.com" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/OBCAIWATG.PNG" />       
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="RadAjaxPanel212" runat="server" CssClass="grid_wrapper">
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
    </asp:Panel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="12" SpanSm="12" SpanXs="12">
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
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="6" SpanXl="6" SpanLg="6" SpanMd="12" SpanSm="12" SpanXs="12">
                        <asp:Panel ID="RadAjaxPanel100" runat="server" CssClass="grid_wrapper">
                            <asp:Table runat="server" ID="tblFBOD">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                                            <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="false" NoMasterRecordsText="Coaching Records" PageSize="100">
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="Rank" HeaderAbbr="Last" UniqueName="Rank" HeaderText="#" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="50px" HorizontalAlign="Center" />
                                                        <ItemStyle Width="50px" HorizontalAlign="Center"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="idCoachID" UniqueName="idCoachID" Visible="false" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="strCoachURL" HeaderAbbr="Coach" UniqueName="strCoachURL" HeaderText="COACH" 
                                                        AllowFiltering="false" AllowSorting="true" >
                                                        <HeaderStyle Font-Bold="true" />
                                                    </telerik:GridBoundColumn>                                
                                                    <telerik:GridBoundColumn DataField="strSchool" HeaderAbbr="Lastest Team" UniqueName="strSchool" HeaderText="LATEST TEAM" 
                                                        AllowFiltering="false" AllowSorting="true" >
                                                        <HeaderStyle Font-Bold="true" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intYearLast" HeaderAbbr="Last" UniqueName="intYearLast" HeaderText="Last" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="12%" HorizontalAlign="Right" />
                                                        <ItemStyle Width="12%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intYearsCoaching" HeaderAbbr="Yrs" UniqueName="intYearsCoaching" HeaderText="Years" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" />
                                                        <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intWins" HeaderAbbr="W" UniqueName="intWins" HeaderText="W" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="13%" HorizontalAlign="Right" />
                                                        <ItemStyle Width="13%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="intLosses" HeaderAbbr="L" UniqueName="intLosses" HeaderText="L" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" />
                                                        <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="winPerc" HeaderAbbr="W%" UniqueName="winPerc" HeaderText="W%" AllowFiltering="false" AllowSorting="True" Visible="false" >
                                                        <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" />
                                                        <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                </Columns>                        
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                                <!-- Top Banner -->
                                                <ins class="adsbygoogle"
                                                     style="display:inline-block;width:970px;height:90px"
                                                     data-ad-client="ca-pub-6403098483302166"
                                                     data-ad-slot="4121249041"></ins>
                                                <script>
                                                (adsbygoogle = window.adsbygoogle || []).push({});
                                                </script>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>  
                        </asp:Panel>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="2" SpanXl="2" SpanLg="2" SpanMd="12" SpanSm="12" SpanXs="12">
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT RANK() OVER (ORDER BY intWins DESC) As Rank, *, strCoach AS strCoachURL FROM viewBACACoachingRecordsSUM WHERE Not strCoach Is Null ORDER BY intWins DESC">
    </asp:SqlDataSource>    

</asp:Content>



