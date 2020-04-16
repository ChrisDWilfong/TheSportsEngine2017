<%@ Page Title="2018 Oklahoma High School Slow Pitch Games" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageSoftball.Master" CodeBehind="SPOD.aspx.vb" Inherits="TheSportsEngine2017.SPOD" %>

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
        <asp:Table runat="server" ID="tblFBOD">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="RadDropDownListClass" runat="server" AutoPostBack="True"
                        Width="150px" BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                        <asp:ListItem Text="Select..." Value="DODGERS"></asp:ListItem>
                        <asp:ListItem Text="Class 6A" Value="SPSoftball6A"></asp:ListItem>
                        <asp:ListItem Text="Class 5A" Value="SPSoftball5A"></asp:ListItem>
                        <asp:ListItem Text="Class 4A" Value="SPSoftball4A"></asp:ListItem>
                        <asp:ListItem Text="Class 3A" Value="SPSoftball3A"></asp:ListItem>
                        <asp:ListItem Text="Class 2A" Value="SPSoftball2A"></asp:ListItem>
                        <asp:ListItem Text="Class A" Value="SPSoftballA"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="false" NoMasterRecordsText="No Data" PageSize="500">
                            <Columns>
                                <telerik:GridBoundColumn DataField="SchoolName" HeaderAbbr="Team" UniqueName="SchoolName" HeaderText="TEAM" 
                                    AllowFiltering="false" AllowSorting="true" >
                                    <HeaderStyle Font-Bold="true" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="strClass" HeaderAbbr="Class" UniqueName="strClass" HeaderText="Class" AllowFiltering="false" AllowSorting="True" Visible="false" >
                                    <HeaderStyle Font-Bold="true" Width="8%" HorizontalAlign="Right" />
                                    <ItemStyle Width="8%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Games" HeaderAbbr="Games" UniqueName="Games" HeaderText="Games" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="8%" HorizontalAlign="Right" />
                                    <ItemStyle Width="8%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="MyScore" HeaderAbbr="Off" UniqueName="MyScore" HeaderText="Off" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="8%" HorizontalAlign="Right" />
                                    <ItemStyle Width="8%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ppgOff" HeaderAbbr="OPPG" UniqueName="ppgOff" HeaderText="OPPG" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="8%" HorizontalAlign="Right" />
                                    <ItemStyle Width="8%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="OppScore" HeaderAbbr="Def" UniqueName="OppScore" HeaderText="Def" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="8%" HorizontalAlign="Right" />
                                    <ItemStyle Width="8%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ppgDef" HeaderAbbr="DPPG" UniqueName="ppgDef" HeaderText="DPPG" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="8%" HorizontalAlign="Right" />
                                    <ItemStyle Width="8%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ppgDiff" HeaderAbbr="DIFF" UniqueName="ppgDiff" HeaderText="DIFF" 
                                    AllowFiltering="false" AllowSorting="true" >
                                    <HeaderStyle Font-Bold="true" Width="10%" HorizontalAlign="Right" />
                                    <ItemStyle Width="10%" HorizontalAlign="Right" />
                                </telerik:GridBoundColumn>
                            </Columns>                        
                        </MasterTableView>
                    </telerik:RadGrid>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>  
    </telerik:RadAjaxPanel>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OSSAARankingsConnectionString %>" 
        SelectCommand="SELECT *, CAST(W AS varchar) + '-' + CAST(L AS varchar) AS WL FROM viewStatsSlowPitchRPGSUM WHERE Games >= 8 AND sportID = @sportID">
        <SelectParameters>
            <asp:ControlParameter ControlID="RadDropDownListClass" Name="sportID" DefaultValue="NONE" />
        </SelectParameters>  
    </asp:SqlDataSource>    

</asp:Content>



