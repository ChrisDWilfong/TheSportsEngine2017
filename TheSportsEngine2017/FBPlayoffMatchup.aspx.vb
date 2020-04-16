Imports Telerik.Web.UI

Public Class FBPlayoffMatchup
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strAppearances As String = ""
        Dim globalAd1URL As String = ""
        Dim globalAd2URL As String = ""
        Dim strSourceTable As String = ""

        'If clsIP.CheckIPAddress(Request.UserHostAddress.ToString, Me.Page.AppRelativeVirtualPath.ToString, Session("globalState")) = "BLOCKED" Then
        '    Response.Redirect("http://www.iwasatthegame.com")
        'End If

        ' Get the week #
        If Request.QueryString("w") = "" Then
            strSourceTable = "viewFootballScoresPlayoffsWeek5"
        ElseIf Request.QueryString("w") = "1" Then
            strSourceTable = "viewFootballScoresPlayoffsWeek1"
        ElseIf Request.QueryString("w") = "2" Then
            strSourceTable = "viewFootballScoresPlayoffsWeek2"
        ElseIf Request.QueryString("w") = "3" Then
            strSourceTable = "viewFootballScoresPlayoffsWeek3"
        ElseIf Request.QueryString("w") = "4" Then
            strSourceTable = "viewFootballScoresPlayoffsWeek4"
        ElseIf Request.QueryString("w") = "5" Then
            strSourceTable = "viewFootballScoresPlayoffsWeek5"
        Else
            strSourceTable = "viewFootballScoresPlayoffsWeek5"
        End If

        Dim intGlobalYear As Integer = CInt(ConfigurationManager.AppSettings("ThisYearOfFootballPlayoffs"))
        Session("globalSport") = "Football"

        If Session("globalState") = "" Then Session("globalState") = "OK"

        If Request.QueryString("id") Is Nothing Then
            Session("globalTeam1") = UCase("None")
            Session("globalTeam2") = UCase("None")
            Session("globalClass") = ""
        Else
            Session("globalTeam1") = Request.QueryString("id")
            Session("globalTeam1") = clsFunctions.VerifyString(Session("globalTeam1"))
        End If

        Try
            Session("globalTeam2") = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT strOpponent FROM " & strSourceTable & " WHERE strSchoolName = '" & Session("globalTeam1") & "'")
            Session("globalTeam2") = clsFunctions.VerifyString(Session("globalTeam2"))
        Catch
        End Try
        Try
            Session("globalClass") = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT strClass FROM " & strSourceTable & " WHERE strSchoolName = '" & Session("globalTeam1") & "'")
            Session("globalClass") = clsFunctions.VerifyString(Session("globalClass"))
        Catch
            Session("globalClass") = ""
        End Try

        Try
            Session("globalHeader") = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT 'CLASS ' + strClass + ' STATE CHAMPIONSHIP' AS strDisplayHeader FROM " & strSourceTable & " WHERE strType = 'TOSSAA2' AND strSchoolName = '" & Session("globalTeam1") & "'")
        Catch ex As Exception
            Session("globalHeader") = ""
        End Try
        If Session("globalHeader") = "" Then
            Try
                Session("globalHeader") = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT 'CLASS ' + strClass + ' STATE SEMIFINALS' AS strDisplayHeader FROM " & strSourceTable & " WHERE strType = 'TOSSAA4' AND strSchoolName = '" & Session("globalTeam1") & "'")
            Catch ex As Exception
                Session("globalHeader") = ""
            End Try
        End If
        If Session("globalHeader") = "" Then
            Try
                Session("globalHeader") = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT 'CLASS ' + strClass + ' STATE QUARTERFINALS' AS strDisplayHeader FROM " & strSourceTable & " WHERE strType = 'TOSSAA8' AND strSchoolName = '" & Session("globalTeam1") & "'")
            Catch ex As Exception
                Session("globalHeader") = ""
            End Try
        End If

        'hlSchoolAd1 = clsAds.getAdHyperlink(hlSchoolAd1, Session("globalTeam1"))
        'hlSchoolAd2 = clsAds.getAdHyperlink(hlSchoolAd2, Session("globalTeam2"))

        Dim strDate As Date = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT strInfo FROM " & strSourceTable & " WHERE strSchoolName = '" & Session("globalTeam1") & "'")
        Try
            Session("globalDate") = strDate.ToString("d")
        Catch
        End Try
        'End If

        Dim strSeasonInfo As String = ""

        ' TEAM #1...
        RadGridTeam1Season.Columns(1).HeaderText = ConfigurationManager.AppSettings("ThisYearOfFootballPlayoffs") & " SEASON : " & Session("globalTeam1")
        RadGridTeam1History.Columns(0).HeaderText = "PLAYOFF HISTORY FOR : " & Session("globalTeam1")

        strSeasonInfo = "<strong>" & Session("globalTeam1") & "</strong><br>" & clsStateChampions.GetSeasonResults(Session("globalState"), Session("globalSport"), Session("globalTeam1"), intGlobalYear, True)
        strSeasonInfo = strSeasonInfo & "<br>" & clsStateChampions.GetSeasonOffDef(Session("globalTeam1"), intGlobalYear)
        lblTeam1SeasonInfo.Text = strSeasonInfo

        strAppearances = "<strong>1944-" & ConfigurationManager.AppSettings("LastYearOfFootballPlayoffs") & " PLAYOFF </strong>" & clsStateChampions.GetAppearancesWL(Session("globalState"), Session("globalSport"), Session("globalTeam1"))
        strAppearances = strAppearances & "<br>" & clsStateChampions.GetStateCountAndLast(Session("globalState"), Session("globalTeam1"))
        lblTeam1HistoryInfo.Text = Replace(strAppearances, " : ", "<br>")

        ' TEAM #2...
        strSeasonInfo = ""
        RadGridTeam2Season.Columns(1).HeaderText = intGlobalYear & " SEASON : " & Session("globalTeam2")
        RadGridTeam2History.Columns(0).HeaderText = "PLAYOFF HISTORY FOR : " & Session("globalTeam2")

        strSeasonInfo = "<strong>" & Session("globalTeam2") & "</strong><br>" & clsStateChampions.GetSeasonResults(Session("globalState"), Session("globalSport"), Session("globalTeam2"), intGlobalYear, True)
        strSeasonInfo = strSeasonInfo & "<br>" & clsStateChampions.GetSeasonOffDef(Session("globalTeam2"), intGlobalYear)
        lblTeam2SeasonInfo.Text = strSeasonInfo

        strAppearances = "<strong>1944-" & ConfigurationManager.AppSettings("LastYearOfFootballPlayoffs") & " PLAYOFF </strong>" & clsStateChampions.GetAppearancesWL(Session("globalState"), Session("globalSport"), Session("globalTeam2"))
        strAppearances = strAppearances & "<br>" & clsStateChampions.GetStateCountAndLast(Session("globalState"), Session("globalTeam2"))
        lblTeam2HistoryInfo.Text = Replace(strAppearances, " : ", "<br>")

        'lblTeamVSTeam.Text = Session("globalTeam1") & " vs " & Session("globalTeam2") & " - CLASS " & Session("globalClass") & "<br> Game Date " & Session("globalDate")
        lblTeamVSTeam.Text = Session("globalTeam1") & " vs " & Session("globalTeam2") & "<br> Game Date " & Session("globalDate")

        If Session("globalHeader") = "" Then
        Else
            lblTeamVSTeam.Text = Session("globalHeader") & "<br>" & lblTeamVSTeam.Text
        End If

        Dim intW As Integer = 0
        Dim intL As Integer = 0

        ' GET THE BIGGEST HEAD TO HEAD...
        Dim intCountTeam1 As Integer = 0
        Dim intCountTeam2 As Integer = 0
        Dim strSQL As String = ""
        strSQL = "SELECT COUNT(*) FROM IWATGview_Football_Games WHERE strState = 'OK' AND strSchool = '" & Session("globalTeam1") & "' AND strOpponent = '" & Session("globalTeam2") & "'"
        intCountTeam1 = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        strSQL = "SELECT COUNT(*) FROM IWATGview_Football_Games WHERE strState = 'OK' AND strSchool = '" & Session("globalTeam2") & "' AND strOpponent = '" & Session("globalTeam1") & "'"
        intCountTeam2 = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If intCountTeam1 > intCountTeam2 Then
            SqlDataSource5.SelectCommand = "SELECT *, CAST(intYear AS varchar) + ' : ' + strDisplay AS strDisplayYear FROM IWATGview_Football_Games WHERE strState = @state AND (strSchool = @team1 AND strOpponent = @team2) ORDER BY intYear DESC, intSort"
            intW = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblScores WHERE strWL = 'W' AND strSchool = '" & Session("globalTeam1") & "' AND strOpponent = '" & Session("globalTeam2") & "'")
            intL = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblScores WHERE strWL = 'L' AND strSchool = '" & Session("globalTeam1") & "' AND strOpponent = '" & Session("globalTeam2") & "'")
            RadGridHeadToHead.Columns(0).HeaderText = Session("globalTeam1") & " vs " & Session("globalTeam2") & " (" & intW & "-" & intL & ")"
        Else
            SqlDataSource5.SelectCommand = "SELECT *, CAST(intYear AS varchar) + ' : ' + strDisplay AS strDisplayYear FROM IWATGview_Football_Games WHERE strState = @state AND (strSchool = @team2 AND strOpponent = @team1) ORDER BY intYear DESC, intSort"
            intW = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblScores WHERE strWL = 'W' AND strSchool = '" & Session("globalTeam2") & "' AND strOpponent = '" & Session("globalTeam1") & "'")
            intL = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblScores WHERE strWL = 'L' AND strSchool = '" & Session("globalTeam2") & "' AND strOpponent = '" & Session("globalTeam1") & "'")
            RadGridHeadToHead.Columns(0).HeaderText = Session("globalTeam2") & " vs " & Session("globalTeam1") & " (" & intW & "-" & intL & ")"
        End If

        SqlDataSource5.DataBind()

        ' PLAYOFF HISTORY STUFF...
        Dim strSQL3 As String = clsStateChampions.GetStateGames("OK", Session("globalSport"), Session("globalTeam1"), 0)
        SqlDataSource3.SelectCommand = strSQL3
        RadGridTeam1History.DataBind()

        Dim strSQL4 As String = clsStateChampions.GetStateGames("OK", Session("globalSport"), Session("globalTeam2"), 0)
        SqlDataSource4.SelectCommand = strSQL4
        RadGridTeam2History.DataBind()

        ' Banner for school???
        'If Session("globalTeam1") = "Crescent" Or Session("globalTeam2") = "Crescent" Then
        '    hlTitleAd1.Visible = True
        '    hlTitleAd1.NavigateUrl = ""
        '    hlTitleAd1.ImageUrl = "images/ads/Crescent_RossNealisHeader.png"
        'ElseIf Session("globalTeam1") = "Shattuck" Or Session("globalTeam2") = "Shattuck" Then
        '    hlTitleAd1.Visible = True
        '    hlTitleAd1.NavigateUrl = "http://medicpharmacyrx.com/"
        '    hlTitleAd1.ImageUrl = "images/ads/MedicHeader.png"
        'ElseIf Session("globalTeam1") = "Laverne" Or Session("globalTeam2") = "Laverne" Then
        '    hlTitleAd1.Visible = True
        '    hlTitleAd1.NavigateUrl = "http://medicpharmacyrx.com/"
        '    hlTitleAd1.ImageUrl = "images/ads/MedicHeader.png"
        'Else
        '    hlTitleAd1.Visible = False
        'End If

        Try
            clsLog.LogEvent("FOOTBALLMatchup", Me.Page.AppRelativeVirtualPath.ToString, Session("globalTeam1"), Session("globalTeam2"), Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try

        'Dim strHostName As String = Request.UserAgent
        'Dim strIP As String = Request.UserHostAddress
        'clsLog.LogMobileEvent("NONE", "NONE", "FBPlayoffStreaks.aspx", strHostName, strIP, "TWITTER", "")

    End Sub

    Private Sub cmdGoBack_Click(sender As Object, e As EventArgs) Handles cmdGoBack.Click
        Response.Redirect(ConfigurationManager.AppSettings("FBPlayoffsStartPage"))
    End Sub

End Class