﻿<%@ Page Title="Trae Young Atlanta Hawks" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageBasketballPhoto.Master" CodeBehind="TraeYoung.aspx.vb" Inherits="TheSportsEngine2017.TraeYoung" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/ButtonsAnd.css" rel="stylesheet" />
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

<telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" HorizontalAlign="Center">
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">  
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="12" SpanSm="12" SpanXs="12" SpanMd="12" SpanLg="12" SpanXl="12">
                        <Content>
                            <asp:HyperLink runat="server" Text="IWasAtTheGame BLOG" NavigateUrl="Blog.aspx" CssClass="button orange" Font-Size="Large" ForeColor="White" Width="300px"></asp:HyperLink>&nbsp;&nbsp;
                            <asp:HyperLink runat="server" Text="State Championships by School" NavigateUrl="StateChampionshipsBySchool.aspx" CssClass="button orange" Font-Size="Large" ForeColor="White" Width="300px"></asp:HyperLink><br />
                        </Content>
                    </telerik:CompositeLayoutColumn>
                </Columns>
                <Columns>
                    <telerik:CompositeLayoutColumn Span="12" SpanSm="12" SpanXs="12" SpanMd="12" SpanLg="12" SpanXl="12">
                        <Content><img src="docs/OK/TraeYoungByTheNumbersWeb50.png" width="900px" /></Content>
                    </telerik:CompositeLayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
</telerik:RadAjaxPanel>

</asp:Content>

