<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageOSSAA.Master" CodeBehind="StateChampionshipsSchool.aspx.vb" Inherits="TheSportsEngine2017.StateChampionshipsSchool" %>

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
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text=""></asp:Label></h3>
                            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                            <!-- Top Banner -->
                            <ins class="adsbygoogle"
                                 style="display:inline-block;width:970px;height:90px"
                                 data-ad-client="ca-pub-6403098483302166"
                                 data-ad-slot="4121249041"></ins>
                            <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                            </script>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper">
        <asp:Table runat="server" ID="tblOSSAAActivities">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="RadDropDownListSchools" runat="server" DataSourceID="SqlDataSourceSchools" DataTextField="strSchool" DataValueField="strSchool" AutoPostBack="True" DefaultMessage="Select School..." DropDownHeight="300px"
                        BackColor="#ffcc99" Height="30px" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="RadDropDownListActivities" runat="server" DataSourceID="SqlDataSourceActivities" DataTextField="strSport1" DataValueField="strSportGenderKey" AutoPostBack="True" DefaultMessage="Select Activity..." DropDownHeight="300px"
                        BackColor="#ffcc99" Height="30px" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" AllowPaging="false" >
                        <HeaderStyle BackColor="#790f0e" />
                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="No Champions, make selection above...">
                            <Columns>
                                <telerik:GridBoundColumn DataField="strDisplayYearClassSport" HeaderAbbr="STATE CHAMPION" UniqueName="strDisplayYearClassSport" HeaderText="STATE CHAMPION" 
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

    <asp:SqlDataSource ID="SqlDataSourceSchools" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM viewStateChampionsDistinctSchools WHERE strState = @state ORDER BY strSchool">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource> 

    <asp:SqlDataSource ID="SqlDataSourceActivities" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT strSport1, strSportGenderKey FROM viewStateChampionsDisplay WHERE strState = @state AND strSchool = @selectedSchool ORDER BY strSport1">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selectedSchool" ControlID="RadDropDownListSchools" PropertyName="SelectedValue" DefaultValue="DODGERS" />
        </SelectParameters>    
    </asp:SqlDataSource> 
    
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM viewStateChampionsDisplay WHERE strState = @state AND strSchool = @selectedSchool AND strSportGenderKey = @selectedSport ORDER BY intYear DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selectedSchool" ControlID="RadDropDownListSchools" PropertyName="SelectedValue" DefaultValue="DODGERS" />
            <asp:ControlParameter Name="selectedSport" ControlID="RadDropDownListActivities" PropertyName="SelectedValue" DefaultValue="DODGERS" />
        </SelectParameters>    
    </asp:SqlDataSource>     

</asp:Content>



