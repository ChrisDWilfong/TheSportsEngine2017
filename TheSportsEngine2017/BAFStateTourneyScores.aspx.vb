Imports Telerik.Web.UI

Partial Class BAFStateTourneyScores
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        'If Request.UserHostAddress.ToString = "72.198.125.78" Then
        '    clsLog.LogEvent("BASEBALLFALLBLOCK", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListYear.SelectedValue, RadDropDownListClass.SelectedValue, Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        '    Response.Redirect("http://www.iwasatthegame.com")        ' Greg Goodrich...
        'End If
        'If Request.UserHostAddress.ToString = "208.114.92.163" Then Response.Redirect("http://www.iwasatthegame.com")        ' 2/26/2018 added...
        'If Request.UserHostAddress.ToString = "64.19.57.11" Then Response.Redirect("http://www.iwasatthegame.com")        ' 3/12/2018 added...

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE TOURNAMENT SCORES")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "BaseballFall"

        Select Case Session("globalState")
            Case "OK"
                Page.Title = "Oklahoma High School Fall Baseball Playoff Scores"
            Case Else
                Page.Title = "High School Fall Baseball Playoff Scores"
        End Select

        lblOneColumnDetail.Text = "FALL BASEBALL " & clsStateChampions.GetSinceFirstYear(Session("globalState"), Session("globalSport"))
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("BASEBALLFALL", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListYear.SelectedValue, RadDropDownListClass.SelectedValue, Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub


End Class