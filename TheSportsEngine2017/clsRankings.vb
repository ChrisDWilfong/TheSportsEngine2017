Public Class clsRankings

    Shared Function GetWLRecord(strSchoolName As String, strSportGenderKey As String) As String
        Dim strReturn As String = ""
        Dim strSQL As String
        strSQL = "SELECT CAST(W AS varchar(5)) + '-' + CAST(L AS varchar(5)) AS strWL FROM allCoachesDetail WHERE intYear = 18 AND SchoolName = '" & strSchoolName & "' AND sportID = '" & strSportGenderKey & "'"
        strReturn = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL)
        Return strReturn
    End Function

    Shared Function GetHeadCoach(strSchoolName As String, strSportGenderKey As String) As String
        Dim strReturn As String = ""
        Dim strSQL As String
        strSQL = "SELECT FirstName + ' ' + LastName AS strCoach FROM allCoachesDetail WHERE intYear = 18 AND SchoolName = '" & strSchoolName & "' AND sportID = '" & strSportGenderKey & "'"
        strReturn = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL)
        Return strReturn
    End Function

End Class
