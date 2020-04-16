Imports Telerik.Web.UI

Partial Class FBUndefeated
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "Football"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL SEASON UNDEFEATED TEAMS")
        If Session("globalState") = "" Then Session("globalState") = "OK"

        ' NOTE : change OSSAARankings.viewFootballScores...
        lblOneColumnDetail.Text = "2017 SEASON - FINAL (4 teams)"

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("FOOTBALLUNDEF", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub


End Class