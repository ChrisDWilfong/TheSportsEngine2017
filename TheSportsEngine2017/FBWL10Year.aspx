<%@ Page Title="Oklahoma High School Football All-Time Wins" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootballNOAJAX.Master" CodeBehind="FBWL10Year.aspx.vb" Inherits="TheSportsEngine2017.FBWL10Year" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="RadAjaxPanel21" runat="server" CssClass="grid_wrapper">
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
                        <asp:Panel ID="RadAjaxPanel1001" runat="server" CssClass="grid_wrapper">
                            <asp:Table runat="server" ID="tblFBScoring10Year">
                                <asp:TableRow HorizontalAlign="Center">
                                    <asp:TableCell>
                                        <asp:DropDownList ID="RadDropDownListClass" runat="server" AutoPostBack="True"
                                            Width="150px" BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                                            <asp:ListItem Text="Select Class..." Value="DODGERS"></asp:ListItem>
                                            <asp:ListItem Text="Class 6A" Value="6A"></asp:ListItem>
                                            <asp:ListItem Text="Class 5A" Value="5A"></asp:ListItem>
                                            <asp:ListItem Text="Class 4A" Value="4A"></asp:ListItem>
                                            <asp:ListItem Text="Class 3A" Value="3A"></asp:ListItem>
                                            <asp:ListItem Text="Class 2A" Value="2A"></asp:ListItem>
                                            <asp:ListItem Text="Class A" Value="A"></asp:ListItem>
                                            <asp:ListItem Text="Class B" Value="B"></asp:ListItem>
                                            <asp:ListItem Text="Class C" Value="C"></asp:ListItem>
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow HorizontalAlign="Center">
                                    <asp:TableCell>
                                        <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                                            <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="False" NoMasterRecordsText="Playoffs" PageSize="100">
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strSchool" HeaderAbbr="Team" UniqueName="strSchool" HeaderText="TEAM" 
                                                        AllowFiltering="false" AllowSorting="true" >
                                                        <HeaderStyle Font-Bold="true" />
                                                        <ItemStyle Width="40%" HorizontalAlign="Left" />
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="lastClass" HeaderAbbr="" UniqueName="lastClass" HeaderText="" AllowFiltering="false" AllowSorting="true" AutoPostBackOnFilter="true" >
                                                        <HeaderStyle Font-Bold="true" Width="15%" HorizontalAlign="Right" />
                                                        <ItemStyle Width="15%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>  
                                                    <telerik:GridBoundColumn DataField="sumWins" HeaderAbbr="Wins" UniqueName="sumWins" HeaderText="W" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="15%" HorizontalAlign="Center" />
                                                        <ItemStyle Width="15%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="sumLosses" HeaderAbbr="Losses" UniqueName="sumLosses" HeaderText="L" AllowFiltering="false" AllowSorting="True" >
                                                        <HeaderStyle Font-Bold="true" Width="15%" HorizontalAlign="Center" />
                                                        <ItemStyle Width="15%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="TotalYears" HeaderAbbr="Years" UniqueName="TotalYears" HeaderText="Years" AllowFiltering="false" AllowSorting="True" Visible="false" >
                                                        <HeaderStyle Font-Bold="true" Width="0%" HorizontalAlign="Center" />
                                                        <ItemStyle Width="0%" HorizontalAlign="Right"/>
                                                    </telerik:GridBoundColumn>
                                                </Columns>                        
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>  
                        </asp:Panel>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="2" SpanXl="2" SpanLg="2" SpanMd="12" SpanSm="12" SpanXs="12">
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_FootballOffense_10YearsWL WHERE lastClass = @cboClass AND strState = @state AND Not lastClass Is Null AND TotalYears >= 5 ORDER BY sumWins DESC, sumLosses, strSchool">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter ControlID="RadDropDownListClass" Name="cboClass" DefaultValue="DODGERS" />
        </SelectParameters>    
    </asp:SqlDataSource>     

</asp:Content>



