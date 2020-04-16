<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="IStateChampions.Master" CodeBehind="IStateChampions.aspx.vb" Inherits="TheSportsEngine2017.IStateChampions" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<%@ Register src="ucIStateChampions.ascx" tagname="ContentLeftSport" tagprefix="ucIStateChampions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="iwatg.css" rel="stylesheet" type="text/css" />
<table id="Main" align="<% =Session("TableAlign") %>" style="vertical-align:top;" width="700px" height="200px">
    <style type="text/css">
        .pnlCSS{
            font-weight: bold;
            cursor: pointer;
            border: solid 1px #c0c0c0;
            width:150px;
            font-family:Arial;
            font-size:11pt;
            vertical-align: top;
    }
    </style>
        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
            <script>
                 (adsbygoogle = window.adsbygoogle || []).push({
                      google_ad_client: "ca-pub-6403098483302166",
                      enable_page_level_ads: true
                 });
            </script>
    <ajax:ToolkitScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true" EnablePartialRendering="true"></ajax:ToolkitScriptManager>

    <tr align="left" valign="top" id="rowContent">
        <td width="30%" valign="top">
            <asp:Panel ID="panelLeft" runat="server" CssClass="pnlCSS" Width="100%" Height="100%" ScrollBars="none" >
                <div style="background-color: <%=Session("PanelHeaderColor") %>; height:30px;">
                <div style="float:left; color:White; padding:5px 5px 0 0">&nbsp;&nbsp;</div>
                <div style="float:none; color:White; padding:5px 5px 0 0">
                    <asp:Label ID="lblMessageLeft" runat="server" />
                    <asp:Image ID="imgArrowsLeft" runat="server" />
                </div>
                <div style="clear:both"></div>
                </div>
            </asp:Panel>
            <asp:Panel ID="panelLeftCollapsable" runat="server" CssClass="pnlCSS" Width="100%" Height="100%" ScrollBars="None">
                <ucIStateChampions:ContentLeftSport ID="ContentLeft2" runat="server"  />
            </asp:Panel>
        </td>
    </tr>
    <tr id="rowFooter" align="center" valign="top" style="background-color: <%=Session("PanelFooterColor") %>;">
        <td align="center" width="100%">
            <table>
            <tr>
                <td align="left" valign="middle"><asp:Label ID="lblFooter" runat="server" Text="IWasAtTheGame.com" Font-Names="verdana" Font-Size="2px"></asp:Label></td>
            </tr>
            </table>
        </td>
    </tr>

</table>

</asp:Content>

