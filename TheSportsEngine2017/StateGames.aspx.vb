Imports Telerik.Web.UI

Partial Class StateGames
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '''''Dim intChampionshipCount As Integer = 0
        Dim strGUID As String = ""

        'If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
        '    Response.Redirect("http://www.iwasatthegame.com")
        'End If

        Session("GUID") = ""
        Session("GUID") = clsFunctions.VerifyString(Request.QueryString("id"))
        Session("globalState") = "OK"
        If Request.QueryString("school") = "" Then
            Session("globalShowAds") = "NO"
            panelAd1.Visible = False
            panelAd2.Visible = False
        Else
            Session("globalShowAds") = "YES"
            panelAd1.Visible = True
            panelAd2.Visible = True
            Session("globalSchool") = clsFunctions.VerifyString(Request.QueryString("school"))
        End If

        Session("globalSport") = clsFunctions.VerifyString(Request.QueryString("sport"))
        If Session("globalSport") = "" Then Session("globalSport") = "BasketballBoys"

        ' Get School Information...
        Dim objSchool As New clsSchoolInfo(Session("globalSchool"), Session("GUID"))
        If objSchool.getSchoolName Is Nothing Then Response.Redirect("http://www.iwasatthegame.com")
        Session("globalType") = objSchool.getTheType
        Session("colorForecolor") = System.Drawing.Color.FromName(objSchool.getForeColor)
        Session("colorForecolorStr") = objSchool.getForeColor
        Session("colorBackground") = objSchool.getBackColor

        lblOneColumnHeader.Text = UCase(objSchool.getSchoolName) & " " & UCase(objSchool.getSchoolMascot)
        Session("schoolMascotGraphic") = "../images/mascots/" & objSchool.getSchoolMascotGraphic

        ' Log page view...
        Dim strHostName As String = Request.UserAgent
        Dim strIP As String = Request.UserHostAddress
        If Session("globalShowAds") = "NO" Then
            clsLog.LogMobileEvent(Session("globalSchool"), Session("GUID"), "StateGames.aspx", strHostName, strIP, Session("globalType"), "")
        End If
        'Session("schoolMascotGraphicOP") = "../images/mascots/" & objSchool.getSchoolMascotGraphicOP
        Select Case Session("globalSport")
            Case "Baseball"
                lblOneColumnDetail.Text = "STATE TOURNEY GAMES - BASEBALL"
            Case "BaseballFall"
                lblOneColumnDetail.Text = "STATE TOURNEY GAMES - FALL BASEBALL"
            Case "BasketballBoys"
                lblOneColumnDetail.Text = "STATE TOURNEY GAMES (Boys Basketball)"
            Case "BasketballGirls"
                lblOneColumnDetail.Text = "STATE TOURNEY GAMES (Girls Basketball)"
            Case "Football"
                lblOneColumnDetail.Text = "STATE PLAYOFF GAMES - FOOTBALL"
            Case "SPSoftball", "SoftballSP"
                lblOneColumnDetail.Text = "STATE TOURNEY GAMES (Slow-Pitch)"
            Case Else
                lblOneColumnDetail.Text = "STATE TOURNEY GAMES"
        End Select

        lblOneColumnDetail1.Text = clsStateChampions.GetAppearancesWL(Session("globalState"), Session("globalSport"), Session("globalSchool"))

        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        lblOneColumnDetail01.Text = lblOneColumnDetail1.Text

        ' Set Text Color...
        lblOneColumnHeader.ForeColor = Session("colorForecolor")
        lblOneColumnDetail.ForeColor = Session("colorForecolor")
        lblOneColumnDetail1.ForeColor = Session("colorForecolor")

        lblOneColumnHeader0.ForeColor = Session("colorForecolor")
        lblOneColumnDetail0.ForeColor = Session("colorForecolor")
        lblOneColumnDetail01.ForeColor = Session("colorForecolor")

        ' Title added 9/5/2017...
        Page.Title = "Oklahoma State Tournament Games : " & Session("globalSchool")

        Dim strSQL As String = clsStateChampions.GetStateGames("OK", Session("globalSport"), Session("globalSchool"), 0)
        Dim strHTML As String = ""

        strHTML = clsStateChampions.GetStateGamesHTML(strSQL, Session("globalSport"), Session("colorForecolorStr"))

        Session("billboardHTML") = strHTML

        Me.Title = Session("globalSchool") & " State Tournament Games"

        Try
            clsLog.LogEvent("StateGames", Me.Page.AppRelativeVirtualPath.ToString, Session("globalSchool"), (Session("globalShowAds") + " - " + Session("globalSport")), Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub BillboardStateChampionships_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit

    End Sub

End Class