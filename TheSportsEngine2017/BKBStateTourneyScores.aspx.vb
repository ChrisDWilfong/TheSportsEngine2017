Imports Telerik.Web.UI

Partial Class BKBStatetourneyScores
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        'If Request.UserHostAddress.ToString = "72.198.125.78" Then
        '    clsLog.LogEvent("BASKETBALLBOYSBLOCK", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        '    Response.Redirect("http://www.iwasatthegame.com")        ' Greg Goodrich...
        'End If
        'If Request.UserHostAddress.ToString = "208.114.92.146" Then Response.Redirect("http://www.iwasatthegame.com")        ' 10/17/2017 added...
        'If Request.UserHostAddress.ToString = "208.114.92.163" Then Response.Redirect("http://www.iwasatthegame.com")        ' 2/26/2018 added...
        'If Request.UserHostAddress.ToString = "12.153.246.242" Then Response.Redirect("http://www.iwasatthegame.com")        ' 2/28/2018 added...
        'If Request.UserHostAddress.ToString = "160.3.62.106" Then Response.Redirect("http://www.iwasatthegame.com")        ' 2/28/2018 added...
        'If Request.UserHostAddress.ToString = "64.19.57.11" Then Response.Redirect("http://www.iwasatthegame.com")        ' 3/12/2018 added...
        'If Request.UserHostAddress.ToString = "97.127.237.98" Then Response.Redirect("http://www.iwasatthegame.com")        ' 3/12/2018 added...
        'If Request.UserHostAddress.ToString = "75.30.252.11" Then Response.Redirect("http://www.iwasatthegame.com")        ' 3/12/2018 added...
        'If Request.UserHostAddress.ToString = "12.53.42.226" Then Response.Redirect("http://www.iwasatthegame.com")        ' 3/12/2018 added...
        'If Request.UserHostAddress.ToString = "72.182.7.117" Then Response.Redirect("http://www.iwasatthegame.com")        ' 3/15/2018 added...

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL STATE TOURNAMENT SCORES")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        Session("globalSport") = "BasketballBoys"

        lblOneColumnDetail.Text = "BOYS BASKETBALL" & clsStateChampions.GetSinceFirstYear(Session("globalState"), Session("globalSport"))
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("BASKETBALLBOYS", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListYear.SelectedValue, RadDropDownListClass.SelectedValue, Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub


End Class