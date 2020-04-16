<%@ Page Title="Oklahoma High School State Championships" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPage2017.Master" CodeBehind="StateChampionshipCount.aspx.vb" Inherits="TheSportsEngine2017.StateChampionshipCount" %>

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
    <telerik:RadDropDownList runat="server" ID="cboDecade" AutoPostBack="true" OnSelectedIndexChanged="cboDecade_SelectedIndexChanged" Width="200px">
        <Items>
            <telerik:DropDownListItem Text="ALL CHAMPIONSHIPS" Value="ALL" />
            <telerik:DropDownListItem Text="2010-2019" Value="2010" />
            <telerik:DropDownListItem Text="2000-2009" Value="2000" />
            <telerik:DropDownListItem Text="1990-1999" Value="1990" />
            <telerik:DropDownListItem Text="1980-1989" Value="1980" />
            <telerik:DropDownListItem Text="1970-1979" Value="1970" />
            <telerik:DropDownListItem Text="1960-1969" Value="1960" />
            <telerik:DropDownListItem Text="1950-1959" Value="1950" />
            <telerik:DropDownListItem Text="1940-1949" Value="1940" />
            <telerik:DropDownListItem Text="1930-1939" Value="1930" />
            <telerik:DropDownListItem Text="1920-1929" Value="1920" />
            <telerik:DropDownListItem Text="1918-1919" Value="1918" />
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
                                <telerik:GridBoundColumn DataField="strDisplay" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="Titles - School (Last championship)" 
                                    AllowFiltering="false" AllowSorting="false" >
                                    <HeaderStyle Font-Bold="true" />
                                </telerik:GridBoundColumn>
                            </Columns>                        
                            <Columns>
                                <telerik:GridBoundColumn DataField="intStateChampionshipCount" HeaderAbbr="" UniqueName="intStateChampionshipCount" HeaderText="" 
                                    AllowFiltering="false" AllowSorting="false" Display="false" >
                                </telerik:GridBoundColumn>
                            </Columns>
                        </MasterTableView>
                    </telerik:RadGrid> 
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT TOP (100) PERCENT COUNT(Id) AS intStateChampionshipCount, strSchool, CAST(COUNT(Id) AS varchar) + ' - ' + strSchool AS strDisplay FROM tblStateChampions WHERE (strState = 'OK') AND (intYear >= 1918) AND (intYear <= 2019) AND (ysnSport = 1) GROUP BY strSchool HAVING (COUNT(Id) >= 15) ORDER BY intStateChampionshipCount DESC, strSchool">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>    
</asp:Content>



