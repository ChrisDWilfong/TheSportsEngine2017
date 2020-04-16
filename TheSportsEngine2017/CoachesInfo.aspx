<%@ Page Title="IWasAtTheGame.com Coaches Info" Language="vb" AutoEventWireup="false" MasterPageFile="MasterPageCoachesInfo.Master" CodeBehind="CoachesInfo.aspx.vb" Inherits="TheSportsEngine2017.CoachesInfo" %>

<asp:Content ID="Content0" ContentPlaceHolderID="head" Runat="Server">
    <link href="styles/TD.css" rel="stylesheet" />
    <script src="~/js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="~/js/jquery.spinner.js" type="text/javascript"></script>
    <script type="text/javascript" src="~/js/forms/jquery.validate.min.js"></script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="#page-wrapper">
        <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server">
            <h1><telerik:RadLabel runat="server" ID="lblCoachName"></telerik:RadLabel></h1>
        </telerik:RadAjaxPanel>
    </div>
</asp:Content>



