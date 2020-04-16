<%@ Page Title="Oklahoma : Football Games" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageBillboard.Master" CodeBehind="GamesFBSeason.aspx.vb" Inherits="TheSportsEngine2017.GamesFBSeason" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/billboard.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server" CssClass="grid_wrapper">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout1">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h1><asp:Label ID="lblOneColumnHeader0" runat="server" Font-Bold="true" Text="" Font-Names="Lalezar"></asp:Label></h1>
                        <h2><asp:Label ID="lblOneColumnDetail0" runat="server" Text="" ForeColor="Black"></asp:Label></h2>
                        <h2><asp:Label ID="lblOneColumnDetail01" runat="server" Text="" ForeColor="Black"></asp:Label></h2>
                        <h2><asp:DropDownList ID="RadDropDownListYear0" runat="server" DataSourceID="SqlDataSourceYears" DataTextField="intYear" DataValueField="intYear" 
                            AutoPostBack="True" DefaultMessage="Select Year..." DropDownHeight="300px" Font-Size="Large"
                            Width="125px" BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;">
                        </asp:DropDownList></h2>
                        <h2><asp:Label ID="lblDetails0" runat="server"></asp:Label></h2>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h1><asp:Label ID="lblOneColumnHeader" runat="server" Font-Bold="true" Text="" ForeColor="Black" Font-Names="Lalezar"></asp:Label></h1>
                        <h2><asp:Label ID="lblOneColumnDetail" runat="server" Text="" ForeColor="Black"></asp:Label></h2>
                        <h2><asp:Label ID="lblOneColumnDetail1" runat="server" Text="" ForeColor="Black"></asp:Label></h2>
                        <h2>
                        <asp:DropDownList ID="RadDropDownListYear1" runat="server" DataSourceID="SqlDataSourceYears" DataTextField="intYear" DataValueField="intYear" 
                            AutoPostBack="True" DefaultMessage="Select Year..." DropDownHeight="300px" Font-Size="Small"
                            Width="125px" BackColor="#ffcc99" Height="30px" Font-Bold="true" Font-Names="Segoe UI,Helvetica,Helvetica Neue,Lucida Grande,Arial,Verdana,Sans-serif;">
                        </asp:DropDownList></h2>
                        <h2><asp:Label ID="lblDetails1" runat="server"></asp:Label></h2>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>
    <asp:SqlDataSource ID="SqlDataSourceYears" runat="server" ConnectionString="<%$ ConnectionStrings:IWATGConnectionString %>" 
        SelectCommand="SELECT DISTINCT intYear FROM IWATGview_Football_Games WHERE strState = @state AND strSchool = @school ORDER BY intYear DESC">
        <SelectParameters>
            <asp:SessionParameter Name="state" SessionField="globalState" DefaultValue="OK" Type="String" />
            <asp:SessionParameter Name="school" SessionField="globalSchool" DefaultValue="DODGERS" Type="String" />
        </SelectParameters>    
    </asp:SqlDataSource> 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="Page1">
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" CssClass="grid_wrapper" HorizontalAlign="Center">
        <asp:PlaceHolder runat="server">
            <% =Session("billboardHTML")%>
      </asp:PlaceHolder>
    </telerik:RadAjaxPanel>
    </div>
</asp:Content>



