Public Class clsSQL

    Shared Function GetSQLSportsStateChampionshipsALLForYear(intYear As Integer) As String
        Dim strSQL As String = ""

        ' viewIWATGSelectedYearChampionshipCountSUM

        strSQL = "SELECT SUM(intChampionships) AS intTotalChampionships, strSchool "
        strSQL = strSQL & "FROM  (SELECT COUNT(Id) AS intChampionships, strSchool, intYear "
        strSQL = strSQL & "FROM   dbo.tblStateChampions "
        strSQL = strSQL & "WHERE  (strSportGenderKey = 'Cheerleading' OR "
        strSQL = strSQL & "strSportGenderKey = 'GDCheerleading' OR "
        strSQL = strSQL & "strSportGenderKey = 'BaseballFall' OR "
        strSQL = strSQL & "strSportGenderKey = 'Volleyball' OR "
        strSQL = strSQL & "strSportGenderKey = 'Football' OR "
        strSQL = strSQL & "strSportGenderKey = 'FPSoftball' OR "
        strSQL = strSQL & "strSportGenderKey = 'Football' OR "
        strSQL = strSQL & "strSportGenderKey LIKE 'CrossCountry%' AND strSportGenderKey <> 'OneAct' AND strSportGenderKey <> 'SpeechDebate' AND strSportGenderKey <> 'JazzBand') AND (intYear = " & intYear & " - 1) AND (strState = 'OK') "
        strSQL = strSQL & "GROUP BY strSchool, intYear "
        strSQL = strSQL & "UNION "
        strSQL = strSQL & "SELECT COUNT(Id) As intChampionships, strSchool, intYear "
        strSQL = strSQL & "From dbo.tblStateChampions AS tblStateChampions_1 "
        strSQL = strSQL & "Where (strSportGenderKey <> 'Cheerleading') AND (strSportGenderKey <> 'GDCheerleading') AND (strSportGenderKey <> 'BaseballFall') AND (strSportGenderKey <> 'Volleyball') AND (strSportGenderKey <> 'Football') AND (NOT (strSportGenderKey LIKE 'CrossCountry%')) AND (intYear = " & intYear & " - 0) AND (strState = 'OK') AND (strSportGenderKey <> 'OneAct') AND (strSportGenderKey <> 'JazzBand') AND (strSportGenderKey <> 'SpeechDebate') "
        strSQL = strSQL & "Group BY strSchool, intYear) AS derivedtbl_1 "
        strSQL = strSQL & "Group By strSchool "
        strSQL = strSQL & "ORDER BY intTotalChampionships DESC"

        Return strSQL
    End Function
End Class
