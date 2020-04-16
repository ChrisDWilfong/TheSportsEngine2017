Public Class clsHTML


    Shared Function GetResults(ByVal intYear As Integer, ByVal strState As String, ByVal strClass As String, ByVal strSportDisplay As String, ByVal strSchool As String, ByVal strSchoolRU As String, ByVal strScore As String)
        ' TODO : NEW...
        Dim strResult As String

        If strClass = "ALL" Then
            strResult = intYear
        Else
            strResult = intYear & " Class " & strClass
        End If
        strResult = strResult & " " & strSportDisplay & " State Championship : "
        If strSchoolRU = "" Then
            strResult = strResult & " " & strSchool
        Else
            strResult = strResult & " " & strSchool & " over " & strSchoolRU
        End If
        If strScore = "" Then
        Else
            strResult = strResult & " " & strScore
        End If

        Return strResult

    End Function

    Shared Function GetState(strStateIn As Object) As String
        Dim strState As String = "OK"

        If strStateIn Is Nothing Then
            strState = "OK"
        Else
            If strStateIn = "" Then
                strState = "OK"
            Else
                Select Case strStateIn
                    Case "OK"
                        strState = "OK"
                    Case "CO"
                        strState = "CO"
                    Case Else
                        strState = "OK"
                End Select
            End If
        End If
        Return strState
    End Function
    Shared Function GetRandomHTML() As String
        Dim strReturn As String = ""
        Dim strSQL As String
        Dim ds As DataSet

        strSQL = "SELECT TOP 100 Id, strResults, strHTML FROM tblStateChampions WHERE Not strHTML Is Null AND strState = 'OK'"
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            Dim RandomClass As New Random
            Dim RandomNumber As Integer
            Dim intMax As Integer = ds.Tables(0).Rows.Count - 1
            RandomNumber = RandomClass.Next(intMax)
            strReturn = strReturn & "<tr style='width='100%'><td><b>-&nbsp;<a href='" & ds.Tables(0).Rows(RandomNumber).Item("strHTML") & "' target='_blank'>" & ds.Tables(0).Rows(RandomNumber).Item("strResults") & "</a></b></td></tr>"
            RandomNumber = RandomClass.Next(intMax)
            strReturn = strReturn & "<tr style='width='100%'><td><b>-&nbsp;<a href='" & ds.Tables(0).Rows(RandomNumber).Item("strHTML") & "' target='_blank'>" & ds.Tables(0).Rows(RandomNumber).Item("strResults") & "</a></b></td></tr>"
            RandomNumber = RandomClass.Next(intMax)
            strReturn = strReturn & "<tr style='width='100%'><td><b>-&nbsp;<a href='" & ds.Tables(0).Rows(RandomNumber).Item("strHTML") & "' target='_blank'>" & ds.Tables(0).Rows(RandomNumber).Item("strResults") & "</a></b></td></tr>"
        End If

        Return strReturn
    End Function

    Shared Function GetDecadeContentHTML(ByVal strDecade As String, ByVal strSportGenderKey As String, ByVal strHomeURL As String, strState As String) As String
        Dim strHTML As String = ""
        Dim strDecadeContent As String = ""
        Dim strDecadeLeft As String = ""
        Dim strDecadeStart As String = ""
        Dim intDecadeStart As Integer
        Dim strDecadeEnd As String
        Dim intDecadeEnd As String
        Dim strSQL As String
        Dim ds As DataSet
        Dim x As Integer
        Dim strYear As String

        strDecadeLeft = Left(strDecade, 3)
        strDecadeStart = Left(strDecade, 4)
        intDecadeStart = CInt(strDecadeStart)

        strDecadeEnd = Mid(strDecade, 6, 4)
        intDecadeEnd = CInt(strDecadeEnd)

        Dim strForeColor As String = "white"
        Dim strBackColor As String = "black"

        strSQL = "SELECT Id, strSportGenderKey, CAST(intYear AS varchar(4)) AS strYear, strSchool, idSchool, strClass, strResults, strState FROM tblStateChampions "
        strSQL = strSQL & "WHERE (intYear >= " & intDecadeStart & " AND intYear <= " & intDecadeEnd & ") AND strState = '" & strState & "' AND strSportGenderKey = '" & strSportGenderKey & "' ORDER BY intYear DESC, strClass"

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            strYear = ""
            For x = 0 To ds.Tables(0).Rows.Count - 1
                If strYear <> ds.Tables(0).Rows(x).Item("strYear").ToString Then
                    If strHTML = "<table>" Then
                    Else
                        ' Close the previous row...
                        strHTML = strHTML & "</td></tr>"
                    End If
                    strHTML = strHTML & "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & ";' width='100%'><td><b>&nbsp;" & ds.Tables(0).Rows(x).Item("strYear").ToString & "</b></td></tr>"
                    strYear = ds.Tables(0).Rows(x).Item("strYear").ToString
                    strHTML = strHTML & "<tr><td>"
                End If
                strHTML = strHTML & "<a href='" & strHomeURL & "?id=" & ds.Tables(0).Rows(x).Item("id").ToString & "&year=1&st=" & ds.Tables(0).Rows(x).Item("strState") & "' ToolTip='" & ds.Tables(0).Rows(x).Item("strResults").ToString & "'>" & ds.Tables(0).Rows(x).Item("strClass").ToString & "-" & ds.Tables(0).Rows(x).Item("strSchool").ToString & "</a>&nbsp;-&nbsp;"
            Next
        End If

        Return strHTML

    End Function

    Public Shared Function GetSchoolContentHTML(ByVal strSchool As String) As String
        Dim strSchoolContent As String = ""
        Dim strNoneKey As String = "<tr><td>&nbsp;&nbsp;None</td></tr>"
        Dim strSQL As String
        Dim ds As DataSet
        Dim x As Integer

        Dim strForeColor As String = "white"
        Dim strBackColor As String = "navy"

        Dim strBaseballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Baseball</b></td></tr>"
        Dim strBasketballBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Boys Basketball</b></td></tr>"
        Dim strBasketballGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Girls Basketball</b></td></tr>"
        Dim strFootballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Football</b></td></tr>"
        'Dim strFootballPre As String = "<tr class='RowHeader'><td><b>&nbsp;Football</b></td></tr>"
        Dim strFPSoftballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Fast Pitch Softball</b></td></tr>"
        Dim strSPSoftballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Slow Pitch Softball</b></td></tr>"
        Dim strVolleyballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Volleyball</b></td></tr>"
        Dim strCheerleadingPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Cheerleading</b></td></tr>"
        Dim strBaseball As String = ""
        Dim strBasketballBoys As String = ""
        Dim strBasketballGirls As String = ""
        Dim strFootball As String = ""
        Dim strFPSoftball As String = ""
        Dim strSPSoftball As String = ""
        Dim strVolleyball As String = ""
        Dim strCheerleading As String = ""
        Dim intCountBaseball As Integer = 0
        Dim intCountBasketballBoys As Integer = 0
        Dim intCountBasketballGirls As Integer = 0
        Dim intCountFootball As Integer = 0
        Dim intCountFPSoftball As Integer = 0
        Dim intCountSPSoftball As Integer = 0
        Dim intCountVolleyball As Integer = 0
        Dim intCountCheerleading As Integer = 0

        Dim strBaseballFallPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Fall Baseball</b></td></tr>"
        Dim strBaseballFall As String = ""
        Dim intCountBaseballFall As Integer = 0

        Dim strCrossCountryBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Boys Cross Country</b></td></tr>"
        Dim strCrossCountryBoys As String = ""
        Dim intCountCrossCountryBoys As Integer = 0

        Dim strCrossCountryGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Girls Cross Country</b></td></tr>"
        Dim strCrossCountryGirls As String = ""
        Dim intCountCrossCountryGirls As Integer = 0

        Dim strGolfBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Boys Golf</b></td></tr>"
        Dim strGolfBoys As String = ""
        Dim intCountGolfBoys As Integer = 0

        Dim strGolfGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Girls Golf</b></td></tr>"
        Dim strGolfGirls As String = ""
        Dim intCountGolfGirls As Integer = 0

        Dim strSoccerBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Boys Soccer</b></td></tr>"
        Dim strSoccerBoys As String = ""
        Dim intCountSoccerBoys As Integer = 0

        Dim strSoccerGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Girls Soccer</b></td></tr>"
        Dim strSoccerGirls As String = ""
        Dim intCountSoccerGirls As Integer = 0

        Dim strSwimmingBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Boys Swimming</b></td></tr>"
        Dim strSwimmingBoys As String = ""
        Dim intCountSwimmingBoys As Integer = 0

        Dim strSwimmingGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Girls Swimming</b></td></tr>"
        Dim strSwimmingGirls As String = ""
        Dim intCountSwimmingGirls As Integer = 0

        Dim strTennisBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Boys Tennis</b></td></tr>"
        Dim strTennisBoys As String = ""
        Dim intCountTennisBoys As Integer = 0

        Dim strTennisGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Girls Tennis</b></td></tr>"
        Dim strTennisGirls As String = ""
        Dim intCountTennisGirls As Integer = 0

        Dim strTrackBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Boys Track</b></td></tr>"
        Dim strTrackBoys As String = ""
        Dim intCountTrackBoys As Integer = 0

        Dim strTrackGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Girls Track</b></td></tr>"
        Dim strTrackGirls As String = ""
        Dim intCountTrackGirls As Integer = 0

        Dim strWrestlingPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Wrestling</b></td></tr>"
        Dim strWrestling As String = ""
        Dim intCountWrestling As Integer = 0

        Dim strWrestlingDualPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%;'><td><b>&nbsp;Wrestling Dual</b></td></tr>"
        Dim strWrestlingDual As String = ""
        Dim intCountWrestlingDual As Integer = 0

        Dim intMod As Integer = 12

        strSQL = "SELECT Id, strSportGenderKey, intYear, strSchool, idSchool, strClass, strResults FROM tblStateChampions "
        strSQL = strSQL & "WHERE (strSchool = '" & strSchool & "') AND strState = '" & clsHTML.GetState("OK") & "' ORDER BY strSportGenderKey, intYear"

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            For x = 0 To ds.Tables(0).Rows.Count - 1
                With ds.Tables(0).Rows(x)
                    Select Case .Item("strSportGenderKey")
                        Case "Baseball"
                            intCountBaseball = intCountBaseball + 1
                            'strBaseball = strBaseball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strBaseball = strBaseball & .Item("intYear") & "&nbsp;"
                            If intCountBaseball Mod intMod = 0 Then strBaseball = strBaseball & "<br>"
                        Case "BaseballFall"
                            intCountBaseballFall = intCountBaseballFall + 1
                            'strBaseballFall = strBaseballFall & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strBaseballFall = strBaseballFall & .Item("intYear") & "&nbsp;"
                            If intCountBaseballFall Mod intMod = 0 Then strBaseballFall = strBaseballFall & "<br>"
                        Case "BasketballBoys"
                            intCountBasketballBoys = intCountBasketballBoys + 1
                            'strBasketballBoys = strBasketballBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strBasketballBoys = strBasketballBoys & .Item("intYear") & "&nbsp;"
                            If intCountBasketballBoys Mod intMod = 0 Then strBasketballBoys = strBasketballBoys & "<br>"
                        Case "BasketballGirls"
                            intCountBasketballGirls = intCountBasketballGirls + 1
                            'strBasketballGirls = strBasketballGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strBasketballGirls = strBasketballGirls & .Item("intYear") & "&nbsp;"
                            If intCountBasketballGirls Mod intMod = 0 Then strBasketballGirls = strBasketballGirls & "<br>"
                        Case "Cheerleading"
                            intCountCheerleading = intCountCheerleading + 1
                            'strCheerleading = strCheerleading & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strCheerleading = strCheerleading & .Item("intYear") & "&nbsp;"
                            If intCountCheerleading Mod intMod = 0 Then strCheerleading = strCheerleading & "<br>"
                        Case "CrossCountryBoys"
                            intCountCrossCountryBoys = intCountCrossCountryBoys + 1
                            'strCrossCountryBoys = strCrossCountryBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strCrossCountryBoys = strCrossCountryBoys & .Item("intYear") & "&nbsp;"
                            If intCountCrossCountryBoys Mod intMod = 0 Then strCrossCountryBoys = strCrossCountryBoys & "<br>"
                        Case "CrossCountryGirls"
                            intCountCrossCountryGirls = intCountCrossCountryGirls + 1
                            'strCrossCountryGirls = strCrossCountryGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strCrossCountryGirls = strCrossCountryGirls & .Item("intYear") & "&nbsp;"
                            If intCountCrossCountryGirls Mod intMod = 0 Then strCrossCountryGirls = strCrossCountryGirls & "<br>"
                        Case "Football"
                            intCountFootball = intCountFootball + 1
                            'strFootball = strFootball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strFootball = strFootball & .Item("intYear") & "&nbsp;"
                            If intCountFootball Mod intMod = 0 Then strFootball = strFootball & "<br>"
                        Case "FPSoftball"
                            intCountFPSoftball = intCountFPSoftball + 1
                            'strFPSoftball = strFPSoftball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strFPSoftball = strFPSoftball & .Item("intYear") & "&nbsp;"
                            If intCountFPSoftball Mod intMod = 0 Then strFPSoftball = strFPSoftball & "<br>"
                        Case "GolfBoys"
                            intCountGolfBoys = intCountGolfBoys + 1
                            'strGolfBoys = strGolfBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strGolfBoys = strGolfBoys & .Item("intYear") & "&nbsp;"
                            If intCountGolfBoys Mod intMod = 0 Then strGolfBoys = strGolfBoys & "<br>"
                        Case "GolfGirls"
                            intCountGolfGirls = intCountGolfGirls + 1
                            'strGolfGirls = strGolfGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strGolfGirls = strGolfGirls & .Item("intYear") & "&nbsp;"
                            If intCountGolfGirls Mod intMod = 0 Then strGolfGirls = strGolfGirls & "<br>"
                        Case "SPSoftball"
                            intCountSPSoftball = intCountSPSoftball + 1
                            'strSPSoftball = strSPSoftball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strSPSoftball = strSPSoftball & .Item("intYear") & "&nbsp;"
                            If intCountSPSoftball Mod intMod = 0 Then strSPSoftball = strSPSoftball & "<br>"
                        Case "SoccerBoys"
                            intCountSoccerBoys = intCountSoccerBoys + 1
                            'strSoccerBoys = strSoccerBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strSoccerBoys = strSoccerBoys & .Item("intYear") & "&nbsp;"
                            If intCountSoccerBoys Mod intMod = 0 Then strSoccerBoys = strSoccerBoys & "<br>"
                        Case "SoccerGirls"
                            intCountSoccerGirls = intCountSoccerGirls + 1
                            'strSoccerGirls = strSoccerGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strSoccerGirls = strSoccerGirls & .Item("intYear") & "&nbsp;"
                            If intCountSoccerGirls Mod intMod = 0 Then strSoccerGirls = strSoccerGirls & "<br>"
                        Case "SwimmingBoys"
                            intCountSwimmingBoys = intCountSwimmingBoys + 1
                            'strSwimmingBoys = strSwimmingBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strSwimmingBoys = strSwimmingBoys & .Item("intYear") & "&nbsp;"
                            If intCountSwimmingBoys Mod intMod = 0 Then strSwimmingBoys = strSwimmingBoys & "<br>"
                        Case "SwimmingGirls"
                            intCountSwimmingGirls = intCountSwimmingGirls + 1
                            'strSwimmingGirls = strSwimmingGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strSwimmingGirls = strSwimmingGirls & .Item("intYear") & "&nbsp;"
                            If intCountSwimmingGirls Mod intMod = 0 Then strSwimmingGirls = strSwimmingGirls & "<br>"
                        Case "TennisBoys"
                            intCountTennisBoys = intCountTennisBoys + 1
                            'strTennisBoys = strTennisBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strTennisBoys = strTennisBoys & .Item("intYear") & "&nbsp;"
                            If intCountTennisBoys Mod intMod = 0 Then strTennisBoys = strTennisBoys & "<br>"
                        Case "TennisGirls"
                            intCountTennisGirls = intCountTennisGirls + 1
                            'strTennisGirls = strTennisGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strTennisGirls = strTennisGirls & .Item("intYear") & "&nbsp;"
                            If intCountTennisGirls Mod intMod = 0 Then strTennisGirls = strTennisGirls & "<br>"
                        Case "TrackBoys"
                            intCountTrackBoys = intCountTrackBoys + 1
                            'strTrackBoys = strTrackBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strTrackBoys = strTrackBoys & .Item("intYear") & "&nbsp;"
                            If intCountTrackBoys Mod intMod = 0 Then strTrackBoys = strTrackBoys & "<br>"
                        Case "TrackGirls"
                            intCountTrackGirls = intCountTrackGirls + 1
                            'strTrackGirls = strTrackGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strTrackGirls = strTrackGirls & .Item("intYear") & "&nbsp;"
                            If intCountTrackGirls Mod intMod = 0 Then strTrackGirls = strTrackGirls & "<br>"
                        Case "Volleyball"
                            intCountVolleyball = intCountVolleyball + 1
                            'strVolleyball = strVolleyball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strVolleyball = strVolleyball & .Item("intYear") & "&nbsp;"
                            If intCountVolleyball Mod intMod = 0 Then strVolleyball = strVolleyball & "<br>"
                        Case "Wrestling"
                            intCountWrestling = intCountWrestling + 1
                            'strWrestling = strWrestling & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strWrestling = strWrestling & .Item("intYear") & "&nbsp;"
                            If intCountWrestling Mod intMod = 0 Then strWrestling = strWrestling & "<br>"
                        Case "WrestlingDual"
                            intCountWrestlingDual = intCountWrestlingDual + 1
                            'strWrestlingDual = strWrestlingDual & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1' ToolTip='" & .Item("strResults") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            strWrestlingDual = strWrestlingDual & .Item("intYear") & "&nbsp;"
                            If intCountWrestlingDual Mod intMod = 0 Then strWrestlingDual = strWrestlingDual & "<br>"
                        Case Else
                    End Select

                End With
            Next
        End If

        ' Finish up...
        If strBaseball = "" Then
            'strBaseball = strBaseballPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strBaseball = strBaseballPre & "<tr><td>" & strBaseball & "</td></tr>"
        End If

        If strBaseballFall = "" Then
            'strBaseballFall = strBaseballFallPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strBaseballFall = strBaseballFallPre & "<tr><td>" & strBaseballFall & "</td></tr>"
        End If

        If strBasketballBoys = "" Then
            'strBasketballBoys = strBasketballBoysPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strBasketballBoys = strBasketballBoysPre & "<tr><td>" & strBasketballBoys & "</td></tr>"
        End If

        If strBasketballGirls = "" Then
            'strBasketballGirls = strBasketballGirlsPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strBasketballGirls = strBasketballGirlsPre & "<tr><td>" & strBasketballGirls & "</td></tr>"
        End If

        If strCheerleading = "" Then
            'strCheerleading = strCheerleadingPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strCheerleading = strCheerleadingPre & "<tr><td>" & strCheerleading & "</td></tr>"
        End If

        If strCrossCountryBoys = "" Then
            'strCrossCountryBoys = strCrossCountryBoysPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strCrossCountryBoys = strCrossCountryBoysPre & "<tr><td>" & strCrossCountryBoys & "</td></tr>"
        End If

        If strCrossCountryGirls = "" Then
            'strCrossCountryGirls = strCrossCountryGirlsPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strCrossCountryGirls = strCrossCountryGirlsPre & "<tr><td>" & strCrossCountryGirls & "</td></tr>"
        End If

        If strFootball = "" Then
            'strFootball = strFootballPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strFootball = strFootballPre & "<tr><td>" & strFootball & "</td></tr>"
        End If

        If strGolfBoys = "" Then
            'strGolfBoys = strGolfBoysPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strGolfBoys = strGolfBoysPre & "<tr><td>" & strGolfBoys & "</td></tr>"
        End If

        If strGolfGirls = "" Then
            'strGolfGirls = strGolfGirlsPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strGolfGirls = strGolfGirlsPre & "<tr><td>" & strGolfGirls & "</td></tr>"
        End If

        If strSoccerBoys = "" Then
            'strSoccerBoys = strSoccerBoysPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strSoccerBoys = strSoccerBoysPre & "<tr><td>" & strSoccerBoys & "</td></tr>"
        End If

        If strSoccerGirls = "" Then
            'strSoccerGirls = strSoccerGirlsPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strSoccerGirls = strSoccerGirlsPre & "<tr><td>" & strSoccerGirls & "</td></tr>"
        End If

        If strSwimmingBoys = "" Then
        Else
            strSwimmingBoys = strSwimmingBoysPre & "<tr><td>" & strSwimmingBoys & "</td></tr>"
        End If

        If strSwimmingGirls = "" Then
        Else
            strSwimmingGirls = strSwimmingGirlsPre & "<tr><td>" & strSwimmingGirls & "</td></tr>"
        End If

        If strSPSoftball = "" Then
            'strSPSoftball = strSPSoftballPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strSPSoftball = strSPSoftballPre & "<tr><td>" & strSPSoftball & "</td></tr>"
        End If

        If strFPSoftball = "" Then
            'strFPSoftball = strFPSoftballPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strFPSoftball = strFPSoftballPre & "<tr><td>" & strFPSoftball & "</td></tr>"
        End If

        If strTennisBoys = "" Then
            'strTennisBoys = strTennisBoysPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strTennisBoys = strTennisBoysPre & "<tr><td>" & strTennisBoys & "</td></tr>"
        End If

        If strTennisGirls = "" Then
            'strTennisGirls = strTennisGirlsPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strTennisGirls = strTennisGirlsPre & "<tr><td>" & strTennisGirls & "</td></tr>"
        End If

        If strTrackBoys = "" Then
            'strTrackBoys = strTrackBoysPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strTrackBoys = strTrackBoysPre & "<tr><td>" & strTrackBoys & "</td></tr>"
        End If

        If strTrackGirls = "" Then
            'strTrackGirls = strTrackGirlsPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strTrackGirls = strTrackGirlsPre & "<tr><td>" & strTrackGirls & "</td></tr>"
        End If

        If strVolleyball = "" Then
            'strVolleyball = strVolleyballPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strVolleyball = strVolleyballPre & "<tr><td>" & strVolleyball & "</td></tr>"
        End If

        If strWrestling = "" Then
            'strWrestling = strWrestlingPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strWrestling = strWrestlingPre & "<tr><td>" & strWrestling & "</td></tr>"
        End If

        If strWrestlingDual = "" Then
            'strWrestlingDual = strWrestlingDualPre & "<tr><td><span style='font-weight:normal;'>None</span></td></tr>"
        Else
            strWrestlingDual = strWrestlingDualPre & "<tr><td>" & strWrestlingDual & "</td></tr>"
        End If

        strSchoolContent = "<table>"
        strSchoolContent = strSchoolContent & strBaseball
        strSchoolContent = strSchoolContent & strBaseballFall
        strSchoolContent = strSchoolContent & strBasketballBoys
        strSchoolContent = strSchoolContent & strBasketballGirls
        strSchoolContent = strSchoolContent & strCheerleading
        strSchoolContent = strSchoolContent & strCrossCountryBoys
        strSchoolContent = strSchoolContent & strCrossCountryGirls
        strSchoolContent = strSchoolContent & strFPSoftball
        strSchoolContent = strSchoolContent & strFootball
        strSchoolContent = strSchoolContent & strGolfBoys
        strSchoolContent = strSchoolContent & strGolfGirls
        strSchoolContent = strSchoolContent & strSPSoftball
        strSchoolContent = strSchoolContent & strSoccerBoys
        strSchoolContent = strSchoolContent & strSoccerGirls
        strSchoolContent = strSchoolContent & strSwimmingBoys
        strSchoolContent = strSchoolContent & strSwimmingGirls
        strSchoolContent = strSchoolContent & strTennisBoys
        strSchoolContent = strSchoolContent & strTennisGirls
        strSchoolContent = strSchoolContent & strTrackBoys
        strSchoolContent = strSchoolContent & strTrackGirls
        strSchoolContent = strSchoolContent & strVolleyball
        strSchoolContent = strSchoolContent & strWrestling
        strSchoolContent = strSchoolContent & strWrestlingDual
        strSchoolContent = strSchoolContent & "<tr><td>________________________________________________________________________________</td></tr>"
        strSchoolContent = strSchoolContent & "</table>"

        Return strSchoolContent

    End Function

    Shared Function GetYearContentHTML(ByVal strYear As String, strSchool As String, ByVal strHomeURL As String, strState As String) As String
        Dim strSchoolContent As String = ""
        Dim strNoneKey As String = "<tr><td>&nbsp;&nbsp;None</td></tr>"
        Dim strSQL As String
        Dim ds As DataSet
        Dim x As Integer

        Dim strForeColor As String = "white"
        Dim strBackColor As String = "navy"

        Dim strBaseballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Baseball</b></td></tr>"
        Dim strBasketballBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Boys Basketball</b></td></tr>"
        Dim strBasketballGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Girls Basketball</b></td></tr>"
        Dim strFootballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Football</b></td></tr>"
        Dim strFPSoftballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Fast Pitch Softball</b></td></tr>"
        Dim strSPSoftballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Slow Pitch Softball</b></td></tr>"
        Dim strVolleyballPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Volleyball</b></td></tr>"
        Dim strCheerleadingPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Cheerleading</b></td></tr>"
        Dim strBaseball As String = ""
        Dim strBasketballBoys As String = ""
        Dim strBasketballGirls As String = ""
        Dim strFootball As String = ""
        Dim strFPSoftball As String = ""
        Dim strSPSoftball As String = ""
        Dim strVolleyball As String = ""
        Dim strCheerleading As String = ""
        Dim intCountBaseball As Integer = 0
        Dim intCountBasketballBoys As Integer = 0
        Dim intCountBasketballGirls As Integer = 0
        Dim intCountFootball As Integer = 0
        Dim intCountFPSoftball As Integer = 0
        Dim intCountSPSoftball As Integer = 0
        Dim intCountVolleyball As Integer = 0
        Dim intCountCheerleading As Integer = 0

        Dim strBaseballFallPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Fall Baseball</b></td></tr>"
        Dim strBaseballFall As String = ""
        Dim intCountBaseballFall As Integer = 0

        Dim strCrossCountryBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Boys Cross Country</b></td></tr>"
        Dim strCrossCountryBoys As String = ""
        Dim intCountCrossCountryBoys As Integer = 0

        Dim strCrossCountryGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Girls Cross Country</b></td></tr>"
        Dim strCrossCountryGirls As String = ""
        Dim intCountCrossCountryGirls As Integer = 0

        Dim strGolfBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Boys Golf</b></td></tr>"
        Dim strGolfBoys As String = ""
        Dim intCountGolfBoys As Integer = 0

        Dim strGolfGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Girls Golf</b></td></tr>"
        Dim strGolfGirls As String = ""
        Dim intCountGolfGirls As Integer = 0

        Dim strSoccerBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Boys Soccer</b></td></tr>"
        Dim strSoccerBoys As String = ""
        Dim intCountSoccerBoys As Integer = 0

        Dim strSoccerGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Girls Soccer</b></td></tr>"
        Dim strSoccerGirls As String = ""
        Dim intCountSoccerGirls As Integer = 0

        Dim strSwimmingBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Boys Swimming</b></td></tr>"
        Dim strSwimmingBoys As String = ""
        Dim intCountSwimmingBoys As Integer = 0

        Dim strSwimmingGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Girls Swimming</b></td></tr>"
        Dim strSwimmingGirls As String = ""
        Dim intCountSwimmingGirls As Integer = 0

        Dim strTennisBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Boys Tennis</b></td></tr>"
        Dim strTennisBoys As String = ""
        Dim intCountTennisBoys As Integer = 0

        Dim strTennisGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Girls Tennis</b></td></tr>"
        Dim strTennisGirls As String = ""
        Dim intCountTennisGirls As Integer = 0

        Dim strTrackBoysPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Boys Track</b></td></tr>"
        Dim strTrackBoys As String = ""
        Dim intCountTrackBoys As Integer = 0

        Dim strTrackGirlsPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Girls Track</b></td></tr>"
        Dim strTrackGirls As String = ""
        Dim intCountTrackGirls As Integer = 0

        Dim strWrestlingPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Wrestling</b></td></tr>"
        Dim strWrestling As String = ""
        Dim intCountWrestling As Integer = 0

        Dim strWrestlingDualPre As String = "<tr style='background-color:" & strBackColor & "; color:" & strForeColor & "; width=100%'><td><b>&nbsp;Wrestling Dual</b></td></tr>"
        Dim strWrestlingDual As String = ""
        Dim intCountWrestlingDual As Integer = 0


        Dim intMod As Integer = 100

        strSQL = "SELECT Id, strSportGenderKey, intYear, strSchool, idSchool, strClass, strResults, strState FROM tblStateChampions "
        strSQL = strSQL & "WHERE (intYear = '" & CInt(strYear) & "') AND strState = '" & strState & "' ORDER BY strSportGenderKey, intYear"

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            For x = 0 To ds.Tables(0).Rows.Count - 1
                With ds.Tables(0).Rows(x)
                    Select Case .Item("strSportGenderKey")
                        Case "Baseball"
                            intCountBaseball = intCountBaseball + 1
                            'strBaseball = strBaseball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strBaseball = strBaseball & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountBaseball Mod intMod = 0 Then strBaseball = strBaseball & "<br>"
                        Case "BaseballFall"
                            intCountBaseballFall = intCountBaseballFall + 1
                            'strBaseballFall = strBaseballFall & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strBaseballFall = strBaseballFall & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountBaseballFall Mod intMod = 0 Then strBaseballFall = strBaseballFall & "<br>"
                        Case "BasketballBoys"
                            intCountBasketballBoys = intCountBasketballBoys + 1
                            'strBasketballBoys = strBasketballBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strBasketballBoys = strBasketballBoys & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountBasketballBoys Mod intMod = 0 Then strBasketballBoys = strBasketballBoys & "<br>"
                        Case "BasketballGirls"
                            intCountBasketballGirls = intCountBasketballGirls + 1
                            'strBasketballGirls = strBasketballGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strBasketballGirls = strBasketballGirls & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountBasketballGirls Mod intMod = 0 Then strBasketballGirls = strBasketballGirls & "<br>"
                        Case "Cheerleading"
                            intCountCheerleading = intCountCheerleading + 1
                            'strCheerleading = strCheerleading & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strCheerleading = strCheerleading & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountCheerleading Mod intMod = 0 Then strCheerleading = strCheerleading & "<br>"
                        Case "CrossCountryBoys"
                            intCountCrossCountryBoys = intCountCrossCountryBoys + 1
                            'strCrossCountryBoys = strCrossCountryBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strCrossCountryBoys = strCrossCountryBoys & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountCrossCountryBoys Mod intMod = 0 Then strCrossCountryBoys = strCrossCountryBoys & "<br>"
                        Case "CrossCountryGirls"
                            intCountCrossCountryGirls = intCountCrossCountryGirls + 1
                            'strCrossCountryGirls = strCrossCountryGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strCrossCountryGirls = strCrossCountryGirls & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountCrossCountryGirls Mod intMod = 0 Then strCrossCountryGirls = strCrossCountryGirls & "<br>"
                        Case "Football"
                            intCountFootball = intCountFootball + 1
                            'strFootball = strFootball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strFootball = strFootball & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountFootball Mod intMod = 0 Then strFootball = strFootball & "<br>"
                        Case "FPSoftball"
                            intCountFPSoftball = intCountFPSoftball + 1
                            'strFPSoftball = strFPSoftball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strFPSoftball = strFPSoftball & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountFPSoftball Mod intMod = 0 Then strFPSoftball = strFPSoftball & "<br>"
                        Case "GolfBoys"
                            intCountGolfBoys = intCountGolfBoys + 1
                            'strGolfBoys = strGolfBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strGolfBoys = strGolfBoys & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountGolfBoys Mod intMod = 0 Then strGolfBoys = strGolfBoys & "<br>"
                        Case "GolfGirls"
                            intCountGolfGirls = intCountGolfGirls + 1
                            'strGolfGirls = strGolfGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strGolfGirls = strGolfGirls & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountGolfGirls Mod intMod = 0 Then strGolfGirls = strGolfGirls & "<br>"
                        Case "SPSoftball"
                            intCountSPSoftball = intCountSPSoftball + 1
                            'strSPSoftball = strSPSoftball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strSPSoftball = strSPSoftball & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountSPSoftball Mod intMod = 0 Then strSPSoftball = strSPSoftball & "<br>"
                        Case "SoccerBoys"
                            intCountSoccerBoys = intCountSoccerBoys + 1
                            'strSoccerBoys = strSoccerBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strSoccerBoys = strSoccerBoys & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountSoccerBoys Mod intMod = 0 Then strSoccerBoys = strSoccerBoys & "<br>"
                        Case "SoccerGirls"
                            intCountSoccerGirls = intCountSoccerGirls + 1
                            'strSoccerGirls = strSoccerGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strSoccerGirls = strSoccerGirls & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountSoccerGirls Mod intMod = 0 Then strSoccerGirls = strSoccerGirls & "<br>"
                        Case "SwimmingBoys"
                            intCountSwimmingBoys = intCountSwimmingBoys + 1
                            'strSwimmingBoys = strSwimmingBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strSwimmingBoys = strSwimmingBoys & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountSwimmingBoys Mod intMod = 0 Then strSwimmingBoys = strSwimmingBoys & "<br>"
                        Case "SwimmingGirls"
                            intCountSwimmingGirls = intCountSwimmingGirls + 1
                            'strSwimmingGirls = strSwimmingGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strSwimmingGirls = strSwimmingGirls & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountSwimmingGirls Mod intMod = 0 Then strSwimmingGirls = strSwimmingGirls & "<br>"
                        Case "TennisBoys"
                            intCountTennisBoys = intCountTennisBoys + 1
                            'strTennisBoys = strTennisBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strTennisBoys = strTennisBoys & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountTennisBoys Mod intMod = 0 Then strTennisBoys = strTennisBoys & "<br>"
                        Case "TennisGirls"
                            intCountTennisGirls = intCountTennisGirls + 1
                            'strTennisGirls = strTennisGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strTennisGirls = strTennisGirls & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountTennisGirls Mod intMod = 0 Then strTennisGirls = strTennisGirls & "<br>"
                        Case "TrackBoys"
                            intCountTrackBoys = intCountTrackBoys + 1
                            'strTrackBoys = strTrackBoys & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strTrackBoys = strTrackBoys & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountTrackBoys Mod intMod = 0 Then strTrackBoys = strTrackBoys & "<br>"
                        Case "TrackGirls"
                            intCountTrackGirls = intCountTrackGirls + 1
                            'strTrackGirls = strTrackGirls & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strTrackGirls = strTrackGirls & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountTrackGirls Mod intMod = 0 Then strTrackGirls = strTrackGirls & "<br>"
                        Case "Volleyball"
                            intCountVolleyball = intCountVolleyball + 1
                            'strVolleyball = strVolleyball & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strVolleyball = strVolleyball & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountVolleyball Mod intMod = 0 Then strVolleyball = strVolleyball & "<br>"
                        Case "Wrestling"
                            intCountWrestling = intCountWrestling + 1
                            'strWrestling = strWrestling & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strWrestling = strWrestling & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountWrestling Mod intMod = 0 Then strWrestling = strWrestling & "<br>"
                        Case "WrestlingDual"
                            intCountWrestlingDual = intCountWrestlingDual + 1
                            'strWrestlingDual = strWrestlingDual & "<a href='" & strHomeURL & "?id=" & .Item("id") & "&year=1&st=" & .Item("strState") & "' ToolTip='" & .Item("strResults") & "'>" & .Item("strClass") & "-" & .Item("strSchool") & "</a>&nbsp;-&nbsp;"
                            strWrestlingDual = strWrestlingDual & .Item("strClass") & "-" & .Item("strSchool") & "&nbsp;-&nbsp;"
                            If intCountWrestlingDual Mod intMod = 0 Then strWrestlingDual = strWrestlingDual & "<br>"
                        Case Else
                    End Select

                End With
            Next
        End If

        ' Finish up...
        If strBaseball = "" Then
        Else
            strBaseball = strBaseballPre & "<tr><td>" & strBaseball & "</td></tr>"
        End If

        If strBaseballFall = "" Then
        Else
            strBaseballFall = strBaseballFallPre & "<tr><td>" & strBaseballFall & "</td></tr>"
        End If

        If strBasketballBoys = "" Then
        Else
            strBasketballBoys = strBasketballBoysPre & "<tr><td>" & strBasketballBoys & "</td></tr>"
        End If

        If strBasketballGirls = "" Then
        Else
            strBasketballGirls = strBasketballGirlsPre & "<tr><td>" & strBasketballGirls & "</td></tr>"
        End If

        If strCheerleading = "" Then
        Else
            strCheerleading = strCheerleadingPre & "<tr><td>" & strCheerleading & "</td></tr>"
        End If

        If strCrossCountryBoys = "" Then
        Else
            strCrossCountryBoys = strCrossCountryBoysPre & "<tr><td>" & strCrossCountryBoys & "</td></tr>"
        End If

        If strCrossCountryGirls = "" Then
        Else
            strCrossCountryGirls = strCrossCountryGirlsPre & "<tr><td>" & strCrossCountryGirls & "</td></tr>"
        End If

        If strFootball = "" Then
        Else
            strFootball = strFootballPre & "<tr><td>" & strFootball & "</td></tr>"
        End If

        If strGolfBoys = "" Then
        Else
            strGolfBoys = strGolfBoysPre & "<tr><td>" & strGolfBoys & "</td></tr>"
        End If

        If strGolfGirls = "" Then
        Else
            strGolfGirls = strGolfGirlsPre & "<tr><td>" & strGolfGirls & "</td></tr>"
        End If

        If strSoccerBoys = "" Then
        Else
            strSoccerBoys = strSoccerBoysPre & "<tr><td>" & strSoccerBoys & "</td></tr>"
        End If

        If strSoccerGirls = "" Then
        Else
            strSoccerGirls = strSoccerGirlsPre & "<tr><td>" & strSoccerGirls & "</td></tr>"
        End If

        If strSwimmingBoys = "" Then
        Else
            strSwimmingBoys = strSwimmingBoysPre & "<tr><td>" & strSwimmingBoys & "</td></tr>"
        End If

        If strSwimmingGirls = "" Then
        Else
            strSwimmingGirls = strSwimmingGirlsPre & "<tr><td>" & strSwimmingGirls & "</td></tr>"
        End If

        If strSPSoftball = "" Then
        Else
            strSPSoftball = strSPSoftballPre & "<tr><td>" & strSPSoftball & "</td></tr>"
        End If

        If strFPSoftball = "" Then
        Else
            strFPSoftball = strFPSoftballPre & "<tr><td>" & strFPSoftball & "</td></tr>"
        End If

        If strTennisBoys = "" Then
        Else
            strTennisBoys = strTennisBoysPre & "<tr><td>" & strTennisBoys & "</td></tr>"
        End If

        If strTennisGirls = "" Then
        Else
            strTennisGirls = strTennisGirlsPre & "<tr><td>" & strTennisGirls & "</td></tr>"
        End If

        If strTrackBoys = "" Then
        Else
            strTrackBoys = strTrackBoysPre & "<tr><td>" & strTrackBoys & "</td></tr>"
        End If

        If strTrackGirls = "" Then
        Else
            strTrackGirls = strTrackGirlsPre & "<tr><td>" & strTrackGirls & "</td></tr>"
        End If

        If strVolleyball = "" Then
        Else
            strVolleyball = strVolleyballPre & "<tr><td>" & strVolleyball & "</td></tr>"
        End If

        If strWrestling = "" Then
        Else
            strWrestling = strWrestlingPre & "<tr><td>" & strWrestling & "</td></tr>"
        End If

        If strWrestlingDual = "" Then
        Else
            strWrestlingDual = strWrestlingDualPre & "<tr><td>" & strWrestlingDual & "</td></tr>"
        End If

        strSchoolContent = "<table>"
        strSchoolContent = strSchoolContent & strBaseball
        strSchoolContent = strSchoolContent & strBaseballFall
        strSchoolContent = strSchoolContent & strBasketballBoys
        strSchoolContent = strSchoolContent & strBasketballGirls
        strSchoolContent = strSchoolContent & strCheerleading
        strSchoolContent = strSchoolContent & strCrossCountryBoys
        strSchoolContent = strSchoolContent & strCrossCountryGirls
        strSchoolContent = strSchoolContent & strFPSoftball
        strSchoolContent = strSchoolContent & strFootball
        strSchoolContent = strSchoolContent & strGolfBoys
        strSchoolContent = strSchoolContent & strGolfGirls
        strSchoolContent = strSchoolContent & strSPSoftball
        strSchoolContent = strSchoolContent & strSoccerBoys
        strSchoolContent = strSchoolContent & strSoccerGirls
        strSchoolContent = strSchoolContent & strSwimmingBoys
        strSchoolContent = strSchoolContent & strSwimmingGirls
        strSchoolContent = strSchoolContent & strTennisBoys
        strSchoolContent = strSchoolContent & strTennisGirls
        strSchoolContent = strSchoolContent & strTrackBoys
        strSchoolContent = strSchoolContent & strTrackGirls
        strSchoolContent = strSchoolContent & strVolleyball
        strSchoolContent = strSchoolContent & strWrestling
        strSchoolContent = strSchoolContent & strWrestlingDual
        strSchoolContent = strSchoolContent & "<tr><td>________________________________________________________________________________</td></tr>"
        strSchoolContent = strSchoolContent & "</table>"

        Return strSchoolContent

    End Function


End Class
