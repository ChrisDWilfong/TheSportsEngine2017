﻿Imports Telerik.Web.UI

Partial Class ListMascotsCount
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        Me.Page.MetaDescription = "Oklahoma High School Mascots"
        Me.Page.Title = "Oklahoma High School Mascots"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "MASCOTS TOTALS<br>FOR CURRENT OSSAA HIGH SCHOOLS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        Try
            clsLog.LogEvent("LISTMascotsCount", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

End Class