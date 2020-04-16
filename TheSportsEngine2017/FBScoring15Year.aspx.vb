Imports Telerik.Web.UI

Partial Class FBScoring15Year
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "Football"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL TEAM OFFENSE 15 Seasons (2005-2019)")
        If Session("globalState") = "" Then Session("globalState") = "OK"

        Dim strDetail As String
        strDetail = "FOOTBALL<br>"
        strDetail = strDetail & "<a href='FBScoringLastYear.aspx'>Last Season</a>&nbsp;&nbsp;<a href='FBScoring5Year.aspx'>5 Seasons</a>&nbsp;&nbsp;<a href='FBScoring10Year.aspx'>10 Seasons</a>&nbsp;&nbsp;<a href='FBScoring15Year.aspx'>15 Seasons</a>"
        lblOneColumnDetail.Text = strDetail

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("FOOTBALL", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

End Class