<%@ Page Title="Oklahoma High School Track State Meet Records" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageTrack.Master" CodeBehind="TKStateMeetRecords.aspx.vb" Inherits="TheSportsEngine2017.TKStateMeetRecords" %>

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
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="10" SpanXl="10" SpanLg="10" SpanMd="10" SpanSm="10" SpanXs="10">
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <asp:Table runat="server" ID="tblOBCARecords">
                                        <asp:TableRow>
                                            <asp:TableCell>
                                                <asp:DropDownList ID="DropDownListType" runat="server" DataSourceID="SqlDataSourceRecordType" DataTextField="strEvent" DataValueField="strEvent" AutoPostBack="True" DefaultMessage="Select Record..." DropDownHeight="500px" Width="400px"
                                                    BackColor="#ffcc99" Height="30px" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px"  >
                                                </asp:DropDownList>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell>
                                                <asp:Label runat="server" ID="lblHeader" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px" Font-Italic="true" Text="All records are from the OSSAA State Track Meets (qualifying rounds and finals).<br>If you have any corrections or additions, email them to : chris@iwasatthegame.com" Font-Bold="true" ></asp:Label>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell>
                                                <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                                                    <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="false" NoMasterRecordsText="&nbsp;Oklahoma High School Track Records" PageSize="100">
                                                        <Columns>
                                                            <telerik:GridBoundColumn DataField="Id" UniqueName="Id" Visible="false" >
                                                            </telerik:GridBoundColumn>
                                                            <telerik:GridBoundColumn DataField="strDisplayGender" HeaderAbbr="" UniqueName="strDisplayGender" HeaderText="" 
                                                                AllowFiltering="false" AllowSorting="true" >
                                                                <HeaderStyle Font-Bold="true" />
                                                            </telerik:GridBoundColumn>                                
                                                        </Columns>                        
                                                    </MasterTableView>
                                                </telerik:RadGrid>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>  
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
                    <telerik:CompositeLayoutColumn Span="2" SpanXl="2" SpanLg="2" SpanMd="2" SpanSm="2" SpanXs="2" >
                        <Rows>
                            <telerik:LayoutRow>
                                <Content>
                                    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                                    <!-- Wide Skyscraper -->
                                    <ins class="adsbygoogle"
                                         style="display:inline-block;width:200px;height:600px"
                                         data-ad-client="ca-pub-6403098483302166"
                                         data-ad-slot="6674920880"></ins>
                                    <script>
                                    (adsbygoogle = window.adsbygoogle || []).push({});
                                    </script>
                                </Content>
                            </telerik:LayoutRow>
                        </Rows>
                    </telerik:CompositeLayoutColumn>
            </Columns>
        </telerik:LayoutRow>
    </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_Track_Records WHERE strEvent = @recordType ORDER BY strGender, intSortClass">
        <SelectParameters>
            <asp:ControlParameter Name="recordType" ControlID="DropDownListType" DefaultValue="DODGERS" PropertyName="SelectedValue" />
        </SelectParameters>   
    </asp:SqlDataSource>   
    
    <asp:SqlDataSource ID="SqlDataSourceRecordType" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT strEvent FROM IWATGview_Track_Records ORDER BY strEvent">
    </asp:SqlDataSource>      

</asp:Content>



