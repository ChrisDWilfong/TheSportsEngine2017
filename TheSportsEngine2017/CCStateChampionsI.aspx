﻿<%@ Page Title="Oklahoma High School Cross Country State Champions" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageTrack.Master" CodeBehind="CCStateChampionsI.aspx.vb" Inherits="TheSportsEngine2017.CCStateChampionsI" %>

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
        <asp:Table runat="server" ID="tblCCIndividual">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="RadDropDownListSchool" runat="server" DataSourceID="SqlDataSource2" DataTextField="strSchool" DataValueField="strSchool" 
                        AutoPostBack="True" DefaultMessage="Select School..." DropDownHeight="250px"
                        BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="false" >
                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="Make selection above...">
                            <Columns>
                                <telerik:GridBoundColumn DataField="strDisplayGender" HeaderAbbr="Team" UniqueName="strDisplay" HeaderText="CROSS COUNTRY STATE CHAMPIONS" 
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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT * FROM IWATGview_CrossCountry_StateChampionsIndividuals WHERE strState = @state AND strSchool = @selectedSchool ORDER BY intYear DESC, intSortClass">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selectedSchool" ControlID="RadDropDownListSchool" DefaultValue="DODGERS" />
        </SelectParameters>    
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT strSchool FROM IWATGview_CrossCountry_StateChampionsIndividuals WHERE strState = @state ORDER BY strSchool">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>    

</asp:Content>



