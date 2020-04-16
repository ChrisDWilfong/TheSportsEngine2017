<%@ Page Title="Oklahoma High School Fall Baseball" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageBaseball.Master" CodeBehind="BAFStateInfo.aspx.vb" Inherits="TheSportsEngine2017.BAFStateInfo" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="2019 Oklahoma High School Fall Baseball" />
    <meta name="twitter:description" content="2019 Oklahoma High School Fall Baseball Qualifiers" />
    <meta name="twitter:image" content="http://www.iwasatthegame.com/TwitterCards/IWATG_Logo_Baseball_300x400.png" />
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
        <asp:Table runat="server" ID="tblBAF">
            <asp:TableRow HorizontalAlign="Center">
                <asp:TableCell>
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="false" NoMasterRecordsText="Playoffs" PageSize="50">
                            <Columns>
                                <telerik:GridBoundColumn DataField="strSchoolName" HeaderAbbr="Team" UniqueName="strSchoolName" HeaderText="TEAM" 
                                    AllowFiltering="false" AllowSorting="true" >
                                    <HeaderStyle Font-Bold="true" />
                                    <ItemStyle Width="25%" HorizontalAlign="Left" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="strClass" HeaderAbbr="Class" UniqueName="strClass" HeaderText="Class" AllowFiltering="false" AllowSorting="true" >
                                    <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" />
                                    <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="intAppearances" HeaderAbbr="Apppear" UniqueName="intAppearances" HeaderText="Apppear" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Center"  />
                                    <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="intLastYearInPlayoffs" HeaderAbbr="Last" UniqueName="intLastYearInPlayoffs" HeaderText="Last" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Center" />
                                    <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="intW" HeaderAbbr="W" UniqueName="intW" HeaderText="W" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Center" />
                                    <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="intL" HeaderAbbr="L" UniqueName="intL" HeaderText="L" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Center" />
                                    <ItemStyle Width="10%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="intChampionships" HeaderAbbr="Titles" UniqueName="intChampionships" HeaderText="Titles" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Center" />
                                    <ItemStyle Width="7%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="intRunnersUp" HeaderAbbr="RU" UniqueName="intRunnersUp" HeaderText="RU" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Center" />
                                    <ItemStyle Width="7%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                            </Columns>                        
                        </MasterTableView>
                    </telerik:RadGrid>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>  
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_BaseballFall_StateTournamentInfo WHERE strState = @state ORDER BY strClass, strSchoolName">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>    

</asp:Content>



