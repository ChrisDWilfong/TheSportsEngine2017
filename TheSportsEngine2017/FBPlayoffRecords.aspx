<%@ Page Title="Oklahoma High School Football Playoff All-Time Records" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootball.Master" CodeBehind="FBPlayoffRecords.aspx.vb" Inherits="TheSportsEngine2017.FBPlayoffRecords" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Football Playoffs" />
    <meta name="twitter:description" content="ALL-TIME Individual OSSAA Football Playoff Game Records (since 1944)" />
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
        <telerik:RadDropDownList ID="RadDropDownListCategory" runat="server" AutoPostBack="true" Width="300px">
            <Items>
                <telerik:DropDownListItem Value="NONE" Text="Select..." />
                <telerik:DropDownListItem Value="GAMEPASS" Text="Passing Yards (Game)" />
                <telerik:DropDownListItem Value="GAMERUSH" Text="Rushing Yards (Game)" />
                <telerik:DropDownListItem Value="GAMEREC" Text="Receiving Yards (Game)" />
            </Items>
        </telerik:RadDropDownList>
        <br />
        <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                         AllowPaging="false" >
                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false">
                            <Columns>
                              <telerik:GridTemplateColumn UniqueName="TemplateColumn" HeaderText="#">
                                <ItemStyle  HorizontalAlign="Right" Width="35px" />
                                <HeaderStyle Font-Bold="true" HorizontalAlign="Center" Width="35px" />
                                <ItemTemplate>
                                  <asp:Label ID="numberLabel" runat="server" Width="20px" />
                                </ItemTemplate>
                                <HeaderStyle Width="35px" />
                              </telerik:GridTemplateColumn>
                            </Columns>
                            <Columns>
                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="YARDS : PLAYER (TEAM-CLASS) - YEAR" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true" />
                                </telerik:GridBoundColumn>
                            </Columns>                        
                            <Columns>
                                <telerik:GridBoundColumn DataField="intYards" HeaderAbbr="" UniqueName="intYards" HeaderText="" 
                                    AllowFiltering="false" AllowSorting="false" Display="false" >
                                </telerik:GridBoundColumn>
                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid> 
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT strState, intYards, CAST(intYards as varchar) + ' : ' + strLastName + ', ' + strFirstName + ' (' + strSchool + '-' + strClass + ') - ' + CAST(intYear AS varchar) + CASE WHEN Not intTD Is Null THEN ' (' + CAST(intTD AS varchar) + ' TDs)' ELSE '' END AS strDisplay FROM tblStateRecordsFootball WHERE strState = @state AND strType = @selectedCategory AND strSeason = 'PLAYOFFS' ORDER BY intYards DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selectedCategory" ControlID="RadDropDownListCategory" PropertyName="SelectedValue" DefaultValue="DODGERS" />
        </SelectParameters>    
    </asp:SqlDataSource>    
</asp:Content>



