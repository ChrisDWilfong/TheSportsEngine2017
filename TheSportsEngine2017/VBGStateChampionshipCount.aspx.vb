﻿Imports Telerik.Web.UI

Partial Class VBGStateChampionshipCount
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'If Session("globalUser") = "" Then
        '    SqlDataSource1.SelectCommand = "SELECT DISTINCT strWinner, CAST(intStateChampionshipCount AS varchar) + ' - ' + strWinner + ' (' + CAST(intLastChampionshipYear AS varchar) + ')' AS strDisplay, intStateChampionshipCount FROM IWATGview_Volleyball_StateChampions WHERE strState = @state AND strSportGenderKey = 'Volleyball' AND intStateChampionshipCount >= 6 ORDER BY intStateChampionshipCount DESC, strWinner"
        'Else
        '    SqlDataSource1.SelectCommand = "SELECT DISTINCT strWinner, CAST(intStateChampionshipCount AS varchar) + ' - ' + strWinner + ' (' + CAST(intLastChampionshipYear AS varchar) + ')' AS strDisplay, intStateChampionshipCount FROM IWATGview_Volleyball_StateChampions WHERE strState = @state AND strSportGenderKey = 'Volleyball' ORDER BY intStateChampionshipCount DESC, strWinner"
        'End If

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE CHAMPIONSHIP COUNT")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "Volleyball"

        lblOneColumnDetail.Text = "VOLLEYBALL" & clsStateChampions.GetSinceFirstYear(Session("globalState"), Session("globalSport"))
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("VOLLEYBALL", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        Dim intCount As Integer = 0

        If (TypeOf e.Item Is GridDataItem AndAlso e.Item.OwnerTableView.DataSourceID = "SqlDataSource1") Then
            Dim lbl As Label = CType(e.Item.FindControl("numberLabel"), Label)
            Try
                intCount = CInt((e.Item.ItemIndex + 1).ToString)
            Catch
            End Try
            If intValue = CLng(e.Item.Cells(4).Text) Then
                ' There is a tie, so show nothing...
            Else
                lbl.Text = (e.Item.ItemIndex + 1).ToString & "&nbsp;"
            End If
            Try
                intValue = CLng(e.Item.Cells(4).Text)
            Catch
            End Try
        End If
    End Sub
End Class