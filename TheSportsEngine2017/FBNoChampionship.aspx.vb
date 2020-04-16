Imports Telerik.Web.UI

Partial Class FBNoChampionship
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "Football"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL PLAYOFF YEARS WITHOUT CHAMPIONSHIP (since 1944)")
        If Session("globalState") = "" Then Session("globalState") = "OK"

        lblOneColumnDetail.Text = "FOOTBALL"

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("FOOTBALL", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

End Class