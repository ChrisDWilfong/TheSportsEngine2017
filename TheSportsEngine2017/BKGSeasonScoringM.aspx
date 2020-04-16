<%@ Page Title="Oklahoma High School Basketball Season Scoring" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageBasketball.Master" CodeBehind="BKGSeasonScoringM.aspx.vb" Inherits="TheSportsEngine2017.BKGSeasonScoringM" %>

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
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Text="OKLAHOMA HIGH SCHOOL SEASON Scoring"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text="GIRLS BASKETBALL"></asp:Label></h3>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Text="OKLAHOMA HIGH SCHOOL SEASON Scoring"></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text="GIRLS BASKETBALL"></asp:Label></h3>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1"  runat="server" CssClass="grid_wrapper">
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="RadDropDownListYear" runat="server" DataSourceID="SqlDataSource2" DataTextField="strYear" DataValueField="intYear" AutoPostBack="True" DefaultMessage="Select Year..."
                        Width="125px" BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                         AllowPaging="false" >
                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="Make selection above..." >
                            <Columns>
                              <telerik:GridTemplateColumn UniqueName="TemplateColumn" HeaderText="#">
                                <ItemStyle Font-Size="Small" HorizontalAlign="Right" Width="35px" />
                                <HeaderStyle Font-Size="Small" Font-Bold="true" HorizontalAlign="Center" Width="35px" />
                                <ItemTemplate>
                                  <asp:Label ID="numberLabel" runat="server" Width="20px" />
                                </ItemTemplate>
                                <HeaderStyle Width="35px" />
                              </telerik:GridTemplateColumn>
                            </Columns>
                            <Columns>
                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="Pts - Player (School)" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true"  />
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
            </asp:TableRow>
        </asp:Table>          
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT TOP 25 CAST(intStat AS varchar(10)) + ' - ' + strPlayer + ' (' + strSchool + '-' + strClass + ') ' + CASE WHEN strNotes IS NULL THEN '' ELSE '<br>' + strNotes END AS strDisplay, * FROM tblBasketballStats WHERE strState = @state AND intYear = @selectedYear AND strGender = 'Girls' AND strType = 'POINTS' ORDER BY intStat DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selectedYear" ControlID="RadDropDownListYear" DefaultValue="1900" />
        </SelectParameters>
    </asp:SqlDataSource>   
     
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT intYear, CAST(intYear AS varchar) AS strYear FROM tblBasketballStats WHERE strGender = 'Girls' AND strState = @state ORDER BY intYear DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>    

</asp:Content>



