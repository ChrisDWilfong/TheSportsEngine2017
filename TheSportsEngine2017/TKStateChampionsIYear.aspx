﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageTrack.Master" CodeBehind="TKStateChampionsIYear.aspx.vb" Inherits="TheSportsEngine2017.TKStateChampionsIYear" %>

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
        <asp:Table runat="server" ID="tblBKBStateTourneyScores">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:DropDownList ID="RadDropDownListYear" runat="server" DataSourceID="SqlDataSource2" DataTextField="strYear" DataValueField="intYear" AutoPostBack="True" DefaultMessage="Select Year..."
                        Width="125px" BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;" Font-Size="16px">
                    </asp:DropDownList>
                    &nbsp;
                    <telerik:RadDropDownList ID="RadDropDownListEvent" runat="server" DataSourceID="SqlDataSource3" DataTextField="strEventName" DataValueField="strEvent" AutoPostBack="True" DefaultMessage="Select Event...">
                    </telerik:RadDropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <telerik:RadGrid ID="RadGrid1" runat="server" AllowFilteringByColumn="True" AllowSorting="True" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" AllowPaging="false" >
                        <MasterTableView DataSourceID="SqlDataSource1" TableLayout="Fixed" AllowSorting="false" AllowFilteringByColumn="false" NoMasterRecordsText="Make selections above...">
                            <Columns>
                                <telerik:GridBoundColumn DataField="strDisplayYear" HeaderAbbr="Team" UniqueName="strDisplayYear" HeaderText="STATE CHAMPIONS" 
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
        SelectCommand="SELECT * FROM IWATGview_Track_StateChampionsIndividuals WHERE strState = @state AND strEvent = @selectedEvent AND intYear = @selectedYear ORDER BY strGender, intSortEvent, intSortClass">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selectedYear" ControlID="RadDropDownListYear" DefaultValue="1900" />
            <asp:ControlParameter Name="selectedEvent" ControlID="RadDropDownListEvent" DefaultValue="NONE" />
        </SelectParameters>    
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT intYear, CAST(intYear AS varchar) AS strYear FROM IWATGview_Track_StateChampionsIndividuals WHERE strState = @state ORDER BY intYear DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource>    

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT strEvent, strEventName, intSortEvent FROM IWATGview_Track_StateChampionsIndividuals WHERE strState = @state AND intYear = @selYear ORDER BY intSortEvent">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:ControlParameter Name="selYear" ControlID="RadDropDownListYear" DefaultValue="1900" />
        </SelectParameters>    
    </asp:SqlDataSource>    

</asp:Content>



