<%@ Page Title="2018 Oklahoma High School Fast Pitch RPI" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageSoftballNOAJAX.Master" CodeBehind="RPIFPSoftballSOS.aspx.vb" Inherits="TheSportsEngine2017.RPIFPSoftballSOS" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="RadAjaxPanel2" runat="server" CssClass="grid_wrapper">
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
                    <telerik:LayoutColumn Span="1" SpanXl="1" SpanLg="1" SpanMd="12" SpanSm="12" SpanXs="12">
                        &nbsp;
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="4" SpanXl="4" SpanLg="4" SpanMd="12" SpanSm="12" SpanXs="12">
                        <asp:Panel ID="RadAjaxPanel100" runat="server" CssClass="grid_wrapper">
                            <asp:Table runat="server" ID="tblRPI">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:DropDownList ID="RadDropDownListClass" runat="server" AutoPostBack="True"
                                            Width="150px" BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                                            <asp:ListItem Text="Class 6A" Value="6A"></asp:ListItem>
                                            <asp:ListItem Text="Class 5A" Value="5A"></asp:ListItem>
                                            <asp:ListItem Text="Class 4A" Value="4A"></asp:ListItem>
                                            <asp:ListItem Text="Class 3A" Value="3A"></asp:ListItem>
                                            <asp:ListItem Text="Class 2A" Value="2A"></asp:ListItem>
                                            <asp:ListItem Text="Class A" Value="A"></asp:ListItem>
                                            <asp:ListItem Text="Class B" Value="B"></asp:ListItem>
                                        </asp:DropDownList>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                                            <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="false" NoMasterRecordsText="No Data" PageSize="500">
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strDisplayFinalRPI" HeaderAbbr="IWasAtTheGame.com RPI (W-L) (SOS Rank)" UniqueName="strDisplayFinalRPI" HeaderText="IWasAtTheGame.com RPI (W-L) (SOS Rank)" 
                                                        AllowFiltering="false" AllowSorting="true" >
                                                        <HeaderStyle Font-Bold="true" />
                                                    </telerik:GridBoundColumn>
                                             </Columns>                        
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>  
                        </asp:Panel>
                    </telerik:LayoutColumn>

                    <telerik:LayoutColumn Span="4" SpanXl="4" SpanLg="4" SpanMd="12" SpanSm="12" SpanXs="12">
                        <asp:Panel ID="Panel1" runat="server" CssClass="grid_wrapper">
                            <asp:Table runat="server" ID="Table1">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" Font-Size="X-Large" Font-Bold="true" Text="SOS - Strength of Schedule"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <telerik:RadGrid ID="RadGrid2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                                            <MasterTableView DataSourceID="SqlDataSource2" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="false" NoMasterRecordsText="No Data" PageSize="500">
                                                <Columns>
                                                    <telerik:GridBoundColumn DataField="strDisplayFinalSOS" HeaderAbbr="IWasAtTheGame.com SOS (W-L) (RPI Rank)" UniqueName="strDisplayFinalSOS" HeaderText="IWasAtTheGame.com SOS (W-L) (RPI Rank)" 
                                                        AllowFiltering="false" AllowSorting="true" >
                                                        <HeaderStyle Font-Bold="true" />
                                                    </telerik:GridBoundColumn>
                                             </Columns>                        
                                            </MasterTableView>
                                        </telerik:RadGrid>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>  
                        </asp:Panel>
                    </telerik:LayoutColumn>


                    <telerik:LayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="12" SpanSm="12" SpanXs="12">
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
        SelectCommand="SELECT TOP 20 strDisplay + ' (' + CAST(SOSRank AS varchar(10)) + ')' AS strDisplayFinalRPI FROM RPI WHERE Class = @class AND Sport = 'FPSoftball' AND DateEnd = '2018-09-28' ORDER BY RPIRank">
        <SelectParameters>
            <asp:ControlParameter ControlID="RadDropDownListClass" Name="class" DefaultValue="A" Type="String" />
        </SelectParameters>  
    </asp:SqlDataSource>   
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT TOP 20 strDisplaySOS + ' (' + CAST(RPIRank AS varchar(10)) + ')' AS strDisplayFinalSOS FROM RPI WHERE Class = @class AND Sport = 'FPSoftball' AND DateEnd = '2018-09-28' ORDER BY SOSRank">
        <SelectParameters>
            <asp:ControlParameter ControlID="RadDropDownListClass" Name="class" DefaultValue="A" Type="String" />
        </SelectParameters>  
    </asp:SqlDataSource> 

</asp:Content>



