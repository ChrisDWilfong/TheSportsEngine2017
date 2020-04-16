<%@ Page Title="Oklahoma High School Football Games" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootballNOAJAX.Master" CodeBehind="FBScoring15Year.aspx.vb" Inherits="TheSportsEngine2017.FBScoring15Year" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@IWasAtTheGame" />
    <meta name="twitter:title" content="Oklahoma High School Football WL Records Past 15 Seasons" />
    <meta name="twitter:description" content="2019 Oklahoma High School Football W-L Records in the Past 15 Seasons" />
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
        <asp:Table runat="server" ID="tblFBScoring15Year">
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
                                <telerik:GridBoundColumn DataField="lastClass" HeaderAbbr="Class" UniqueName="lastClass" HeaderText="Class" AllowFiltering="false" AllowSorting="true" AutoPostBackOnFilter="true" >
                                    <HeaderStyle Font-Bold="true" Width="15%" HorizontalAlign="Right" />
                                    <ItemStyle Width="15%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="PPG" HeaderAbbr="PPG" UniqueName="PPG" HeaderText="PPG" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="15%" HorizontalAlign="Center" />
                                    <ItemStyle Width="15%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="TotalGames" HeaderAbbr="Games" UniqueName="TotalGames" HeaderText="Games" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="15%" HorizontalAlign="Center" />
                                    <ItemStyle Width="15%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="TotalOffense" HeaderAbbr="Pts" UniqueName="TotalOffense" HeaderText="Points" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="15%" HorizontalAlign="Center" />
                                    <ItemStyle Width="15%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                            </Columns>                        
                        </MasterTableView>
                    </telerik:RadGrid>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>  
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_FootballOffense_15YearsPPG WHERE strState = @state AND lastClass = @cboClass AND Not lastClass Is Null AND TotalGames >= 75 ORDER BY PPG DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter ControlID="RadDropDownListClass" Name="cboClass" DefaultValue="DODGERS" />
        </SelectParameters>    
    </asp:SqlDataSource>    

</asp:Content>



