<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageFootball.Master" CodeBehind="FBProgram.aspx.vb" Inherits="TheSportsEngine2017.FBProgram" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/default.css" rel="stylesheet" />
    <link href="styles/grid.css" rel="stylesheet" />
    <link href="styles/Program.css" rel="Stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadAjaxPanel ID="RadAjaxPanel2" runat="server">
        <asp:Table runat="server" CssClass="tableStyle">
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2" CssClass="gameInfo">
                    GAME INFO
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="teamName">
                    TEAM MASCOT 1
                </asp:TableCell>
                <asp:TableCell CssClass="teamName">
                    TEAM MASCOT 2
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Image runat="server" ImageUrl="~/images/mascots/Jenks.gif"  />
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Image runat="server" ImageUrl="~/images/mascots/Jenks.gif" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="record">
                    TEAM 1 RECORD
                </asp:TableCell>
                <asp:TableCell CssClass="record">
                    TEAM 2 RECORD
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="coachName">
                    TEAM 1 COACH
                </asp:TableCell>
                <asp:TableCell CssClass="coachName">
                    TEAM 2 COACH
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow Height="400px">
                <asp:TableCell CssClass="seasonInfo">
                    YEARLY RESULTS
                </asp:TableCell>
                <asp:TableCell CssClass="seasonInfo">
                    YEARLY RESULTS
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
    </telerik:RadAjaxPanel>
</asp:Content>
