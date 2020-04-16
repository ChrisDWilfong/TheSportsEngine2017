Public Class clsSchedules
    Shared Function GetScheduleTeamSQL(ByVal intTeamID As Long) As String
        Dim sql As String = ""

        sql = "SELECT 'Date' AS [Date], tblSchedules.gameTime AS [Time], CASE WHEN tblTeams.SchoolName IS NULL THEN OtherTeam ELSE tblTeams.SchoolName END AS [Opposing Team], tblSchedules.Location AS [Location], 'Results' AS [Results], tblSchedules.strResults, 'Game Results' AS [View], 'Opponent' AS [Hyperlink], "
        sql = sql & "tblSchedules.NeutralSiteCoor, tblSchedules.District, tblSchedules.intGame, tblSchedules.OtherTeam, tblSchedules.Tournament, tblSchedules.TotalScore, tblSchedules.strLink, tblSchedules.oTeamID, tblSchedules.oTotalScore, tblSchedules.gameDate, tblSports.Class, tblSports.sportID, tblTeams.teamID, tblSchedules.gStatus, tblSchedules.rank, tblSchedules.orank, tblSchedules.WL, tblSchedules.scheduleId, tblSchedules.strType, tblSchedules.sportID AS teamSportID, tblSchool.SchoolName "
        sql = sql & "FROM tblSchool INNER JOIN "
        sql = sql & "tblTeams ON tblSchool.schoolID = tblTeams.schoolID INNER JOIN "
        sql = sql & "tblSports ON tblTeams.sportID = tblSports.sportID RIGHT OUTER JOIN "
        sql = sql & "tblSchedules ON tblTeams.teamID = tblSchedules.oTeamID "
        sql = sql & "WHERE (tblSchedules.teamID = " & intTeamID & " AND tblSchedules.ysnActive <> 0) AND (WL = 'W' OR WL = 'L')"
        sql = sql & "ORDER BY tblSchedules.gamedate, tblSchedules.gametime, tblSchedules.Tournament "

        Return sql
    End Function
End Class
