Imports Telerik.Web.UI

Partial Class StateChampions
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim intChampionshipCount As Integer = 0
        Dim strGUID As String = ""

        If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
            Response.Redirect("http://www.iwasatthegame.com")
        End If

        Session("GUID") = ""
        Session("GUID") = clsFunctions.VerifyString(Request.QueryString("id"))

        If Request.QueryString("school") = "" Then
            Session("globalShowAds") = "NO"
            panelAd1.Visible = False
            panelAd2.Visible = False
        Else
            Session("globalShowAds") = "YES"
            panelAd1.Visible = True
            panelAd2.Visible = True
            Session("globalSchool") = clsFunctions.VerifyString(Request.QueryString("school"))
            ' Get the GUID...
            Dim objGUID As Object
            objGUID = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT GuidTemp FROM tblSchoolInfo WHERE strSchoolName = '" & Session("globalSchool") & "'")
            Session("GUID") = objGUID.ToString
        End If

        Me.Title = Session("globalSchool") & " - List of Champions"
        Session("globalSport") = "ListOfChampions"

        ' Get School Information...
        Dim objSchool As New clsSchoolInfo(Session("globalSchool"), Session("GUID"))
        If objSchool.getSchoolName Is Nothing Then Response.Redirect("http://www.iwasatthegame.com")
        Session("globalType") = objSchool.getTheType
        Session("colorForecolor") = System.Drawing.Color.FromName(objSchool.getForeColor)
        Session("colorForecolorStr") = objSchool.getForeColor
        Session("colorBackground") = objSchool.getBackColor
        Session("globalState") = objSchool.getStateAbb
        Try
			intChampionshipCount = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT SUM(noOfChampions) AS intCount FROM viewNumberOfStateChampionsByYearForSchool WHERE (strSchoolKey = '" & Session("globalSchool") & "' OR strSchool = '" & Session("globalSchool") & "') AND strState = '" & Session("globalState") & "'")
		Catch
            intChampionshipCount = 0
        End Try
        lblOneColumnHeader.Text = UCase(objSchool.getSchoolName) & " " & UCase(objSchool.getSchoolMascot)
        'Session("schoolMascotGraphic") = "../images/mascots/" & objSchool.getSchoolMascotGraphic

        Dim strState As String = objSchool.getState
        If strState <> "Oklahoma" Then
            Page.Title = Page.Title.Replace("Oklahoma", strState)
        End If

        ' Log page view...
        Dim strHostName As String = Request.UserAgent
        Dim strIP As String = Request.UserHostAddress
        If Session("globalShowAds") = "NO" Then
            clsLog.LogMobileEvent(Session("globalSchool"), Session("GUID"), "StateChampions.aspx", strHostName, strIP, Session("globalType"), "")
        End If

        Page.Title = Session("globalSchool") & " : List of Champions Oklahoma"

        'Session("schoolMascotGraphicOP") = "../images/mascots/" & objSchool.getSchoolMascotGraphicOP
        lblOneColumnDetail.Text = "STATE CHAMPIONSHIPS (" & intChampionshipCount & ")"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        ' Set Text Color...
        lblOneColumnHeader.ForeColor = Session("colorForecolor")
        lblOneColumnDetail.ForeColor = Session("colorForecolor")
        lblOneColumnHeader0.ForeColor = Session("colorForecolor")
        lblOneColumnDetail0.ForeColor = Session("colorForecolor")

        Dim strSQL As String = clsStateChampions.GetStateChampionshipsSQL(Session("globalState"), Session("globalSchool"), False, True, False)
        Dim ds As DataSet
        Dim x As Integer
        Dim strHTML As String = ""

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
            strHTML = "<table style='width:95%;'><tr><td colspan=2><bbH1>NO STATE CHAMPIONS</bbH1></td></tr>"
        ElseIf ds.Tables.Count = 0 Then
            strHTML = "<table style='width:95%;'><tr><td colspan=2><bbH1>NO STATE CHAMPIONS</bbH1></td></tr>"
        ElseIf ds.Tables(0).Rows.Count = 0 Then
            strHTML = "<table style='width:95%;'><tr><td colspan=2><bbH1>NO STATE CHAMPIONS</bbH1></td></tr>"
        Else
            'strHTML = "<table style='width:95%;background-repeat:no-repeat;background-position:center;' background='" & Session("schoolMascotGraphicOP") & "'>"
            strHTML = "<table style='width:95%;'>"
            For x = 0 To ds.Tables(0).Rows.Count - 1
                With ds.Tables(0).Rows(x)
                    strHTML = strHTML & "<tr>"
                    ' Detail...
                    If .Item("strSportGenderKey") = "" Then
                        strHTML = strHTML & "<td>&nbsp;</td>"
                        strHTML = strHTML & "<td style='text-align:left;color:" & Session("colorForecolorStr") & "'>"
                        strHTML = strHTML & "<bbD>" & UCase(.Item("strDisplay")) & "</bbD>"
                        strHTML = strHTML & "</td>"
                        strHTML = strHTML & "</tr>"
                        strHTML = strHTML & "<tr><td colspan=2><hr></td></tr>"
                    Else
                        ' Image...
                        strHTML = strHTML & "<td style='width:60px;'>"
                        strHTML = strHTML & "<img src='../images/" & .Item("strSportGenderKey") & "300.gif' class='sport'>"
                        strHTML = strHTML & "</td>"
                        strHTML = strHTML & "<td style='color: " & Session("colorForecolorStr") & "'>"
                        strHTML = strHTML & "<bbH>" & UCase(.Item("strDisplay")) & "</bbH>"
                        strHTML = strHTML & "</td>"
                        strHTML = strHTML & "</tr>"
                    End If
                End With
            Next
            strHTML = strHTML & "</table>"
        End If
        Session("billboardHTML") = strHTML

        Try
            clsLog.LogEvent("StateChampions", Me.Page.AppRelativeVirtualPath.ToString, Session("globalSchool"), Session("globalShowAds"), Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Private Sub BillboardStateChampionships_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit

    End Sub

End Class