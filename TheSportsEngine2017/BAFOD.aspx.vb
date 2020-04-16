Imports Telerik.Web.UI

Partial Class BAFOD
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'If Request.QueryString("key") = "2018" Then
        'Else
        '    Response.Redirect("http://www.iwasatthegame.com")
        'End If

        'If RadDropDownListClass.SelectedValue.Contains("STATE") Then
        '    SqlDataSource1.SelectCommand = "SELECT *, CAST(W AS varchar) + '-' + CAST(L AS varchar) AS WL FROM viewStatsBaseballRPGSUM WHERE Games >= 10 AND sportID = @sportID AND playoffState > 0"
        'Else
        '    SqlDataSource1.SelectCommand = "SELECT *, CAST(W AS varchar) + '-' + CAST(L AS varchar) AS WL FROM viewStatsBaseballRPGSUM WHERE Games >= 10 AND sportID = @sportID"
        'End If

        Session("globalSport") = "BaseballFall"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL SEASON OFFENSE/DEFENSE")
        If Session("globalState") = "" Then Session("globalState") = "OK"

        ' NOTE : change OSSAARankings.viewFootballScores...
        lblOneColumnDetail.Text = "2018 FALL BASEBALL SEASON (thru End of Regular Season) - IWasAtTheGame.com"

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("BaseballFallOD", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListClass.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub


End Class