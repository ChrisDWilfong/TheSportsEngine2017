Imports Telerik.Web.UI

Partial Class TKStateChampionsIYear
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE CHAMPIONS")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "Track"

        lblOneColumnDetail.Text = "TRACK (BOYS and GIRLS)" & clsStateChampions.GetSinceFirstYear(Session("globalState"), Session("globalSport"))
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("TRACK", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListYear.SelectedValue, RadDropDownListEvent.SelectedValue, Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub


End Class