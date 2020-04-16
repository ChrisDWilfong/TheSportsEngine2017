<%@ Page Title="I Was At The Game" Language="VB" AutoEventWireup="false" MasterPageFile="MasterPage2017.Master" CodeBehind="DefaultLOC.aspx.vb" Inherits="TheSportsEngine2017.DefaultLOC"  %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

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
    <telerik:RadPageLayout runat="server" ID="RadPageLayout2">
        <Rows>
            <telerik:LayoutRow>
                <Columns>
                    <telerik:LayoutColumn Span="12" HiddenXs="true" HiddenSm ="true" SpanMd="12" SpanLg="12" SpanXl="12">
                        <h2>SELECT YOUR STATE</h2>
                        <telerik:RadButton runat="server" ID="cmdOK" Width="200px" Height="200px" Text="OKLAHOMA" NavigateUrl="http://www.iwasatthegame.com"></telerik:RadButton>&nbsp;
                        <telerik:RadButton runat="server" ID="cmdFL" Width="200px" Height="200px" Text="FLORIDA" NavigateUrl="http://fl.ListOfChampions.com"></telerik:RadButton>&nbsp;
                        <telerik:RadButton runat="server" ID="cmdIL" Width="200px" Height="200px" Text="ILLINOIS" NavigateUrl="http://il.ListOfChampions.com"></telerik:RadButton>&nbsp;
                        <telerik:RadButton runat="server" ID="cmdMI" Width="200px" Height="200px" Text="MICHIGAN" NavigateUrl="http://mi.ListOfChampions.com"></telerik:RadButton>&nbsp;
                        <telerik:RadButton runat="server" ID="cmdTX" Width="200px" Height="200px" Text="TEXAS" NavigateUrl="http://tx.ListOfChampions.com"></telerik:RadButton>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="12" SpanXs="12" SpanSm="12" HiddenMd="true" HiddenLg="true" HiddenXl="true">
                        <h2>SELECT YOUR STATE</h2>
                        <telerik:RadButton runat="server" ID="cmdOKm" Width="200px" Height="200px" Text="OKLAHOMA" NavigateUrl="http://www.iwasatthegame.com"></telerik:RadButton>&nbsp;
                        <telerik:RadButton runat="server" ID="cmdFLm" Width="200px" Height="200px" Text="FLORIDA" NavigateUrl="http://fl.ListOfChampions.com"></telerik:RadButton>&nbsp;
                        <telerik:RadButton runat="server" ID="cmdILm" Width="200px" Height="200px" Text="ILLINOIS" NavigateUrl="http://il.ListOfChampions.com"></telerik:RadButton>&nbsp;
                        <telerik:RadButton runat="server" ID="cmdMIm" Width="200px" Height="200px" Text="MICHIGAN" NavigateUrl="http://mi.ListOfChampions.com"></telerik:RadButton>&nbsp;
                        <telerik:RadButton runat="server" ID="cmdTXm" Width="200px" Height="200px" Text="TEXAS" NavigateUrl="http://tx.ListOfChampions.com"></telerik:RadButton>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>
    </telerik:RadPageLayout>
    </telerik:RadAjaxPanel>

</asp:Content>

