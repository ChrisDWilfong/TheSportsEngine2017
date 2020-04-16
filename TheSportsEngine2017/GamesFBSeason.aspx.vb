Imports Telerik.Web.UI

Partial Class GamesFBSeason
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strHTML As String = ""

        strHTML = RefreshPage()

        'Session("billboardHTML") = strHTML
        lblDetails0.Text = strHTML
        lblDetails1.Text = strHTML

    End Sub

    Public Function RefreshPage() As String
        Dim strHTML As String = ""
        Dim strGUID As String = ""

        Session("GUID") = ""
        Session("GUID") = clsFunctions.VerifyString(Request.QueryString("id"))

        Session("globalState") = "OK"
        If Request.QueryString("school") = "" Then
        Else
            Session("globalSchool") = clsFunctions.VerifyString(Request.QueryString("school"))
        End If

        If Session("globalSchool") = "" Then Session("globalSchool") = "Kingfisher"
        Session("globalSport") = clsFunctions.VerifyString(Request.QueryString("sport"))
        If Session("globalSport") = "" Then Session("globalSport") = "Football"

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


        Dim intYear As Integer
        Try
            intYear = CInt(RadDropDownListYear0.SelectedValue)
        Catch
            intYear = 0
        End Try
        clsLog.LogMobileEvent(Session("globalSchool"), Session("GUID"), "GamesFBSeason.aspx", strHostName, strIP, Session("globalType"), CStr(intYear))

        'Session("schoolMascotGraphicOP") = "../images/mascots/" & objSchool.getSchoolMascotGraphicOP
        Select Case Session("globalSport")
            Case "Football"
                If intYear > 0 Then
                    lblOneColumnDetail.Text = intYear & " SEASON FOOTBALL GAMES"
                Else
                    lblOneColumnDetail.Text = "SEASON FOOTBALL GAMES"
                End If
            Case Else
                lblOneColumnDetail.Text = "SEASON GAMES"
        End Select

        lblOneColumnDetail1.Text = clsStateChampions.GetSeasonResults(Session("globalState"), Session("globalSport"), Session("globalSchool"), intYear, True)
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

        Dim strSQL As String = clsStateChampions.GetSeasonGames(Session("globalState"), Session("globalSport"), Session("globalSchool"), intYear)
        Dim ds As DataSet
        Dim x As Integer
        Dim strOT As String = ""

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
            'strHTML = "<table style='width:95%;'><tr><td colspan=2><bbH1>NO GAMES</bbH1></td></tr>"
        ElseIf ds.Tables.Count = 0 Then
            'strHTML = "<table style='width:95%;'><tr><td colspan=2><bbH1>NO GAMES</bbH1></td></tr>"
        ElseIf ds.Tables(0).Rows.Count = 0 Then
            'strHTML = "<table style='width:95%;'><tr><td colspan=2><bbH1>NO GAMES</bbH1></td></tr>"
        Else
            strHTML = "<table style='width:95%;'>"
            strHTML = strHTML & "<tr><td colspan=2><hr></td></tr>"
            For x = 0 To ds.Tables(0).Rows.Count - 1
                With ds.Tables(0).Rows(x)
                    strHTML = strHTML & "<tr>"
                    strHTML = strHTML & "<td style='vertical-align:top;text-align:left;color:" & Session("colorForecolorStr") & "'>"
                    If .Item("strLevel") Is System.DBNull.Value Then
                        strHTML = strHTML & "<bbD>&nbsp;</bbD>"
                    ElseIf .Item("strLevel") = "F" Or .Item("strLevel") = "C" Or .Item("strLevel") = "CHAMPIONSHIP" Then
                        strHTML = strHTML & "<bbD1>" & .Item("Level") & "</bbD1>"
                    Else
                        strHTML = strHTML & "<bbD>" & .Item("Level") & "</bbD>"
                    End If
                    strHTML = strHTML & "</td>"
                    'strHTML = strHTML & "<td>&nbsp;</td>"
                    Try
                        strOT = " - " & .Item("strOT")
                    Catch ex As Exception
                        strOT = ""
                    End Try
                    If strOT = " - " Then strOT = ""

                    strHTML = strHTML & "<td style='vertical-align:top;text-align:left;width=30%;color:" & Session("colorForecolorStr") & "'>"
                    If .Item("strLevel") Is System.DBNull.Value Then
                        strHTML = strHTML & "<bbD>" & .Item("strWL") & " - " & UCase(.Item("strDisplay")) & strOT & "</bbD>"
                    ElseIf .Item("strLevel") = "F" Or .Item("strLevel") = "C" Or .Item("strLevel") = "CHAMPIONSHIP" Then
                        strHTML = strHTML & "<bbD1>" & .Item("strWL") & " - " & UCase(.Item("strDisplay")) & strOT
                        Dim strChampionshipInfo As String = clsStateChampions.GetChampionshipInfo(Session("globalState"), Session("globalSport"), Session("globalSchool"), intYear)
                        strHTML = strHTML & "<br>" & strChampionshipInfo
                        strHTML = strHTML & "</bbD1>"
                    Else
                        strHTML = strHTML & "<bbD>" & .Item("strWL") & " - " & UCase(.Item("strDisplay")) & strOT & "</bbD>"
                    End If
                    strHTML = strHTML & "</td>"

                    strHTML = strHTML & "</tr>"
                End With
            Next
            strHTML = strHTML & "</table>"
        End If

        Return strHTML
    End Function

    Private Sub BillboardStateChampionships_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit

    End Sub

    Private Sub RadDropDownListYear0_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListYear0.SelectedIndexChanged
        RadDropDownListYear1.SelectedValue = RadDropDownListYear0.SelectedValue
        Dim strHTML As String = ""

        strHTML = RefreshPage()

        'Session("billboardHTML") = strHTML
        lblDetails0.Text = strHTML
        lblDetails1.Text = strHTML
    End Sub

    Private Sub RadDropDownListYear1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListYear1.SelectedIndexChanged
        RadDropDownListYear0.SelectedValue = RadDropDownListYear1.SelectedValue
        Dim strHTML As String = ""

        strHTML = RefreshPage()

        'Session("billboardHTML") = strHTML
        lblDetails0.Text = strHTML
        lblDetails1.Text = strHTML
    End Sub
End Class