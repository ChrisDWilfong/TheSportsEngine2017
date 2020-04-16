<%@ Page Title="OBCA - Oklahoma Baseball Coaches Association Record Book " Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageBACANoAJAX.Master" CodeBehind="OBCARecords.aspx.vb" Inherits="TheSportsEngine2017.OBCARecords" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="OBCA - Oklahoma Baseball Coaches Association Record Book" />
    <meta name="twitter:description" content="ALL-TIME High School Baseball Records from IWasAtTheGame.com" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/OBCARecords.png" />
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
                    &nbsp;
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="6" SpanXl="6" SpanLg="6" SpanMd="12" SpanSm="12" SpanXs="12">
                        <asp:Panel ID="RadAjaxPanel100" runat="server" CssClass="grid_wrapper">
                            <asp:Table runat="server" ID="tblOBCARecords">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:DropDownList ID="DropDownListType" runat="server" DataSourceID="SqlDataSourceRecordType" DataTextField="strRecordType" DataValueField="strRecordType" AutoPostBack="True" DefaultMessage="Select Record..." DropDownHeight="500px" Width="400px"
                                            BackColor="#ffcc99" Height="30px" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px"  >
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" ID="lblHeader" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px" Font-Italic="true" Text="If you have any corrections or additions, email them to : chris@iwasatthegame.com" Font-Bold="true" ></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                                            <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="false" NoMasterRecordsText="&nbsp;Oklahoma High School Baseball Records" PageSize="100">
                                                <Columns>
                                                  <telerik:GridTemplateColumn UniqueName="TemplateColumn" HeaderText="#">
                                                    <ItemStyle HorizontalAlign="Right" Width="35px" />
                                                    <HeaderStyle Font-Bold="true" HorizontalAlign="Center" Width="35px" />
                                                    <ItemTemplate>
                                                      <asp:Label ID="numberLabel" runat="server" Width="20px" />
                                                    </ItemTemplate>
                                                    <HeaderStyle Width="35px" />
                                                  </telerik:GridTemplateColumn>
                                                </Columns>                            
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="Id" UniqueName="Id" Visible="false" >
                                                    </telerik:GridBoundColumn>
                                                    <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="" UniqueName="strDisplay" HeaderText="" 
                                                        AllowFiltering="false" AllowSorting="true" >
                                                        <HeaderStyle Font-Bold="true" />
                                                    </telerik:GridBoundColumn>                                
                                                </Columns>  
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="valueRecord" HeaderAbbr="" UniqueName="valueRecord" HeaderText="" 
                                                        AllowFiltering="false" AllowSorting="false" Display="false" >
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
        SelectCommand="SELECT intOrder, valueRecord, strRecordDetails, strRecordType, strSpringFall, strSchool, strYears, strRecordNote, strTeamPlayer, valuePS, ysnNR, valueNationalRecord, strDRT, strSN, strRN, 
                         intYearUpdated, Id, REPLACE(CAST(valueRecord AS varchar), '.000', '')  + ' : ' + CASE WHEN strRecordDetails IS NULL THEN '' ELSE strRecordDetails END + ' (' + strSchool + ') - ' + CASE WHEN strYears IS NULL THEN '' ELSE strYears END + ' ' + CASE WHEN strRecordNote IS NULL 
                         THEN '' ELSE ' - ' + CASE WHEN strLink Is Null THEN strRecordNote ELSE '<a href=' + strLink + ' target=_blank>' + strRecordNote + '</a>' END END AS strDisplay FROM tblBaseballRecords WHERE strRecordType = @recordType AND ysnActive <> 0 ORDER BY valueRecord DESC, strYears DESC">
        <SelectParameters>
            <asp:ControlParameter Name="recordType" ControlID="DropDownListType" DefaultValue="DODGERS" PropertyName="SelectedValue" />
        </SelectParameters>   
    </asp:SqlDataSource>   
    
    <asp:SqlDataSource ID="SqlDataSourceRecordType" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT strRecordType FROM tblBaseballRecords WHERE ysnActive <> 0 ORDER BY strRecordType">
    </asp:SqlDataSource>      

</asp:Content>



