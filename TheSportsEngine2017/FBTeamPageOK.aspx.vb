Imports Telerik.Web.UI

Partial Class FBTeamPageOK
    Inherits RadAjaxPage

    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
        '    Response.Redirect("http://www.iwasatthegame.com")
        'End If

        Dim strGUID As String = ""

        Session("GUID") = ""
        Session("GUID") = clsFunctions.VerifyString(Request.QueryString("id"))
        Session("globalSchool") = clsFunctions.VerifyString(Request.QueryString("school"))
        If Session("globalSchool") = "" Then Session("globalSchool") = "Kingfisher"
        Session("globalSport") = "ListOfChampions"

        ' Get School Information...
        Dim objSchool As New clsSchoolInfo(Session("globalSchool"), Session("GUID"))
        If objSchool.getSchoolName Is Nothing Then Response.Redirect("http://www.iwasatthegame.com")
        Session("globalType") = objSchool.getTheType
        Session("colorForecolor") = System.Drawing.Color.FromName(objSchool.getForeColor)
        Session("colorForecolorStr") = objSchool.getForeColor
        Session("colorBackground") = objSchool.getBackColor
        Session("globalState") = objSchool.getStateAbb
        Session("globalMascot") = objSchool.getSchoolMascot

        Session("globalSport") = "Football"
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL TEAM PAGE")
        If Session("globalState") = "" Then Session("globalState") = "OK"
        lblOneColumnDetail.Text = UCase(Session("globalSchool")) & " " & Session("globalMascot") & " FOOTBALL"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text

        Page.Title = "Oklahoma High School Football Team Page " & Session("globalSchool")
        LoadFooterInfo()

        ' CDW added 11/7/2018...
        Dim intYear As Integer = 0
        Dim strSchool As String = Session("globalSchool")
        Dim strSource As String = ""
        Try
            intYear = CInt(RadDropDownListYear.SelectedValue)
            strSource = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT strSource FROM tblYearlyRecords WHERE School = '" & strSchool & "' AND Year = " & intYear)
            If strSource <> "" Then
                lblCredits.Text = "Scores provided by " & strSource
                lblCredits.Visible = True
            Else
                lblCredits.Visible = False
            End If
        Catch
            lblCredits.Visible = False
        End Try

        Try
            clsLog.LogEvent("FOOTBALL", Me.Page.AppRelativeVirtualPath.ToString, RadDropDownListYear.SelectedValue, Session("globalSchool"), Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

    End Sub

    Private Sub LoadFooterInfo()
        RadGrid1.Columns(1).HeaderText = Session("globalSchool") & " FOOTBALL SEASON GAMES"

        Dim intYear As Integer = 0
        Try
            intYear = CInt(RadDropDownListYear.SelectedValue)
        Catch
        End Try

        lblSeasonInfo.Text = clsStateChampions.GetSeasonResults(Session("globalState"), Session("globalSport"), Session("globalSchool"), intYear, False)

        Dim ds As DataSet
        Dim strSQL As String
        Dim strText As String = ""

        ' Let's get the details...
        strSQL = "SELECT * FROM viewtblSchoolsTotals WHERE strSchoolName = '" & Session("globalSchool") & "'"
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
            lblAllTimeWLRecord.Text = ""
            lblChampionships.Text = ""
            lblPlayoffs.Text = ""
            lblDistrictChampionships.Text = ""
            lblCoaches.Text = ""
        ElseIf ds.Tables.Count = 0 Then
            lblAllTimeWLRecord.Text = ""
            lblChampionships.Text = ""
            lblPlayoffs.Text = ""
            lblDistrictChampionships.Text = ""
            lblCoaches.Text = ""
        ElseIf ds.Tables(0).Rows.Count = 0 Then
            lblAllTimeWLRecord.Text = ""
            lblChampionships.Text = ""
            lblPlayoffs.Text = ""
            lblDistrictChampionships.Text = ""
            lblCoaches.Text = ""
        Else
            With ds.Tables(0).Rows(0)
                Dim intStartYear As Integer = .Item("intFirstYear")
                Dim intLastYear As Integer = .Item("intLastYear")

                ' ALL-TIME...
                strText = "<h3>ALL-TIME RECORD</h3>"
                If intStartYear < 1957 Then intStartYear = 1957
                strText = strText & "<strong>ALL-TIME RECORD (" & intStartYear & "-" & intLastYear & ") :</strong> " & .Item("intTotalWins") & "-" & .Item("intTotalLosses") & "-" & .Item("intTotalTies") & " (" & .Item("intTotalYears") & " years - " & .Item("intTotalGames") & " games)"
                lblAllTimeWLRecord.Text = strText

                ' CHAMPIONSHIPS...
                strText = "<h3>CHAMPIONSHIPS</h3>"
                If .Item("intPlayoffChampionshipWins") + .Item("intPlayoffChampionshipLosses") = 0 Then
                    strText = strText & "<strong>STATE CHAMPIONSHIPS :</strong> None"
                Else
                    strText = strText & "<strong>STATE CHAMPIONSHIP RECORD :</strong> " & .Item("intPlayoffChampionshipWins") & "-" & .Item("intPlayoffChampionshipLosses")
                End If
                lblChampionships.Text = strText

                ' PLAYOFFS...
                strText = "<h3>PLAYOFFS</h3>"
                If .Item("intPlayoffWins") + .Item("intPlayoffLosses") = 0 Then
                    strText = strText & "<strong>PLAYOFF RECORD</strong> : No appearances"
                Else
                    strText = strText & "<strong>PLAYOFF RECORD</strong> : " & .Item("intPlayoffWins") & "-" & .Item("intPlayoffLosses") & " (" & .Item("intPlayoffYears") & " years in playoffs)" & "<br>"
                End If
                If .Item("intPlayoffSemisWins") + .Item("intPlayoffSemisLosses") = 0 Then
                    strText = strText & "<strong>SEMI-FINAL RECORD :</strong> No appearances"
                Else
                    strText = strText & "<strong>SEMI-FINAL RECORD :</strong> " & .Item("intPlayoffSemisWins") & "-" & .Item("intPlayoffSemisLosses") & "<br>"
                End If
                lblPlayoffs.Text = strText

                ' DISTRICTS...
                Dim intDistrictChampionships As Integer = 0
                Dim strDistricts As String = ""

                intDistrictChampionships = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(*) AS NoChampionships FROM tblFootballDistricts WHERE strSchool = '" & Session("globalSchool") & "' AND intPlace = 1")
                If intDistrictChampionships = 0 Then
                    strText = "<h3>DISTRICTS</h3>FOOTBALL DISTRICT CHAMPIONSHIPS (1944-2016) : None"
                Else
                    Dim ds1 As DataSet
                    strSQL = "SELECT intYear FROM tblFootballDistricts WHERE strSchool = '" & Session("globalSchool") & "' AND intPlace = 1 ORDER BY intYear DESC"
                    ds1 = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

                    If ds1 Is Nothing Then
                    ElseIf ds1.Tables.Count = 0 Then
                    ElseIf ds1.Tables(0).Rows.Count = 0 Then
                    Else
                        For y = 0 To ds1.Tables(0).Rows.Count - 1
                            strDistricts = strDistricts & " " & ds1.Tables(0).Rows(y).Item("intYear")
                        Next
                    End If
                    If strDistricts = "" Then
                        strDistricts = "<h3>DISTRICTS</h3><strong>Football District Championships (thru 2016) : " & intDistrictChampionships & "</strong>"
                    Else
                        strDistricts = "<h3>DISTRICTS</h3><strong>Football District Championships (thru 2016) : <style='fore-color:Red;'>" & intDistrictChampionships & "</style></strong><br>(" & strDistricts & ")"
                    End If
                    strText = strDistricts
                End If
                lblDistrictChampionships.Text = strText

                'COACHES...
                Dim strCoaches As String = ""
                Dim ds2 As DataSet
                strSQL = "SELECT * FROM tblCoaches WHERE strSchoolName = '" & Session("globalSchool") & "' ORDER BY intYearStart DESC"
                ds2 = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

                If ds2 Is Nothing Then
                ElseIf ds2.Tables.Count = 0 Then
                ElseIf ds2.Tables(0).Rows.Count = 0 Then
                Else
                    strCoaches = "<h3>COACHES</h3>"
                    For y = 0 To ds2.Tables(0).Rows.Count - 1
                        strCoaches = strCoaches & "<img src='images/bullet.png' style='vertical-align:middle;' /><strong>" & ds2.Tables(0).Rows(y).Item("strCoach") & "  (" & ds2.Tables(0).Rows(y).Item("intYears") & " years : " & ds2.Tables(0).Rows(y).Item("intYearStart") & "-" & ds2.Tables(0).Rows(y).Item("intYearEnd") & ")  </strong>" & ds2.Tables(0).Rows(y).Item("intW") & " wins - " & ds2.Tables(0).Rows(y).Item("intL") & " losses <br>"
                    Next
                End If
                lblCoaches.Text = strCoaches
            End With
        End If

    End Sub

    Private Sub RadDropDownListYear_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadDropDownListYear.SelectedIndexChanged
        RadGrid1.Columns(1).HeaderText = Session("globalSchool") & " FOOTBALL SEASON GAMES (" & RadDropDownListYear.SelectedValue & ")"
        Dim intYear As Integer = 0
        Try
            intYear = CInt(RadDropDownListYear.SelectedValue)
        Catch
        End Try
        lblSeasonInfo.Text = clsStateChampions.GetSeasonResults(Session("globalState"), Session("globalSport"), Session("globalSchool"), intYear, False)
    End Sub
End Class