Imports Telerik.Web.UI

Partial Class SBFOD
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Session("globalSport") = "FPSoftball"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL SEASON OFFENSE/DEFENSE")
        If Session("globalState") = "" Then Session("globalState") = "OK"

        ' NOTE : change OSSAARankings.viewFootballScores...
        lblOneColumnDetail.Text = "2018 FAST PITCH SEASON (thru End of Regular Season) - IWasAtTheGame.com"

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("FPSoftballOD", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListClass.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub


End Class