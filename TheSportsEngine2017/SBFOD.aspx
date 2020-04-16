<%@ Page Title="2018 Oklahoma High School Fast Pitch Games" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageSoftballNOAJAX.Master" CodeBehind="SBFOD.aspx.vb" Inherits="TheSportsEngine2017.SBFOD" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="RadAjaxPanel12" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h3><asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail0" runat="server" Text=""></asp:Label></h3>
                        <div style="text-align:center;">
                        <asp:Label ID="lblOneColumnDetail00" runat="server" Text="Click ORPG, DRPG and DIFF to sort list" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="X-Large" Font-Bold="true"></asp:Label>
                        </div>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h3><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text=""></asp:Label><br />
                        <asp:Label ID="lblOneColumnDetail" runat="server" Text=""></asp:Label></h3>
                        <div style="text-align:center;">
                        <asp:Label ID="lblOneColumnDetail1" runat="server" Text="Click ORPG, DRPG and DIFF to sort list" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="X-Large" Font-Bold="true"></asp:Label>
                        </div>
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
                    <telerik:LayoutColumn Span="3" SpanXl="3" SpanLg="3" SpanMd="12" SpanSm="12" SpanXs="12">
                        &nbsp;
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="6" SpanXl="6" SpanLg="6" SpanMd="12" SpanSm="12" SpanXs="12">
                        <asp:Panel ID="RadAjaxPanel100" runat="server" CssClass="grid_wrapper">
        <asp:Table runat="server" ID="tblBAFOD">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="RadDropDownListClass" runat="server" AutoPostBack="True"
                        Width="150px" BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                        <asp:ListItem Text="Class 6A" Value="FPSoftball6A"></asp:ListItem>
                        <asp:ListItem Text="Class 5A" Value="FPSoftball5A"></asp:ListItem>
                        <asp:ListItem Text="Class 4A" Value="FPSoftball4A"></asp:ListItem>
                        <asp:ListItem Text="Class 3A" Value="FPSoftball3A"></asp:ListItem>
                        <asp:ListItem Text="Class 2A" Value="FPSoftball2A"></asp:ListItem>
                        <asp:ListItem Text="Class A" Value="FPSoftballA"></asp:ListItem>
                        <asp:ListItem Text="Class B" Value="FPSoftballB"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="true" >
                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="true" AllowFilteringByColumn="false" NoMasterRecordsText="No Data" PageSize="500">
                            <Columns>
                                <telerik:GridBoundColumn DataField="schoolWL" HeaderAbbr="Team" UniqueName="SchoolName" HeaderText="TEAM" 
                                    AllowFiltering="false" AllowSorting="true" >
                                    <HeaderStyle Font-Bold="true" />
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="strClass" HeaderAbbr="Class" UniqueName="strClass" HeaderText="Class" AllowFiltering="false" AllowSorting="True" Visible="false" >
                                    <HeaderStyle Font-Bold="true" Width="8%" HorizontalAlign="Right" />
                                    <ItemStyle Width="8%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="Games" HeaderAbbr="Games" UniqueName="Games" HeaderText="Games" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="15%" HorizontalAlign="Right" />
                                    <ItemStyle Width="8%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="MyScore" HeaderAbbr="Off" UniqueName="MyScore" HeaderText="Off" AllowFiltering="false" AllowSorting="True" Visible="false" >
                                    <HeaderStyle Font-Bold="true" Width="8%" HorizontalAlign="Right" />
                                    <ItemStyle Width="8%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ppgOff" HeaderAbbr="ORPG" UniqueName="ppgOff" HeaderText="ORPG" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="15%" HorizontalAlign="Right" />
                                    <ItemStyle Width="8%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="OppScore" HeaderAbbr="Def" UniqueName="OppScore" HeaderText="Def" AllowFiltering="false" AllowSorting="True" Visible="false" >
                                    <HeaderStyle Font-Bold="true" Width="8%" HorizontalAlign="Right" />
                                    <ItemStyle Width="8%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ppgDef" HeaderAbbr="DRPG" UniqueName="ppgDef" HeaderText="DRPG" AllowFiltering="false" AllowSorting="True" >
                                    <HeaderStyle Font-Bold="true" Width="15%" HorizontalAlign="Right" />
                                    <ItemStyle Width="8%" HorizontalAlign="Right"/>
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="ppgDiff" HeaderAbbr="DIFF" UniqueName="ppgDiff" HeaderText="DIFF" 
                                    AllowFiltering="false" AllowSorting="true" >
                                    <HeaderStyle Font-Bold="true" Width="15%" HorizontalAlign="Right" />
                                    <ItemStyle Width="10%" HorizontalAlign="Right" />
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
                        &nbsp;
                    </telerik:LayoutColumn>
    </Columns>
    </telerik:LayoutRow>
    </Rows>
    </telerik:RadPageLayout>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OSSAARankingsConnectionString %>" 
        SelectCommand="SELECT *, SchoolName + ' (' + CAST(W AS varchar) + '-' + CAST(L AS varchar) + ')' AS schoolWL, CAST(W AS varchar) + '-' + CAST(L AS varchar) AS WL FROM viewStatsFastPitchRPGSUM WHERE Games >= 9 AND sportID = @sportID ORDER BY ppgOff DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="RadDropDownListClass" Name="sportID" DefaultValue="BaseballFallA" Type="String" />
  
        </SelectParameters>  
    </asp:SqlDataSource>    

</asp:Content>



