Imports Telerik.Web.UI

Public Class BKBSeasonScoringM
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("globalUser") = "" Then
        Else
            SqlDataSource1.SelectCommand = "SELECT TOP 50 CAST(intStat AS varchar(10)) + ' - ' + strPlayer + ' (' + strSchool + '-' + strClass + ') ' + CASE WHEN strNotes IS NULL THEN '' ELSE '<br>' + strNotes END AS strDisplay, * FROM tblBasketballStats WHERE strState = @state AND intYear = @selectedYear AND strGender = 'Boys' AND strType = 'POINTS' ORDER BY intStat DESC"
        End If

        lblOneColumnHeader.Text = lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL " & Session("globalYear") & " SEASON Scoring</strong>")
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        Try
            clsLog.LogEvent("BASKETBALLBOYS", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        If (TypeOf e.Item Is GridDataItem AndAlso e.Item.OwnerTableView.DataSourceID = "SqlDataSource1") Then
            Dim lbl As Label = CType(e.Item.FindControl("numberLabel"), Label)
            lbl.Text = (e.Item.ItemIndex + 1).ToString
        End If
    End Sub
End Class