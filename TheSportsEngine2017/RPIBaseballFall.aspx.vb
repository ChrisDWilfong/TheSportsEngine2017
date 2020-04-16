Imports Telerik.Web.UI

Partial Class RPIBaseballFall

    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
        '    Response.Redirect("http://www.iwasatthegame.com")
        'End If

        Session("globalSport") = "BaseballFall"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL FALL BASEBALL RPI - SOS")
        If Session("globalState") = "" Then Session("globalState") = "OK"

        ' NOTE : change OSSAARankings.viewFootballScores...
        lblOneColumnDetail.Text = "2019 FALL BASEBALL REGULAR SEASON - IWasAtTheGame.com<br>Based on Win %, Opp W% and Opp-Opp W% x 100<br>As of ENTERING PLAYOFFS"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Try
            clsLog.LogEvent("BAFRPI", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListClass.SelectedValue, "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub


End Class