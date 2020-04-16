Imports Telerik.Web.UI

Partial Class StateIndividuals
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '''''Dim intChampionshipCount As Integer = 0
        Dim strGUID As String = ""

        Session("GUID") = ""
        Session("GUID") = clsFunctions.VerifyString(Request.QueryString("id"))
        Session("globalSchool") = clsFunctions.VerifyString(Request.QueryString("school"))
        Session("globalState") = "OK"

        If Request.QueryString("school") = "" Then
            Session("globalShowAds") = "NO"
            panelAd1.Visible = False
            panelAd2.Visible = False
        Else
            Session("globalSchool") = Request.QueryString("school")
            Session("globalShowAds") = "YES"
            panelAd1.Visible = True
            panelAd2.Visible = True
        End If

        Session("globalSport") = clsFunctions.VerifyString(Request.QueryString("sport"))
        If Session("globalSport") = "" Then Session("globalSport") = "CrossCountryBoys"

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
            clsLog.LogMobileEvent(Session("globalSchool"), Session("GUID"), "StateIndividuals.aspx", strHostName, strIP, Session("globalType"), "")
        End If
        'Session("schoolMascotGraphicOP") = "../images/mascots/" & objSchool.getSchoolMascotGraphicOP
        Select Case Session("globalSport")
            Case "CrossCountry", "CrossCountryBoys", "CrossCountryGirls"
                lblOneColumnDetail.Text = "STATE CROSS COUNTRY INDIVIDUAL CHAMPIONS"
            Case "Swimming", "SwimmingBoys", "SwimmingGirls"
                lblOneColumnDetail.Text = "STATE SWIMMING INDIVIDUAL CHAMPIONS"
            Case "Tennis", "TennisBoys", "TennisGirls"
                lblOneColumnDetail.Text = "STATE TENNIS INDIVIDUAL CHAMPIONS"
            Case "Track", "TrackBoys", "TrackGirls"
                lblOneColumnDetail.Text = "STATE TRACK INDIVIDUAL CHAMPIONS"
            Case "Golf", "GolfBoys", "GolfGirls"
                lblOneColumnDetail.Text = "STATE GOLF INDIVIDUAL CHAMPIONS"
            Case "Wresting"
                lblOneColumnDetail.Text = "STATE WRESTLING INDIVIDUAL CHAMPIONS"
            Case Else
                lblOneColumnDetail.Text = "STATE INDIVIDUAL CHAMPIONS"
        End Select

        'lblOneColumnDetail1.Text = clsStateChampions.GetAppearancesWL(Session("globalState"), Session("globalSport"), Session("globalSchool"))

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

        Dim strSQL As String = clsStateChampions.GetStateIndividuals("OK", Session("globalSport"), Session("globalSchool"))
        Dim ds As DataSet
        Dim x As Integer
        Dim strHTML As String = ""
        Dim intYear As Integer = 0

        If strSQL = "" Then
            strHTML = "<table style='width:95%;'><tr><td><bbH1>No Champions</bbH1></td></tr>"
        Else
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
            If ds Is Nothing Then
                strHTML = "<table style='width:95%;'><tr><td><bbH1><span style='color:" & Session("colorForecolorStr") & ";'>No Champions</span></bbH1></td></tr>"
            ElseIf ds.Tables.Count = 0 Then
                strHTML = "<table style='width:95%;'><tr><td><bbH1><span style='color:" & Session("colorForecolorStr") & ";'>No Champions</span></bbH1></td></tr>"
            ElseIf ds.Tables(0).Rows.Count = 0 Then
                strHTML = "<table style='width:95%;'><tr><td><bbH1><span style='color:" & Session("colorForecolorStr") & ";'>No Champions</span></bbH1></td></tr>"
            Else
                strHTML = "<table style='width:95%;'>"
                For x = 0 To ds.Tables(0).Rows.Count - 1
                    With ds.Tables(0).Rows(x)
                        strHTML = strHTML & "<tr>"
                        If intYear = CInt(.Item("intYear")) Then
                        Else
                            strHTML = strHTML & "<tr><td colspan=2><hr></td></tr>"
                        End If
                        strHTML = strHTML & "<td style='width:25%;text-align:left;color:" & Session("colorForecolorStr") & "'>"
                        If intYear = CInt(.Item("intYear")) Then
                            strHTML = strHTML & "&nbsp;"
                        Else
                            If .Item("strClass") = "ALL" Then
                                strHTML = strHTML & "<bbH1>" & .Item("intYear") & "</bbH1>"
                            Else
                                strHTML = strHTML & "<bbH1>" & .Item("intYear") & "-" & .Item("strClass") & "</bbH1>"
                            End If
                        End If
                        strHTML = strHTML & "</td>"
                        strHTML = strHTML & "<td style='font-weight:normal;color: " & Session("colorForecolorStr") & "'>"
                        strHTML = strHTML & "<bbD>" & .Item("strDisplayStateIndividuals") & "</bbD>"
                        strHTML = strHTML & "</td>"
                        strHTML = strHTML & "</tr>"
                        intYear = .Item("intYear")
                    End With
                Next
                strHTML = strHTML & "</table>"
            End If
        End If
        Session("billboardHTML") = strHTML

        Me.Title = Session("globalSchool") & " Individual State Champions - List of Champions"

        Try
            clsLog.LogEvent("StateIndividuals", Me.Page.AppRelativeVirtualPath.ToString, Session("globalSchool"), (Session("globalShowAds") + " - " + Session("globalSport")), Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Private Sub BillboardStateChampionships_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit

    End Sub

End Class