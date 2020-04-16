<%@ Page Title="2018 Oklahoma High School Football Games" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootballNOAJAX.Master" CodeBehind="FBOD.aspx.vb" Inherits="TheSportsEngine2017.FBOD" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Football Offense/Defense" />
    <meta name="twitter:description" content="2019 Offense/Defense for Oklahoma High School Football" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/IWATG_Logo_Football.png" />
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
        <asp:Table runat="server" ID="tblFBOD">
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
                        <asp:ListItem Text="Class C" Value="C"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="false" NoMasterRecordsText="No Records" PageSize="500">
                            <Columns>
                                <telerik:GridBoundColumn DataField="strSchool" HeaderAbbr="Team" UniqueName="strSchool" HeaderText="TEAM" 
                                    AllowFiltering="false" AllowSorting="true" >
                                    <HeaderStyle Font-Bold="true" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="WL" HeaderAbbr="W-L" UniqueName="WL" HeaderText="W-L" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="12%" HorizontalAlign="Right" />
                                    <ItemStyle Width="12%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="sumOff" HeaderAbbr="Off" UniqueName="sumOff" HeaderText="Off" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="12%" HorizontalAlign="Right" />
                                    <ItemStyle Width="12%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ppgOff" HeaderAbbr="OPPG" UniqueName="ppgOff" HeaderText="OPPG" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="12%" HorizontalAlign="Right" />
                                    <ItemStyle Width="12%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="sumDef" HeaderAbbr="Def" UniqueName="sumDef" HeaderText="Def" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="12%" HorizontalAlign="Right" />
                                    <ItemStyle Width="12%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ppgDef" HeaderAbbr="DPPG" UniqueName="ppgDef" HeaderText="DPPG" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="12%" HorizontalAlign="Right" />
                                    <ItemStyle Width="12%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ppgDiff" HeaderAbbr="DIFF" UniqueName="ppgDiff" HeaderText="DIFF" 
                                    AllowFiltering="false" AllowSorting="true" >
                                    <HeaderStyle Font-Bold="true" Width="12%" HorizontalAlign="Right" />
                                    <ItemStyle Width="12%" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                            </Columns>                        
                        </MasterTableView>
                    </telerik:RadGrid>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                    <!-- 300x600 Ad -->
                    <ins class="adsbygoogle"
                         style="display:inline-block;width:300px;height:600px"
                         data-ad-client="ca-pub-6403098483302166"
                         data-ad-slot="6996083575"></ins>
                    <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>  
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OSSAARankingsConnectionString %>" 
        SelectCommand="SELECT *, CAST(sumWins AS varchar) + '-' + CAST(sumLosses AS varchar) AS WL FROM viewFootballScoresSUM WHERE strClass = @sportID AND (sumLosses + sumWins) > 7 ORDER BY strSchool">
        <SelectParameters>
            <asp:ControlParameter ControlID="RadDropDownListClass" Name="sportID" DefaultValue="Football6A" Type="String" />
        </SelectParameters>  
    </asp:SqlDataSource>    

</asp:Content>



