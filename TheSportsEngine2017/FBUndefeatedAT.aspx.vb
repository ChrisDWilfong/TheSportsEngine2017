Imports Telerik.Web.UI

Partial Class FBWinningStreaksAT
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim intTeams As Long = 0

        intTeams = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(*) FROM FootballCoachesStateChampions WHERE State = 'OK' AND Record Like '%-0'")
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL FOOTBALL")
        lblOneColumnDetail.Text = "ALL-TIME UNDEFEATED TEAMS SINCE 1944 (" & intTeams & " TEAMS)"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("FOOTBALLUndAT", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

End Class