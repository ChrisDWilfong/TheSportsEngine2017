﻿Imports Telerik.Web.UI

Partial Class StateThreeP
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL ACTIVE 3+-PEATS THRU 2017-18")
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("3PEATS", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound

    End Sub
End Class