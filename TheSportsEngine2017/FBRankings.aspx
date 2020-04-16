<%@ Page Title="Oklahoma High School Football Rankings #GotHSFBRankings?" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootball.Master" CodeBehind="FBRankings.aspx.vb" Inherits="TheSportsEngine2017.FBRankings" %>

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
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text=""></asp:Label></h3>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text=""></asp:Label></h3>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper">
        <asp:Table runat="server" ID="tblFBRankings" Width="1040px" Style="margin-left:-20px;">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="4">
                    <telerik:RadDropDownList ID="RadDropDownListClass" runat="server" DataSourceID="SqlDataSourceClass" DataTextField="strClass" DataValueField="strClass" 
                        AutoPostBack="True" DefaultMessage="Select Class..." DropDownHeight="125px">
                    </telerik:RadDropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="4">
                    <asp:Label ID="lblSeasonInfo" runat="server" Font-Size="Large" Font-Bold="true"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="25%" VerticalAlign="top">
                    <telerik:RadGrid ID="RadGrid4" runat="server" AllowFilteringByColumn="True" AllowSorting="false" AutoGenerateColumns="False" DataSourceID="SqlDataSourceRankings1" AllowPaging="false" >
                        <MasterTableView DataSourceID="SqlDataSourceRankings4" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" >
                            <Columns>
                              <telerik:GridTemplateColumn UniqueName="TemplateColumn" HeaderText="#">
                                <ItemStyle  HorizontalAlign="Right" Width="35px" />
                                <HeaderStyle Font-Bold="true" HorizontalAlign="Center" Width="35px" ForeColor="Yellow" />
                                <ItemTemplate>
                                  <asp:Label ID="numberLabel" runat="server" Width="20px" />
                                </ItemTemplate>
                              </telerik:GridTemplateColumn>
                            </Columns>
                            <Columns>
                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="COMBINED (POINTS)" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true" ForeColor="Yellow" />
                                </telerik:GridBoundColumn>
                            </Columns>   
                            <Columns>
                                <telerik:GridBoundColumn DataField="intPoints" HeaderAbbr="" UniqueName="intPoints" HeaderText="" 
                                    AllowFiltering="false" AllowSorting="false" Display="false" >
                                </telerik:GridBoundColumn>
                            </Columns>                                                 
                        </MasterTableView>
                    </telerik:RadGrid>
                </asp:TableCell>
                <asp:TableCell Width="25%" VerticalAlign="top">
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="false" AutoGenerateColumns="False" DataSourceID="SqlDataSourceRankings1" AllowPaging="false" >
                        <MasterTableView DataSourceID="SqlDataSourceRankings1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" >
                            <Columns>
                                <telerik:GridBoundColumn DataField="intRanking" HeaderAbbr="" UniqueName="intRanking" HeaderText="" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <ItemStyle  HorizontalAlign="Right" Width="35px" />
                                    <HeaderStyle Width="35px" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="NewsOK.com" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true" />
                                </telerik:GridBoundColumn>
                            </Columns>                        
                        </MasterTableView>
                    </telerik:RadGrid>
                </asp:TableCell>
                <asp:TableCell Width="25%" VerticalAlign="top">
                    <telerik:RadGrid ID="RadGrid2" runat="server" AllowFilteringByColumn="True" AllowSorting="false" AutoGenerateColumns="False" DataSourceID="SqlDataSourceRankings1" AllowPaging="false" >
                        <MasterTableView DataSourceID="SqlDataSourceRankings2" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" >
                            <Columns>
                                <telerik:GridBoundColumn DataField="intRanking" HeaderAbbr="" UniqueName="intRanking" HeaderText="" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <ItemStyle  HorizontalAlign="Right" Width="35px" />
                                    <HeaderStyle Width="35px" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="Tulsa World" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true" />
                                </telerik:GridBoundColumn>
                            </Columns>                        
                        </MasterTableView>
                    </telerik:RadGrid>
                </asp:TableCell>
                <asp:TableCell Width="25%" VerticalAlign="top">
                    <telerik:RadGrid ID="RadGrid3" runat="server" AllowFilteringByColumn="True" AllowSorting="false" AutoGenerateColumns="False" DataSourceID="SqlDataSourceRankings1" AllowPaging="false" >
                        <MasterTableView DataSourceID="SqlDataSourceRankings3" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" >
                            <Columns>
                                <telerik:GridBoundColumn DataField="intRanking" HeaderAbbr="" UniqueName="intRanking" HeaderText="" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <ItemStyle  HorizontalAlign="Right" Width="35px" />
                                    <HeaderStyle Width="35px" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="Vype.com" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true" />
                                </telerik:GridBoundColumn>
                            </Columns>                        
                        </MasterTableView>
                    </telerik:RadGrid>
                </asp:TableCell>

            </asp:TableRow>
        </asp:Table>  
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSourceRankings1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT *, intRDOK_Week08 AS intRanking, strTeam + ' (' + CAST(intW_Week08 AS varchar) + '-' + CAST(intL_Week08 AS varchar) + ')' AS strDisplay FROM tblFootballRankings WHERE strState = @state AND intYear = 18 AND intRDOK_Week08 > 0 AND strClass = @selectedClass ORDER BY intRDOK_Week08">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selectedClass" ControlID="RadDropDownListClass" DefaultValue="NONE" />
        </SelectParameters>    
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSourceRankings2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT *, intRTW_Week08 AS intRanking, strTeam + ' (' + CAST(intW_Week08 AS varchar) + '-' + CAST(intL_Week08 AS varchar) + ')' AS strDisplay FROM tblFootballRankings WHERE strState = @state AND intYear = 18 AND intRTW_Week08 > 0 AND strClass = @selectedClass ORDER BY intRTW_Week08">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selectedClass" ControlID="RadDropDownListClass" DefaultValue="NONE" />
        </SelectParameters>    
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSourceRankings3" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT *, intR3_Week08 AS intRanking, strTeam + ' (' + CAST(intW_Week08 AS varchar) + '-' + CAST(intL_Week08 AS varchar) + ')' AS strDisplay FROM tblFootballRankings WHERE strState = @state AND intYear = 18 AND intR3_Week08 > 0 AND strClass = @selectedClass ORDER BY intR3_Week08">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selectedClass" ControlID="RadDropDownListClass" DefaultValue="NONE" />
        </SelectParameters>    
    </asp:SqlDataSource>  
    <asp:SqlDataSource ID="SqlDataSourceRankings4" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT *, intRSUM_Week08 AS intRanking, intRSUM_Week08 AS intPoints, strTeam + ' (' + CAST(intRSUM_Week08 AS varchar) + ')' AS strDisplay FROM tblFootballRankings WHERE strState = @state AND intYear = 18 AND intRSUM_Week08 > 0 AND strClass = @selectedClass ORDER BY intRSUM_Week08 DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selectedClass" ControlID="RadDropDownListClass" DefaultValue="NONE" />
       </SelectParameters>    
    </asp:SqlDataSource>  

    <asp:SqlDataSource ID="SqlDataSourceClass" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT strClass, sortFootball FROM tblSportsClasses WHERE sortFootball > 0 ORDER BY sortFootball">
    </asp:SqlDataSource> 

</asp:Content>



