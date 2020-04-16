Imports Telerik.Web.UI

Partial Class SBSOD
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "SPSoftball"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL SEASON OFFENSE/DEFENSE")
        If Session("globalState") = "" Then Session("globalState") = "OK"

        ' NOTE : change OSSAARankings.viewFootballScores...
        lblOneColumnDetail.Text = "2019 SLOW PITCH SEASON (min 15 games) - IWasAtTheGame.com"

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("SPSoftballOD", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListClass.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub


End Class