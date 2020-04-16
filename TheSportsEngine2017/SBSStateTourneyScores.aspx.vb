Imports Telerik.Web.UI

Partial Class SBSStateTourneyScores
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Request.UserHostAddress.ToString = "72.198.125.78" Then
            clsLog.LogEvent("SPBLOCK", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListYear.SelectedValue, RadDropDownListClass.SelectedValue, Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
            Response.Redirect("http://www.iwasatthegame.com")        ' Greg Goodrich...
        End If

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE TOURNAMENT SCORES")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "SPSoftball"

        lblOneColumnDetail.Text = "SLOW PITCH SOFTBALL" & clsStateChampions.GetSinceFirstYear(Session("globalState"), Session("globalSport"))
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("SLOWPITCH", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListYear.SelectedValue, RadDropDownListClass.SelectedValue, Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub


End Class