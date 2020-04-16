Public Class clsStateChampions


    Shared Function GetSinceFirstYear(strState As String, strSportGenderKey As String) As String
        Dim strSQL As String = "SELECT TOP 1 intYearFirst FROM tblSports WHERE strSportGenderKey = '" & strSportGenderKey & "' AND strState = '" & strState & "'"
        Dim strReturn As String = ""

        If strSportGenderKey = "Gymnastics" Or strSportGenderKey = "Bowling" Or strSportGenderKey = "Skiing" Or strSportGenderKey = "CrossCountry" Or strSportGenderKey = "Golf" Or strSportGenderKey = "Lacrosse" Or strSportGenderKey = "Soccer" Or strSportGenderKey = "Swimming" Or strSportGenderKey = "Track" Or strSportGenderKey = "Tennis" Then
            strSQL = "SELECT TOP 1 intYearFirst FROM tblSports WHERE strSportGenderKey Like '" & strSportGenderKey & "%' AND strState = '" & strState & "' ORDER BY intYearFirst"
        End If

        Try
            strReturn = " (since " & SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL) & ")"
        Catch ex As Exception

        End Try

        Return strReturn
    End Function

    Shared Function GetSportsPageHeaderInfo(strKey As String, ByRef strHeaderDate As String, ByRef strResults As String) As String
        Dim strReturn As String = "OK"
        Dim strSQL As String = "SELECT * FROM viewStateChampionsDisplay WHERE idstrStateChampion = '" & strKey & "'"
        Dim ds As DataSet
        Dim intCount As Integer = 0

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            With ds.Tables(0).Rows(0)
                If .Item("datGame") Is System.DBNull.Value Then
                    strHeaderDate = .Item("strSport2") & " - " & .Item("intYear")
                Else
                    strHeaderDate = .Item("strSport2") & " - " & .Item("datGame")
                End If
                If .Item("strSchoolRU") Is System.DBNull.Value Then
                    strResults = .Item("strSchool") & " <br>" & .Item("intYear") & " Class " & .Item("strClass") & " STATE CHAMPIONS"
                ElseIf .Item("strSchoolRU") = "" Then
                    strResults = .Item("strSchool") & " <br>" & .Item("intYear") & " Class " & .Item("strClass") & " STATE CHAMPIONS"
                Else
                    strResults = .Item("strSchool") & " defeats " & .Item("strSchoolRU") & " " & .Item("strScore") & "<br>" & .Item("intYear") & " Class " & .Item("strClass") & " STATE CHAMPIONSHIP"
                End If
                strReturn = .Item("strSchool")
            End With
        End If

        Return strReturn
    End Function

    Shared Function GetStateChampionInfoFromID(id As Long, ByRef strState As String, ByRef strSportGenderKey As String, ByRef intYear As Integer, ByRef strClass As String) As String
        ' Added 3/21/2018...
        Dim strReturn As String = "OK"
        Dim ds As DataSet
        Dim strSQL As String = "SELECT * FROM tblStateChampions WHERE Id = " & id

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        strState = "OK"
        strSportGenderKey = ""
        intYear = 0
        strClass = ""

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            strState = ds.Tables(0).Rows(0).Item("strState")
            intYear = ds.Tables(0).Rows(0).Item("intYear")
            strClass = ds.Tables(0).Rows(0).Item("strClass")
            strSportGenderKey = ds.Tables(0).Rows(0).Item("strSportGenderKey")
        End If

        Return strReturn
    End Function
    Shared Function GetStateChampionIDKey(strState As String, strSportGenderKey As String, intYear As Integer, strClass As String, strSchool As String) As String
        ' Added 3/20/2018...
        Dim strKey As String = ""
        If strClass = "" Then
            If strSchool = "" Then
                strKey = strState & "_" & strSportGenderKey & "_" & intYear & "_ALL"
            Else
                strKey = strState & "_" & strSportGenderKey & "_" & intYear & "_ALL" & "_" & strSchool
            End If
        Else
            If strSchool = "" Then
                strKey = strState & "_" & strSportGenderKey & "_" & intYear & "_" & strClass
            Else
                strKey = strState & "_" & strSportGenderKey & "_" & intYear & "_" & strClass & "_" & strSchool
            End If
        End If

        Return strKey
    End Function

    Shared Function GetStateGamesHTML2017(strSQL As String, strSport As String, strForeColor As String) As String
        Dim strHTML As String = ""
        Dim intYear As Integer = 0
        Dim ds As DataSet

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
            strHTML = "<table style='width:95%;'><tr><td colspan=2><bbH1>NO STATE APPEARANCES</bbH1></td></tr>"
        ElseIf ds.Tables.Count = 0 Then
            strHTML = "<table style='width:95%;'><tr><td colspan=2><bbH1>NO STATE APPEARANCES</bbH1></td></tr>"
        ElseIf ds.Tables(0).Rows.Count = 0 Then
            strHTML = "<table style='width:95%;'><tr><td colspan=2><bbH1>NO STATE APPEARANCES</bbH1></td></tr>"
        Else
            strHTML = "<table style='width:95%;'>"
            For x = 0 To ds.Tables(0).Rows.Count - 1
                With ds.Tables(0).Rows(x)
                    strHTML = strHTML & "<tr>"
                    If .Item("strRound") = "Q" Or .Item("strRound") = "1" Or .Item("strRound") = "P" Or .Item("strRound") = "2" Or (strSport = "Baseball" And .Item("strRound") = "S") Or (strSport = "BaseballFall" And .Item("strRound") = "S") Or (strSport = "SPSoftball" And .Item("strRound") = "S") Or (strSport = "Football" And .Item("strRound") = "S") Then
                        If intYear = CInt(.Item("intYear")) Then
                        Else
                            strHTML = strHTML & "<tr><td colspan=2><hr></td></tr>"
                        End If
                        strHTML = strHTML & "<td style='width:25%;text-align:left;color:" & strForeColor & "'>"
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
                        strHTML = strHTML & "<td style='font-weight:normal;color: " & strForeColor & "'>"
                        strHTML = strHTML & "<bbD>" & UCase(.Item("strDisplay")) & "</bbD>"
                        strHTML = strHTML & "</td>"
                        strHTML = strHTML & "</tr>"
                    Else
                        strHTML = strHTML & "<td>&nbsp;</td>"
                        strHTML = strHTML & "<td style='text-align:left;color:" & strForeColor & "'>"
                        If .Item("strRound") = "C" Then
                            strHTML = strHTML & "<bbD1>" & UCase(.Item("strDisplay")) & "</bbD1>"
                        Else
                            strHTML = strHTML & "<bbD>" & UCase(.Item("strDisplay")) & "</bbD>"
                        End If
                        strHTML = strHTML & "</td>"
                        strHTML = strHTML & "</tr>"
                    End If
                    intYear = .Item("intYear")
                End With
            Next
            strHTML = strHTML & "</table>"

        End If

        Return strHTML

    End Function

    'Shared Function GetStateGamesHTMLNoasp(strSQL As String, strSport As String, strForeColor As String) As String
    '    Dim strHTML As String = ""
    '    Dim intYear As Integer = 0
    '    Dim ds As DataSet

    '    ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

    '    If ds Is Nothing Then
    '        strHTML = "<table width='95%'></table><td ColumnSpan='2' style='text-align:left;color:" & strForeColor & ";'><bbH1>NO STATE APPEARANCES</bbH1></td></tr>"
    '    ElseIf ds.Tables.Count = 0 Then
    '        strHTML = "<table width='95%'></table><td ColumnSpan='2' style='text-align:left;color:" & strForeColor & ";'><bbH1>NO STATE APPEARANCES</bbH1></td></tr>"
    '    ElseIf ds.Tables(0).Rows.Count = 0 Then
    '        strHTML = "<table width='95%'><tr><td ColumnSpan='2' style='text-align:left;color:" & strForeColor & ";'><bbH1>NO STATE APPEARANCES</bbH1></td></tr>"
    '    Else
    '        strHTML = "<table width='95%'>"
    '        For x = 0 To ds.Tables(0).Rows.Count - 1
    '            With ds.Tables(0).Rows(x)
    '                strHTML = strHTML & "<tr>"
    '                If .Item("strRound") = "Q" Or .Item("strRound") = "1" Or .Item("strRound") = "P" Or .Item("strRound") = "2" Or (strSport = "Baseball" And .Item("strRound") = "S") Or (strSport = "BaseballFall" And .Item("strRound") = "S") Or (strSport = "SPSoftball" And .Item("strRound") = "S") Or (strSport = "Football" And .Item("strRound") = "S") Then
    '                    If intYear = CInt(.Item("intYear")) Then
    '                    Else
    '                        strHTML = strHTML & "<td ColumnSpan='2' style='text-align:left;color:" & strForeColor & ";'><hr></td></tr>"
    '                    End If
    '                    strHTML = strHTML & "<td width='35%' style='text-align:left;color:" & strForeColor & ";'>"
    '                    If intYear = CInt(.Item("intYear")) Then
    '                        strHTML = strHTML & "&nbsp;"
    '                    Else
    '                        If .Item("strClass") = "ALL" Then
    '                            strHTML = strHTML & "<bbH1>" & .Item("intYear") & "</bbH1>"
    '                        Else
    '                            strHTML = strHTML & "<bbH1>" & .Item("intYear") & "-" & .Item("strClass") & "</bbH1>"
    '                        End If
    '                    End If
    '                    strHTML = strHTML & "</td>"
    '                    strHTML = strHTML & "<td Font-Bold='False' style='text-align:left;color:" & strForeColor & ";'><br>"
    '                    strHTML = strHTML & "<bbD>" & UCase(.Item("strDisplay")) & "</bbD>"
    '                    strHTML = strHTML & "</td>"
    '                    strHTML = strHTML & "</tr>"
    '                Else
    '                    strHTML = strHTML & "<td>&nbsp;</td>"
    '                    strHTML = strHTML & "<td style='text-align:left;color:" & strForeColor & ";'><br>"
    '                    If .Item("strRound") = "C" Then
    '                        strHTML = strHTML & "<bbD1>" & UCase(.Item("strDisplay")) & "</bbD1>"
    '                    Else
    '                        strHTML = strHTML & "<bbD>" & UCase(.Item("strDisplay")) & "</bbD>"
    '                    End If
    '                    strHTML = strHTML & "</td>"
    '                    strHTML = strHTML & "</tr>"
    '                End If
    '                intYear = .Item("intYear")
    '            End With
    '        Next
    '        strHTML = strHTML & "</asp:Table>"

    '    End If

    '    Return strHTML

    'End Function

    Shared Function GetStateGamesHTML(strSQL As String, strSport As String, strForeColor As String) As String

        Dim strHTML As String = ""
        Dim intYear As Integer = 0
        Dim ds As DataSet

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
            strHTML = "<asp:Table width='95%'><asp:TableRow><asp:TableCell ColumnSpan='2'><bbH1><span style='color:" & strForeColor & "'>NO STATE APPEARANCES</span></bbH1></asp:TableCell></asp:TableRow>"
        ElseIf ds.Tables.Count = 0 Then
            strHTML = "<asp:Table width='95%'><asp:TableRow><asp:TableCell ColumnSpan='2'><bbH1><span style='color:" & strForeColor & "'>NO STATE APPEARANCES</span></bbH1></asp:TableCell></asp:TableRow>"
        ElseIf ds.Tables(0).Rows.Count = 0 Then
            strHTML = "<asp:Table width='95%'><asp:TableRow><asp:TableCell ColumnSpan='2'><bbH1><span style='color:" & strForeColor & "'>NO STATE APPEARANCES</span></bbH1></asp:TableCell></asp:TableRow>"
        Else
            strHTML = "<asp:Table width='95%'>"
            For x = 0 To ds.Tables(0).Rows.Count - 1
                With ds.Tables(0).Rows(x)
                    strHTML = strHTML & "<asp:TableRow>"
                    If .Item("strRound") = "Q" Or .Item("strRound") = "1" Or .Item("strRound") = "P" Or .Item("strRound") = "2" Or (strSport = "Baseball" And .Item("strRound") = "S") Or (strSport = "BaseballFall" And .Item("strRound") = "S") Or (strSport = "SPSoftball" And .Item("strRound") = "S") Or (strSport = "Football" And .Item("strRound") = "S") Or (strSport = "BasketballGirls" And .Item("strRound") = "S" And .Item("strClass") = "3A 5 on 5" And .Item("intYear") = 1990) Then
                        If intYear = CInt(.Item("intYear")) Then
                        Else
                            strHTML = strHTML & "<asp: TableCell ColumnSpan='2'><hr></asp:TableCell></asp:TableRow>"
                            strHTML = strHTML & "<asp:TableRow>"
                        End If
                        strHTML = strHTML & "<asp:TableCell width='35%' HorizontalAlign='Left'>"
                        If intYear = CInt(.Item("intYear")) Then
                            strHTML = strHTML & "&nbsp;"
                        Else
                            If .Item("strClass") = "ALL" Then
                                strHTML = strHTML & "<bbH1><span style='color:" & strForeColor & "'>" & .Item("intYear") & "</span></bbH1>"
                            Else
                                strHTML = strHTML & "<bbH1><span style='color:" & strForeColor & "'>" & .Item("intYear") & "-" & .Item("strClass") & "</span></bbH1>"
                            End If
                        End If
                        strHTML = strHTML & "</asp:TableCell>"
                        strHTML = strHTML & "<asp:TableCell Font-Bold='False'><br>"
                        strHTML = strHTML & "<bbD><span style='color:" & strForeColor & "'>" & UCase(.Item("strDisplay")) & "</span></bbD>"
                        strHTML = strHTML & "</asp:TableCell>"
                        strHTML = strHTML & "</asp:TableRow>"
                    Else
                        strHTML = strHTML & "<asp:TableCell>&nbsp;</asp:TableCell>"
                        strHTML = strHTML & "<asp:TableCell HorizontalAlign='Left'><br>"
                        If .Item("strRound") = "C" Then
                            strHTML = strHTML & "<bbD1><span style='color:" & strForeColor & "'>" & UCase(.Item("strDisplay")) & "</span></bbD1>"
                        Else
                            strHTML = strHTML & "<bbD><span style='color:" & strForeColor & "'>" & UCase(.Item("strDisplay")) & "</span></bbD>"
                        End If
                        strHTML = strHTML & "</asp:TableCell>"
                        strHTML = strHTML & "</asp:TableRow>"
                    End If
                    intYear = .Item("intYear")
                End With
            Next
            strHTML = strHTML & "</asp:Table>"

        End If

        Return strHTML

    End Function

    Shared Function GetStateTourneyDescription(id As Integer) As String
        Dim strResult As String = ""
        Dim strSQL As String = "SELECT strDisplayYearClassSchoolSport FROM viewStateChampionsDisplay WHERE id = " & id

        strResult = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        Return strResult
    End Function

#Region "Social Media Feeds and Headers"

    Shared Function GetTwitterFeedFooter(strState As String) As String
        Dim strReturn As String = ""

        Select Case strState
            Case "FL"
                strReturn = "<a class='twitter-timeline' href='https://twitter.com/LOC_Florida'>Tweets by List Of Champions Michigan</a> <script async src='//platform.twitter.com/widgets.js' charset='utf-8'></script>"
            Case "MI"
                strReturn = "<a class='twitter-timeline' href='https://twitter.com/LOC_Michigan'>Tweets by List Of Champions Michigan</a> <script async src='//platform.twitter.com/widgets.js' charset='utf-8'></script>"
            Case "IL"
                strReturn = "<a class='twitter-timeline' href='https://twitter.com/LOC_Illinois'>Tweets by List Of Champions Illinois</a> <script async src='//platform.twitter.com/widgets.js' charset='utf-8'></script>"
            Case "TX"
                strReturn = "<a class='twitter-timeline' href='https://twitter.com/LOC_Texas'>Tweets by List Of Champions Texas</a> <script async src='//platform.twitter.com/widgets.js' charset='utf-8'></script>"
            Case "LOC"
                strReturn = "<a class='twitter-timeline' href='https://twitter.com/ListOfChampions'>Tweets by List Of Champions</a> <script async src='//platform.twitter.com/widgets.js' charset='utf-8'></script>"
            Case "1999"
                strReturn = "<a class='twitter-timeline' href='https://twitter.com/IWasAtTheGame'>Tweets by IWasAtTheGame</a> <script async src='//platform.twitter.com/widgets.js' charset='utf-8'></script>"
                'strReturn = "<a class='twitter-timeline' href='https://twitter.com/search?q=%23okpreps&src=typd'>Tweets by #okpreps</a> <script async src='//platform.twitter.com/widgets.js' charset='utf-8'></script>"
                'strReturn = strReturn & "<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+' : //platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','twitter-wjs');</script>"
                'strReturn = "<a href='https://twitter.com/intent/tweet?button_hashtag=IWasAtTheGame1999&ref_src=twsrc%5Etfw' class='twitter-hashtag-button' data-show-count='false'>Tweet #IWasAtTheGame1999</a><script async src='https://platform.twitter.com/widgets.js' charset='utf-8'></script>"
                'strReturn = "<a href='https://twitter.com/intent/tweet?button_hashtag=okpreps&ref_src=twsrc%5Etfw' class='twitter-hashtag-button' data-show-count='false'>Tweet #okpreps</a><script async src='https://platform.twitter.com/widgets.js' charset='utf-8'></script>"
            Case Else
                strReturn = "<a class='twitter-timeline' href='https://twitter.com/IWasAtTheGame'>Tweets by IWasAtTheGame</a> <script async src='//platform.twitter.com/widgets.js' charset='utf-8'></script>"
        End Select

        Return strReturn
    End Function

    Shared Function GetFacebookLink(strState As String) As String
        Dim strReturn As String = ""

        Select Case strState
            Case "FL"
                strReturn = "<a href='http://www.facebook.com/pages/I-Was-At-The-Game/185585154854466' target='_blank'><img src='images/Facebook.png' border='0' AlternateText='Facebook' /></a>"
            Case "MI"
                strReturn = "<a href='http://www.facebook.com/pages/I-Was-At-The-Game/185585154854466' target='_blank'><img src='images/Facebook.png' border='0' AlternateText='Facebook' /></a>"
            Case "IL"
                strReturn = "<a href='http://www.facebook.com/pages/I-Was-At-The-Game/185585154854466' target='_blank'><img src='images/Facebook.png' border='0' AlternateText='Facebook' /></a>"
            Case "TX"
                strReturn = "<a href='http://www.facebook.com/pages/I-Was-At-The-Game/185585154854466' target='_blank'><img src='images/Facebook.png' border='0' AlternateText='Facebook' /></a>"
            Case "LOC"
                strReturn = "<a href='http://www.facebook.com/pages/I-Was-At-The-Game/185585154854466' target='_blank'><img src='images/Facebook.png' border='0' AlternateText='Facebook' /></a>"
            Case Else
                strReturn = "<a href='http://www.facebook.com/pages/I-Was-At-The-Game/185585154854466' target='_blank'><img src='images/Facebook.png' border='0' AlternateText='Facebook' /></a>"
        End Select

        Return strReturn

    End Function

    Shared Function GetTwitterLink1(strState As String) As String
        Dim strReturn As String = ""

        Select Case strState
            Case "FL"
                strReturn = "<a href='http://www.twitter.com/LOC_Florida' target='_blank'><img src='images/TwitterHome.png' border='0' /></a>"
            Case "MI"
                strReturn = "<a href='http://www.twitter.com/LOC_Michigan' target='_blank'><img src='images/TwitterHome.png' border='0' /></a>"
            Case "IL"
                strReturn = "<a href='http://www.twitter.com/LOC_Illinois' target='_blank'><img src='images/TwitterHome.png' border='0' /></a>"
            Case "TX"
                strReturn = "<a href='http://www.twitter.com/LOC_Texas' target='_blank'><img src='images/TwitterHome.png' border='0' /></a>"
            Case "LOC"
                strReturn = "<a href='http://www.twitter.com/ListOfChampions' target='_blank'><img src='images/TwitterHome.png' border='0' /></a>"
            Case Else
                strReturn = "<a href='http://www.twitter.com/IWasAtTheGame' target='_blank'><img src='images/TwitterHome.png' border='0' /></a>"
        End Select

        Return strReturn
    End Function

    Shared Function GetTwitterLink2(strState As String) As String
        Dim strReturn As String = ""

        Select Case strState
            Case "FL"
                strReturn = "<a href='http://www.twitter.com/ListOfChampions' target='_blank'><img src='images/TwitterHome.png' border='0' /></a>"
            Case "MI"
                strReturn = "<a href='http://www.twitter.com/ListOfChampions' target='_blank'><img src='images/TwitterHome.png' border='0' /></a>"
            Case "IL"
                strReturn = "<a href='http://www.twitter.com/ListOfChampions' target='_blank'><img src='images/TwitterHome.png' border='0' /></a>"
            Case "TX"
                strReturn = "<a href='http://www.twitter.com/ListOfChampions' target='_blank'><img src='images/TwitterHome.png' border='0' /></a>"
            Case "LOC"
                strReturn = "<a href='http://www.twitter.com/ListOfChampions' target='_blank'><img src='images/TwitterHome.png' border='0' /></a>"
            Case Else
                strReturn = "<a href='http://www.twitter.com/OKAlmanac' target='_blank'><img src='images/TwitterHome.png' border='0' /></a>"
        End Select

        Return strReturn
    End Function

    Shared Function GetEmailLink(strState As String) As String
        Dim strReturn As String = ""

        Select Case strState
            Case "FL", "MI", "IL", "TX"
                strReturn = "<a href='mailto:chris@iwasatthegame.com'><img src='images/email_icon.png' border='0' /></a>"
            Case Else
                strReturn = "<a href='mailto:chris@iwasatthegame.com'><img src='images/email_icon.png' border='0' /></a>"
        End Select

        Return strReturn
    End Function

    Shared Function GetTwitterFeed(strState As String) As String
        Dim strReturn As String = ""

        Select Case strState
            Case "FL"
                strReturn = "<a class='twitter-follow-button'  href='https//twitter.com/LOC_Florida' data-size='Large' data-show-count='false'>Follow @LOC_Michigan</a>"
            Case "MI"
                strReturn = "<a class='twitter-follow-button'  href='https//twitter.com/LOC_Michigan' data-size='Large' data-show-count='false'>Follow @LOC_Michigan</a>"
            Case "IL"
                strReturn = "<a class='twitter-follow-button'  href='https//twitter.com/LOC_Illinois' data-size='Large' data-show-count='false'>Follow @LOC_Illinois</a>"
            Case "TX"
                strReturn = "<a class='twitter-follow-button'  href='https//twitter.com/LOC_Texas' data-size='Large' data-show-count='false'>Follow @LOC_Texas</a>"
            Case "LOC"
                strReturn = "<a class='twitter-follow-button'  href='https//twitter.com/ListOfChampions' data-size='Large' data-show-count='false'>Follow @ListOfChampions</a>"
            Case Else
                strReturn = "<a class='twitter-follow-button'  href='https//twitter.com/IWasAtTheGame'>Follow @IWasAtTheGame</a>"
                'strReturn = "<a href='https://twitter.com/IWasAtTheGame?ref_src=twsrc%5Etfw' class='twitter-follow-button' data-size='large' data-show-count='true'>Follow @IWasAtTheGame</a><script async src='https://platform.twitter.com/widgets.js' charset='utf-8'></script>"
        End Select

        Return strReturn
    End Function

    Shared Function GetFacebookHeader(strState As String) As String
        Dim strReturn As String = ""
        If strState = "OK" Then
            'strReturn = "<br><div class='fb-page' data-href='https://www.facebook.com/I-Was-At-The-Game-185585154854466/' data-tabs='timeline' data-width='500' data-height='70' data-small-header='true' data-adapt-container-width='true' data-hide-cover='false' data-show-facepile='true'><blockquote cite='https://www.facebook.com/I-Was-At-The-Game-185585154854466/' class='fb-xfbml-parse-ignore'><a href='https://www.facebook.com/I-Was-At-The-Game-185585154854466/'>I Was At The Game</a></blockquote></div>"
        End If
        Return strReturn
    End Function

    Shared Function GetPageHeader(strState As String, strPartialHeader As String) As String
        Dim strReturn As String = ""

        Select Case strState
            Case "FL"
                strReturn = "FLORIDA " & strPartialHeader
            Case "OK"
                strReturn = "OKLAHOMA " & strPartialHeader
            Case "CO"
                strReturn = "COLORADO " & strPartialHeader
            Case "IL"
                strReturn = "ILLINOIS " & strPartialHeader
            Case "MI"
                strReturn = "MICHIGAN " & strPartialHeader
            Case "TX"
                strReturn = "TEXAS " & strPartialHeader
            Case "LOC"
                strReturn = strPartialHeader
            Case Else
                strReturn = "OKLAHOMA " & strPartialHeader
        End Select

        Return strReturn
    End Function

#End Region

    Shared Function GetSchoolSQL(strState As String, strSchool As String) As String
        Dim strSQL As String = ""
        Return strSQL
    End Function

    Shared Function GetURL(strSchool As String, strGUID As String, strShowAd As String) As String
        If strShowAd = "YES" Then
            Return "school=" & strSchool
        Else
            Return "id=" & strGUID
        End If
    End Function

    Shared Function GetSchoolPageHTML(strState As String, strSchool As String, strGUID As String, ByRef strHTML1 As String, strShowAds As String, isMobile As Boolean) As String
        Dim strHTML As String = ""

        Dim objSchool As New clsSchoolInfo(strSchool, strGUID)
        Dim strForeColor As String = objSchool.getForeColor
        Dim strLink As String = ""
        Dim strImageWidth As String = ""
        Dim strImageWidthIcon As String = ""

        If isMobile Then
            strImageWidth = "290px"
            strImageWidthIcon = "70px"
        Else
            strImageWidth = "80%"
            strImageWidthIcon = "120px"
        End If

        strHTML = "<table style='width:95%;text-align:center;'>"
        ' LIST OF CHAMPIONS...
        strLink = "<a href='" & "StateChampions.aspx?" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/ListOfChampions.png' width='" & strImageWidth & "'></a>"
        strHTML = strHTML & GetSchoolPageRow(strLink, strForeColor)
        ' STATE FINALS APPEARANCES...
        strHTML = strHTML & GetSchoolPageRow("<a href='StateFinals.aspx?" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/SPStateFinalsAppearances.png' width='" & strImageWidth & "'></a>", strForeColor)
        ' STATE QUALIFIERS (BK, FB, BA, SP) ...
        strHTML = strHTML & GetSchoolPageRow("<a href='StateQualifiers.aspx?" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/StateQualifiers.png' width='" & strImageWidth & "'></a>", strForeColor)

        ' STATE TOURNEY PLAYOFF GAMES...
        strHTML = strHTML & GetSchoolPageRow("<img src='../images/SPStateTourneyGames.png' width='" & strImageWidth & "'><br>", strForeColor)

        strHTML = strHTML & "<asp:TableRow style='text-align:center;'>"
        strHTML = strHTML & "<asp:TableCell>"
        strHTML = strHTML & "<a href='StateGames.aspx?sport=Baseball&" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/SPBAStateAppearances.png' width='" & strImageWidthIcon & "'></a>"
        If SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblBaseballFallTournament WHERE strSchoolBottom = '" & strSchool & "'") > 0 Then
            strHTML = strHTML & "<a href='StateGames.aspx?sport=BaseballFall&" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/SPBAFStateAppearances.png' width='" & strImageWidthIcon & "'></a>"
        End If
        strHTML = strHTML & "<a href='StateGames.aspx?sport=BasketballBoys&" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/SPBKBStateAppearances.png' width='" & strImageWidthIcon & "'></a>"
        strHTML = strHTML & "<a href='StateGames.aspx?sport=BasketballGirls&" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/SPBKGStateAppearances.png' width='" & strImageWidthIcon & "'></a>"
        If SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblPlayoffGames WHERE strSchoolTop = '" & strSchool & "' OR strSchoolBottom = '" & strSchool & "'") > 0 Then
            strHTML = strHTML & "<a href='StateGames.aspx?sport=Football&" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/SPFBStateAppearances.png' width='" & strImageWidthIcon & "'></a>"
        End If
        If SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblSoftballSPTournament WHERE strSchoolTop = '" & strSchool & "' OR strSchoolBottom = '" & strSchool & "'") > 0 Then
            strHTML = strHTML & "<a href='StateGames.aspx?sport=SPSoftball&" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/SPSBSStateAppearances.png' width='" & strImageWidthIcon & "'></a>"
        End If
        strHTML = strHTML & "</asp:TableCell>"
        strHTML = strHTML & "</asp:TableRow>"

        'strHTML = strHTML & GetSchoolPageRow("<a href='http://m.iwasatthegame.com/StateGames.aspx?sport=BasketballBoys&id=" & strGUID & "' target='_blank'><img src='../images/SPBKStateAppearancesBoys.png'></a>", strForeColor)
        'strHTML = strHTML & GetSchoolPageRow("<a href='http://m.iwasatthegame.com/StateGames.aspx?sport=BasketballGirls&id=" & strGUID & "' target='_blank'><img src='../images/SPBKStateAppearancesGirls.png'></a>", strForeColor)
        'strHTML = strHTML & GetSchoolPageRow("<a href='http://m.iwasatthegame.com/StateGames.aspx?sport=Baseball&id=" & strGUID & "' target='_blank'><img src='../images/SPBAStateAppearances.png'></a>", strForeColor)
        'strHTML = strHTML & GetSchoolPageRow("<a href='http://m.iwasatthegame.com/StateGames.aspx?sport=Football&id=" & strGUID & "' target='_blank'><img src='../images/SPFBPlayoffAppearances.png'></a>", strForeColor)

        ' INDIVIDUAL STATE CHAMPIONS...
        strHTML = strHTML & "<asp:TableRow style='text-align:center;'><asp:TableCell>&nbsp;</asp:TableCell></asp:TableRow>"
        strHTML = strHTML & GetSchoolPageRow("<img src='../images/SPIndividual.png' width='" & strImageWidth & "'><br>", strForeColor)
        strHTML = strHTML & "<asp:TableRow style='text-align:center;'>"
        strHTML = strHTML & "<asp:TableCell>"
        strHTML = strHTML & "<a href='StateIndividuals.aspx?sport=CrossCountry&" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/SPCCIndividual.png' width='" & strImageWidthIcon & "'></a>"
        If SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblGolfIndividuals WHERE strSchool = '" & strSchool & "'") > 0 Then
            strHTML = strHTML & "<a href='StateIndividuals.aspx?sport=Golf&" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/SPGOIndividual.png' width='" & strImageWidthIcon & "'></a>"
        End If
        If SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblSwimmingIndividuals WHERE strSchool = '" & strSchool & "'") > 0 Then
            strHTML = strHTML & "<a href='StateIndividuals.aspx?sport=Swimming&" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/SPSWIndividual.png' width='" & strImageWidthIcon & "'></a>"
        End If
        If SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblTennisIndividuals WHERE strSchool = '" & strSchool & "'") > 0 Then
            strHTML = strHTML & "<a href='StateIndividuals.aspx?sport=Tennis&" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/SPTNIndividual.png' width='" & strImageWidthIcon & "'></a>"
        End If
        strHTML = strHTML & "<a href='StateIndividuals.aspx?sport=Track&" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/SPTKIndividual.png' width='" & strImageWidthIcon & "'></a>"
        If SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(Id) FROM tblWrestlingIndividuals WHERE strSchool = '" & strSchool & "'") > 0 Then
            strHTML = strHTML & "<a href='StateIndividuals.aspx?sport=Wrestling&" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/SPWRIndividual.png' width='" & strImageWidthIcon & "'></a>"
        End If
        strHTML = strHTML & "</asp:TableCell>"
        strHTML = strHTML & "</asp:TableRow>"
        ' NON-ATHLETIC STATE CHAMPIONS...
        strHTML = strHTML & GetSchoolPageRow("<a href='StateNonAthletic.aspx?" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/SPNonAthleticStateChampions.png' width='" & strImageWidth & "'></a>", strForeColor)
        ' ACADEMIC STATE CHAMPIONS...
        strHTML = strHTML & GetSchoolPageRow("<a href='StateAcademic.aspx?" & GetURL(strSchool, strGUID, strShowAds) & "' target='_blank'><img src='../images/SPAcademicStateChampions.png' width='" & strImageWidth & "'></a>", strForeColor)
        strHTML = strHTML & "</table>"

        strHTML1 = Replace(strHTML, ".png", "300.png")
        Return strHTML
    End Function

    Shared Function GetSchoolPageRow(strLink As String, strForeColor As String) As String
        Dim strHTML As String = ""
        strHTML = strHTML & "<asp:TableRow style='text-align:center;'>"
        'strHTML = strHTML & "<td style='text-align:center;font-size:20px;color:" & strForeColor & ";'>"
        strHTML = strHTML & "<asp:TableCell>"
        'strHTML = strHTML & "<bbD1>" & strLink & "</bbD1>"
        strHTML = strHTML & strLink
        strHTML = strHTML & "</asp:TableCell></asp:TableRow>"
        Return strHTML
    End Function

    Shared Function GetStateChampionshipsNASQL(strState As String, strSchool As String)
        Dim strSQL As String = ""
        Dim strSportGenderKey As String = ""
        Dim intSort As Integer = 1
        Dim strSQLTemp As String

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "JazzBand", "Jazz Band", intSort, False, True, True)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "SpeechDebate", "Speech/Debate", intSort, False, True, True)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "OneAct", "One Act", intSort, False, True, True)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "AcademicBowl", "Academic Bowl", intSort, True, True, False)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        Return strSQL
    End Function

    Shared Function GetStateCountAndLast(strState As String, strSchool As String) As String

        Dim strSQL As String = "SELECT * FROM IWATGview_Football_StateChampionshipCount WHERE strSchool = '" & strSchool & "' AND strState = '" & strState & "'"
        Dim ds As DataSet
        Dim strReturn As String = ""

        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
            strReturn = "No State Championships"
        ElseIf ds.Tables.Count = 0 Then
            strReturn = "No State Championships"
        ElseIf ds.Tables(0).Rows.Count = 0 Then
            strReturn = "No State Championships"
        Else
            strReturn = "State Championships " & ds.Tables(0).Rows(0).Item("intWins") & " (last " & ds.Tables(0).Rows(0).Item("strLastChampionship") & ")"
        End If

        Return strReturn

    End Function

    Shared Function GetStateChampionshipsSQL(strState As String, strSchool As String, ysnAcademic As Boolean, showClass As Boolean, finalsOnly As Boolean) As String

        Dim strSQL As String = ""
        Dim strSportGenderKey As String = ""
        Dim intSort As Integer = 1
        Dim strSQLTemp As String

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "Football", "Football", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "Baseball", "Baseball", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "BasketballBoys", "Basketball (Boys)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "BasketballGirls", "Basketball (Girls)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "Wrestling", "Wrestling", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "WrestlingDual", "Wrestling (Dual)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "BaseballFall", "Baseball (Fall)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "Cheerleading", "Cheerleading", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "CrossCountryBoys", "Cross Country (Boys)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "CrossCountryGirls", "Cross Country (Girls)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "GolfBoys", "Golf (Boys)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "GolfGirls", "Golf (Girls)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "SoccerBoys", "Soccer (Boys)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "SoccerGirls", "Soccer (Girls)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "FPSoftball", "Softball (Fast Pitch)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "SPSoftball", "Softball (Slow Pitch)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "SwimmingBoys", "Swimming (Boys)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "SwimmingGirls", "Swimming (Girls)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "TennisBoys", "Tennis (Boys)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "TennisGirls", "Tennis (Girls)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "TrackBoys", "Track (Boys)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "TrackGirls", "Track (Girls)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "VolleyballBoys", "Volleyball (Boys)", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportUnionSQL(strState, strSchool, "Volleyball", "Volleyball", intSort, ysnAcademic, showClass, finalsOnly)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQL = strSQL & " ORDER BY intSort"
        Return strSQL

    End Function

    Shared Function GetSportUnionSQL(strState As String, strSchool As String, strSportGenderKey As String, strSportDisplay As String, intSort As Integer, ysnAcademic As Boolean, showClass As Boolean, finalsOnly As Boolean)
        Dim strSQL As String = ""

        If strSportGenderKey = "AcademicBowl" Then
            strSQL = strSQL & "Select DISTINCT '" & strSportDisplay & "' AS strDisplay, intSort = " & intSort & ", '" & strSportGenderKey & "' AS strSportGenderKey FROM dbo.tblAcademicBowlTeamChampions WHERE (strSportGenderKey = '" & strSportGenderKey & "') AND (strSchool = '" & strSchool & "') AND (strState = '" & strState & "') "
            strSQL = strSQL & " UNION "
            strSQL = strSQL & "SELECT DISTINCT '" & GetStateTourneyYears(strState, strSchool, strSportGenderKey, showClass, finalsOnly) & "' AS strDisplay, intSort = " & intSort + 1 & ", '' AS strSportGenderKey FROM dbo.tblAcademicBowlTeamChampions WHERE (strSportGenderKey = '" & strSportGenderKey & "') AND (strSchool = '" & strSchool & "') AND (strState = '" & strState & "') "
        ElseIf ysnAcademic Then
            strSQL = strSQL & "SELECT DISTINCT '" & strSportDisplay & "' AS strDisplay, intSort = " & intSort & ", '" & strSportGenderKey & "' AS strSportGenderKey FROM dbo.tblAcademicStateChampions WHERE (strSportGenderKey = '" & strSportGenderKey & "') AND (strSchoolKey = '" & strSchool & "') AND (strState = '" & strState & "') "
            strSQL = strSQL & " UNION "
            strSQL = strSQL & "SELECT DISTINCT '" & GetAcademicStateChampionsYears(strState, strSchool, strSportGenderKey, showClass) & "' AS strDisplay, intSort = " & intSort + 1 & ", '' AS strSportGenderKey FROM dbo.tblAcademicStateChampions WHERE (strSportGenderKey = '" & strSportGenderKey & "') AND (strSchoolKey = '" & strSchool & "') AND (strState = '" & strState & "') "
        Else
            If finalsOnly Then
				strSQL = strSQL & "SELECT DISTINCT '" & strSportDisplay & "' AS strDisplay, intSort = " & intSort & ", '" & strSportGenderKey & "' AS strSportGenderKey FROM dbo.tblStateChampions WHERE (strSportGenderKey = '" & strSportGenderKey & "') AND (strSchool = '" & strSchool & "' OR strSchoolRU = '" & strSchool & "' OR strSchoolKey = '" & strSchool & "' OR strSchoolRUKey = '" & strSchool & "') AND (strState = '" & strState & "') "
				strSQL = strSQL & " UNION "
				strSQL = strSQL & "SELECT DISTINCT '" & GetStateTourneyYears(strState, strSchool, strSportGenderKey, showClass, finalsOnly) & "' AS strDisplay, intSort = " & intSort + 1 & ", '' AS strSportGenderKey FROM dbo.tblStateChampions WHERE (strSportGenderKey = '" & strSportGenderKey & "') AND (strSchool = '" & strSchool & "' OR strSchoolRU = '" & strSchool & "' OR strSchoolKey = '" & strSchool & "' OR strSchoolRUKey = '" & strSchool & "') AND (strState = '" & strState & "') "
			Else
				strSQL = strSQL & "SELECT DISTINCT '" & strSportDisplay & "' AS strDisplay, intSort = " & intSort & ", '" & strSportGenderKey & "' AS strSportGenderKey FROM dbo.tblStateChampions WHERE (strSportGenderKey = '" & strSportGenderKey & "') AND (strSchool = '" & strSchool & "' OR strSchoolKey = '" & strSchool & "') AND (strState = '" & strState & "') "
				strSQL = strSQL & " UNION "
				strSQL = strSQL & "SELECT DISTINCT '" & GetStateTourneyYears(strState, strSchool, strSportGenderKey, showClass, finalsOnly) & "' AS strDisplay, intSort = " & intSort + 1 & ", '' AS strSportGenderKey FROM dbo.tblStateChampions WHERE (strSportGenderKey = '" & strSportGenderKey & "') AND (strSchool = '" & strSchool & "' OR strSchoolKey = '" & strSchool & "') AND (strState = '" & strState & "') "
			End If
        End If

        Return strSQL
    End Function

    Shared Function GetAcademicStateChampionsYears(strState As String, strSchool As String, strSportGenderKey As String, showClass As Boolean) As String
        Dim strSQL As String = ""
        Dim strResult As String = ""
        Dim ds As DataSet
        Dim x As Integer

        strSQL = "SELECT DISTINCT intYear, strClass FROM tblAcademicStateChampions WHERE strSchoolKey = '" & strSchool & "' AND strSportGenderKey = '" & strSportGenderKey & "' AND strState = '" & strState & "' ORDER BY intYear DESC"
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            For x = 0 To ds.Tables(0).Rows.Count - 1
                If strResult = "" Then
                    If showClass And ds.Tables(0).Rows(x).Item("strClass") <> "ALL" Then
                        strResult = ds.Tables(0).Rows(x).Item("intYear") & "(" & ds.Tables(0).Rows(x).Item("strClass") & ")"
                    Else
                        strResult = ds.Tables(0).Rows(x).Item("intYear")
                    End If
                Else
                    If showClass And ds.Tables(0).Rows(x).Item("strClass") <> "ALL" Then
                        strResult = strResult & ", " & ds.Tables(0).Rows(x).Item("intYear") & "(" & ds.Tables(0).Rows(x).Item("strClass") & ")"
                    Else
                        strResult = strResult & ", " & ds.Tables(0).Rows(x).Item("intYear")
                    End If
                End If
            Next
        End If

        Return strResult
    End Function

    Shared Function GetStateTourneyYears(strState As String, strSchool As String, strSportGenderKey As String, showClass As Boolean, finalsOnly As Boolean) As String
        Dim strSQL As String = ""
        Dim strResult As String = ""
        Dim ds As DataSet
        Dim x As Integer
        Dim strBold As String = ""
        Dim strBoldEnd As String = ""

        If strSportGenderKey = "AcademicBowl" Then
            strSQL = "SELECT DISTINCT intYear, strClass, strSchool FROM tblAcademicBowlTeamChampions WHERE (strSchool = '" & strSchool & "') AND strSportGenderKey = '" & strSportGenderKey & "' AND strState = '" & strState & "' ORDER BY intYear DESC"
        ElseIf finalsOnly Then
			strSQL = "SELECT DISTINCT intYear, strClass, strSchool FROM tblStateChampions WHERE (strSchool = '" & strSchool & "' OR strSchoolRU = '" & strSchool & "' OR strSchoolKey = '" & strSchool & "' OR strSchoolRUKey = '" & strSchool & "') AND strSportGenderKey = '" & strSportGenderKey & "' AND strState = '" & strState & "' ORDER BY intYear DESC"
		Else
			strSQL = "SELECT DISTINCT intYear, strClass, strSchool FROM tblStateChampions WHERE (strSchool = '" & strSchool & "' OR strSchoolKey = '" & strSchool & "') AND strSportGenderKey = '" & strSportGenderKey & "' AND strState = '" & strState & "' ORDER BY intYear DESC"
		End If
		ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

		If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            For x = 0 To ds.Tables(0).Rows.Count - 1
                ' Add Bold???
                If ds.Tables(0).Rows(x).Item("strSchool") = strSchool Then
                    If finalsOnly = True Then
                        strBold = "*"
                        strBoldEnd = "*"
                    Else
                        strBold = ""
                        strBoldEnd = ""
                    End If
                Else
                    strBold = ""
                    strBoldEnd = ""
                End If

                If strResult = "" Then
                    If showClass And ds.Tables(0).Rows(x).Item("strClass") <> "ALL" Then
                        strResult = strBold & ds.Tables(0).Rows(x).Item("intYear") & "(" & ds.Tables(0).Rows(x).Item("strClass") & ")" & strBoldEnd
                    Else
                        strResult = strBold & ds.Tables(0).Rows(x).Item("intYear") & strBoldEnd
                    End If
                Else
                    If showClass And ds.Tables(0).Rows(x).Item("strClass") <> "ALL" Then
                        strResult = strResult & ", " & strBold & ds.Tables(0).Rows(x).Item("intYear") & "(" & ds.Tables(0).Rows(x).Item("strClass") & ")" & strBoldEnd
                    Else
                        strResult = strResult & ", " & strBold & ds.Tables(0).Rows(x).Item("intYear") & strBoldEnd
                    End If
                End If
            Next
        End If

        Return strResult
    End Function

    Shared Function GetStateQualifierYears(strState As String, strSchool As String, strSportGenderKey As String, showClass As Boolean) As String
        Dim strSQL As String = ""
        Dim strResult As String = ""
        Dim ds As DataSet
        Dim x As Integer

        If strSportGenderKey.Contains("Basketball") Then
            strSQL = "SELECT DISTINCT intYear, strClass FROM tblBasketballTournamentImport WHERE (strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "') AND strSportGenderKey = '" & strSportGenderKey & "' AND strState = '" & strState & "' ORDER BY intYear DESC"
        ElseIf strSportGenderKey = "Baseball" Then
            strSQL = "SELECT DISTINCT intYear, strClass FROM tblBaseballTournament WHERE (strSchoolTop = '" & strSchool & "' OR strSchoolBottom = '" & strSchool & "') AND strState = '" & strState & "' ORDER BY intYear DESC"
        ElseIf strSportGenderKey = "BaseballFall" Then
            strSQL = "SELECT DISTINCT intYear, strClass FROM tblBaseballFallTournament WHERE (strSchoolTop = '" & strSchool & "' OR strSchoolBottom = '" & strSchool & "') AND strState = '" & strState & "' ORDER BY intYear DESC"
        ElseIf strSportGenderKey = "Football" Then
            strSQL = "SELECT DISTINCT intYear, strClass FROM tblPlayoffGames WHERE (strSchoolTop = '" & strSchool & "' OR strSchoolBottom = '" & strSchool & "') ORDER BY intYear DESC"
        ElseIf strSportGenderKey = "SPSoftball" Then
            strSQL = "SELECT DISTINCT intYear, strClass FROM tblSoftballSPTournament WHERE (strSchoolTop = '" & strSchool & "' OR strSchoolBottom = '" & strSchool & "') AND strState = '" & strState & "' ORDER BY intYear DESC"
        ElseIf strSportGenderKey = "Wrestling" Then

        Else

        End If

        If strSQL = "" Then

        Else
            ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

            If ds Is Nothing Then
            ElseIf ds.Tables.Count = 0 Then
            ElseIf ds.Tables(0).Rows.Count = 0 Then
            Else
                For x = 0 To ds.Tables(0).Rows.Count - 1
                    If strResult = "" Then
                        If showClass And ds.Tables(0).Rows(x).Item("strClass") <> "ALL" Then
                            strResult = ds.Tables(0).Rows(x).Item("intYear") & "(" & Replace(ds.Tables(0).Rows(x).Item("strClass"), "Class ", "") & ")"
                        Else
                            strResult = ds.Tables(0).Rows(x).Item("intYear")
                        End If
                    Else
                        If showClass And ds.Tables(0).Rows(x).Item("strClass") <> "ALL" Then
                            strResult = strResult & ", " & ds.Tables(0).Rows(x).Item("intYear") & "(" & Replace(ds.Tables(0).Rows(x).Item("strClass"), "Class ", "") & ")"
                        Else
                            strResult = strResult & ", " & ds.Tables(0).Rows(x).Item("intYear")
                        End If
                    End If
                Next
            End If
        End If
        Return strResult
    End Function

    Shared Function GetSeasonGames(strState As String, strSport As String, strSchool As String, intYear As Integer) As String
        Dim strResult As String = ""
        strResult = "SELECT * FROM IWATGview_Football_Games WHERE strState = '" & strState & "' AND strSchool = '" & strSchool & "' AND intYear = " & intYear & " ORDER BY strInfo, Id"
        Return strResult
    End Function

    Shared Function GetChampionshipInfo(strState As String, strSport As String, strSchool As String, intYear As Integer) As String
        Dim strResult As String = ""
        Dim strSQL As String
        Dim ds As DataSet

        strSQL = "SELECT * FROM tblStateChampions WHERE strSportGenderKey = 'Football' AND intYear = " & intYear & " AND (strSchool = '" & strSchool & "' OR strSchoolRU = '" & strSchool & "')"
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            With ds.Tables(0).Rows(0)
                strResult = .Item("strSchool") & " - " & .Item("strCoach") & " @ " & .Item("strRecord") & "<br>"
                strResult = strResult & .Item("strSchoolRU") & " - " & .Item("strCoachRU") & " @ " & .Item("strRecordRU") & "<br>"
            End With
        End If

        Return strResult
    End Function
    Shared Function GetSeasonResults(strState As String, strSport As String, strSchool As String, intYear As Integer, ysnLineBreak As Boolean) As String
        Dim strResult As String = ""
        Dim strSQL As String
        Dim ds As DataSet

        Select Case strSport
            Case "Football"
                strSQL = "SELECT * FROM tblYearlyRecords WHERE Year = " & intYear & " AND School = '" & strSchool & "'"
                ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                If ds Is Nothing Then
                ElseIf ds.Tables.Count = 0 Then
                ElseIf ds.Tables(0).Rows.Count = 0 Then
                Else
                    strResult = ds.Tables(0).Rows(0).Item("intW") & "-" & ds.Tables(0).Rows(0).Item("intL")
                    If ds.Tables(0).Rows(0).Item("Coach") Is System.DBNull.Value Then
                    Else
                        strResult = strResult & " (" & ds.Tables(0).Rows(0).Item("Coach") & ")"
                    End If
                    If ds.Tables(0).Rows(0).Item("strDistrict") Is System.DBNull.Value Then
                    Else
                        If ysnLineBreak Then strResult = strResult & "<br>" Else strResult = strResult & " - "
                        strResult = strResult & "District " & ds.Tables(0).Rows(0).Item("strDistrict") & " : " & ds.Tables(0).Rows(0).Item("intDW") & "-" & ds.Tables(0).Rows(0).Item("intDL")
                        If ds.Tables(0).Rows(0).Item("intDT") Is System.DBNull.Value Then
                        ElseIf ds.Tables(0).Rows(0).Item("intDT") > 0 Then
                            strResult = strResult & "-" & ds.Tables(0).Rows(0).Item("intDT")
                        End If
                    End If
                End If

            Case Else
        End Select

        Return strResult

    End Function

    Shared Function GetSeasonOffDef(strSchool As String, intYear As Integer) As String
        Dim strResult As String = ""
        Dim strSQL As String
        Dim ds As DataSet

        strSQL = "SELECT * FROM viewFootballScoresSUM WHERE intYear = " & intYear & " AND strSchool = '" & strSchool & "'"
        ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL)
        If ds Is Nothing Then
        ElseIf ds.Tables.Count = 0 Then
        ElseIf ds.Tables(0).Rows.Count = 0 Then
        Else
            With ds.Tables(0).Rows(0)
                strResult = "OFF = " & .Item("ppgOff") & " ppg    DEF = " & .Item("ppgDef") & " ppg"
            End With
        End If

        Return strResult

    End Function
    Shared Function GetAppearancesWL(strState As String, strSport As String, strSchool As String) As String
        On Error Resume Next
        Dim strSQL As String = ""
        Dim strResults As String = ""
        Dim intAppearances As Integer = 0
        Dim intW As Integer = 0
        Dim intL As Integer = 0
        Dim intChampionships As Integer = 0

        strSchool = strSchool.Replace("FT.", "FORT")

        If InStr(strSport, "BasketballBoys") > 0 Then
            strSport = "BasketballBoys"
        ElseIf InStr(strSport, "BasketballGirls") > 0 Then
            strSport = "BasketballGirls"
        ElseIf InStr(strSport, "SPSoftball") > 0 Then
            strSport = "SPSoftball"
        ElseIf InStr(strSport, "Baseball") > 0 And InStr(strSport, "BaseballFall") = 0 Then
            strSport = "Baseball"
        End If

        Select Case strSport
            Case "BasketballBoys"
				intAppearances = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "Select COUNT(DISTINCT intYear) FROM IWATGtmpview_BoysGames_ALL WHERE strState = '" & strState & "' AND (strWinnerKey = '" & strSchool & "' OR strLoserKey = '" & strSchool & "' OR strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "')")
				intW = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM IWATGtmpview_BoysGames_ALL WHERE intYear >= 1918 AND strState = '" & strState & "' AND strWinnerKey = '" & strSchool & "' OR strWinner = '" & strSchool & "'")
				intL = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM IWATGtmpview_BoysGames_ALL WHERE intYear >= 1918 AND strState = '" & strState & "' AND strLoserKey = '" & strSchool & "' OR strLoser = '" & strSchool & "'")
			Case "BasketballGirls"
				intAppearances = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(DISTINCT intYear) FROM IWATGtmpview_GirlsGames_ALL WHERE strState = '" & strState & "' AND (strWinnerKey = '" & strSchool & "' OR strLoserKey = '" & strSchool & "' OR strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "')")
				intW = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM IWATGtmpview_GirlsGames_ALL WHERE intYear >= 1919 AND strState = '" & strState & "' AND strWinnerKey = '" & strSchool & "' OR strWinner = '" & strSchool & "'")
				intL = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM IWATGtmpview_GirlsGames_ALL WHERE intYear >= 1919 AND strState = '" & strState & "' AND strLoserKey = '" & strSchool & "' OR strLoser = '" & strSchool & "'")
			Case "Baseball"
                intAppearances = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(DISTINCT intYear) FROM IWATGtmpview_BaseballGames_ALL WHERE intYear >= 1947 AND strState = '" & strState & "' AND (strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "')")
                intW = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM IWATGtmpview_BaseballGames_ALL WHERE intYear >= 1947 AND strState = '" & strState & "' AND strWinner = '" & strSchool & "'")
                intL = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM IWATGtmpview_BaseballGames_ALL WHERE intYear >= 1947 AND strState = '" & strState & "' AND strLoser = '" & strSchool & "'")
                intChampionships = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM IWATGtmpview_BaseballGames_ALL WHERE intYear >= 1947 AND strState = '" & strState & "' AND strRound = 'C' AND strWinner = '" & strSchool & "'")
            Case "BaseballFall"
                intAppearances = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(DISTINCT intYear) FROM tblBaseballFallTournament WHERE intYear >= 1955 AND strState = '" & strState & "' AND (strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "')")
                intW = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM tblBaseballFallTournament WHERE intYear >= 1955 AND strState = '" & strState & "' AND strWinner = '" & strSchool & "'")
                intL = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM tblBaseballFallTournament WHERE intYear >= 1955 AND strState = '" & strState & "' AND strLoser = '" & strSchool & "'")
            Case "Football"
                intAppearances = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(DISTINCT intYear) FROM tblPlayoffGames WHERE (intYear >= 1944 AND intYear <= 2019) AND strState = '" & strState & "' AND (strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "')")
                intW = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM tblPlayoffGames WHERE (intYear >= 1944 AND intYear <= 2019) AND strState = '" & strState & "' AND strWinner = '" & strSchool & "'")
                intL = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM tblPlayoffGames WHERE (intYear >= 1944 AND intYear <= 2019) AND strState = '" & strState & "' AND strLoser = '" & strSchool & "'")
            Case "SPSoftball"
                intAppearances = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(DISTINCT intYear) FROM tblSoftballSPTournament WHERE intYear >= 1983 AND strState = '" & strState & "' AND (strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "')")
                intW = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM tblSoftballSPTournament WHERE intYear >= 1983 AND strState = '" & strState & "' AND strWinner = '" & strSchool & "'")
                intL = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM tblSoftballSPTournament WHERE intYear >= 1983 AND strState = '" & strState & "' AND strLoser = '" & strSchool & "'")
                intChampionships = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM tblSoftballSPTournament WHERE intYear >= 1983 AND strState = '" & strState & "' AND strRound = 'C' AND strWinner = '" & strSchool & "'")
            Case "FPSoftball"
                intAppearances = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(DISTINCT intYear) FROM tblSoftballSPTournament WHERE intYear >= 1950 AND strState = '" & strState & "' AND (strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "')")
                intW = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM tblSoftballSPTournament WHERE intYear >= 1950 AND strState = '" & strState & "' AND strWinner = '" & strSchool & "'")
                intL = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM tblSoftballSPTournament WHERE intYear >= 1950 AND strState = '" & strState & "' AND strLoser = '" & strSchool & "'")
            Case "Baseball"
                intAppearances = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(DISTINCT intYear) FROM __viewBaseballStateTournamentGamesSort WHERE AND strState = '" & strState & "' AND (strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "')")
                intW = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM __viewBaseballStateTournamentGamesSort WHERE strState = '" & strState & "' AND strWinner = '" & strSchool & "'")
                intL = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM __viewBaseballStateTournamentGamesSort WHERE strState = '" & strState & "' AND strLoser = '" & strSchool & "'")
                intChampionships = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, "SELECT COUNT(id) FROM __viewBaseballStateTournamentGamesSort WHERE strState = '" & strState & "' AND strRound = 'C' AND strWinner = '" & strSchool & "'")

        End Select
        strResults = "<strong>APPEARANCES : </strong>" & intAppearances & " (" & intW & "-" & intL & " W-L)"
        If intChampionships = 1 Then
            strResults = strResults & "<br>" & intChampionships & " STATE CHAMPIONSHIP"
        ElseIf intChampionships > 0 Then
            strResults = strResults & "<br>" & intChampionships & " STATE CHAMPIONSHIPS"
        End If

        Return strResults
    End Function


    Shared Function GetStateIndividuals(strState As String, strSport As String, strSchool As String) As String
        Dim strSQL As String = ""

        Select Case strSport
            Case "CrossCountry", "CrossCountryGirls", "CrossCountryBoys"
                strSQL = "SELECT * FROM IWATGview_CrossCountry_StateChampionsIndividuals "
				strSQL = strSQL & "WHERE (strSchool = '" & strSchool & "' OR strSchoolKey = '" & strSchool & "') AND strState = '" & strState & "' "
				strSQL = strSQL & "ORDER BY intYear DESC, strSportGenderKey"
            Case "Track", "TrackBoys", "TrackGirls"
                strSQL = "SELECT * FROM IWATGview_Track_StateChampionsIndividuals "
				strSQL = strSQL & "WHERE (strSchool = '" & strSchool & "' OR strSchoolKey = '" & strSchool & "') AND strState = '" & strState & "' "
				strSQL = strSQL & "ORDER BY intYear DESC, strSportGenderKey"
            Case "Golf", "GolfBoys", "GolfGirls"
                strSQL = "SELECT * FROM IWATGview_Golf_StateChampionsIndividuals "
				strSQL = strSQL & "WHERE (strSchool = '" & strSchool & "' OR strSchoolKey = '" & strSchool & "') AND strState = '" & strState & "' "
				strSQL = strSQL & "ORDER BY intYear DESC, strSportGenderKey"
            Case "Tennis", "TennisBoys", "TennisGirls"
                strSQL = "SELECT * FROM IWATGview_Tennis_StateChampionsIndividuals "
				strSQL = strSQL & "WHERE (strSchool = '" & strSchool & "' OR strSchoolKey = '" & strSchool & "') AND strState = '" & strState & "' "
				strSQL = strSQL & "ORDER BY intYear DESC, strSportGenderKey"
            Case "Swimming", "SwimmingBoys", "SwimmingGirls"
                strSQL = "SELECT * FROM IWATGview_Swimming_StateChampionsIndividuals "
				strSQL = strSQL & "WHERE (strSchool = '" & strSchool & "' OR strSchoolKey = '" & strSchool & "') AND strState = '" & strState & "' "
				strSQL = strSQL & "ORDER BY intYear DESC, strSportGenderKey"
            Case "Wrestling"
                strSQL = "SELECT * FROM IWATGview_Wrestling_StateChampionsIndividuals "
				strSQL = strSQL & "WHERE (strSchool = '" & strSchool & "' OR strSchoolKey = '" & strSchool & "') AND strState = '" & strState & "' "
				strSQL = strSQL & "ORDER BY intYear DESC, strWeight"
            Case Else
                strSQL = ""
        End Select

        Return strSQL
    End Function

    Shared Function GetStateGames(strState As String, strSport As String, strSchool As String, intYear As Integer) As String
        Dim strSQL As String = ""

        Select Case strSport
            Case "BasketballBoys"
                strSQL = "SELECT strRound + ' : ' + strWinner + ' over ' + strLoser + ' ' + CAST(intWinner AS varchar) + '-' + CAST(intLoser AS varchar) AS strDisplay, intYear, strRound, strClass FROM IWATGtmpview_BoysGames_ALL "
                strSQL = strSQL & "WHERE (strWinnerKey = '" & strSchool & "' OR strLoserKey = '" & strSchool & "') AND intYear >= 1918"
                strSQL = strSQL & " ORDER BY intYear DESC, intGameNo"
            Case "BasketballGirls"
                strSQL = "SELECT strRound + ' : ' + strWinner + ' over ' + strLoser + ' ' + CAST(intWinner AS varchar) + '-' + CAST(intLoser AS varchar) AS strDisplay, intYear, strRound, strClass FROM IWATGtmpview_GirlsGames_ALL "
                strSQL = strSQL & "WHERE (strWinnerKey = '" & strSchool & "' OR strLoserKey = '" & strSchool & "') AND intYear >= 1919"
                strSQL = strSQL & " ORDER BY intYear DESC, intGameNo"
            Case "Baseball"
                strSQL = "SELECT strRound + ' : ' + strWinner + ' over ' + strLoser + ' ' + CAST(intWinner AS varchar) + '-' + CAST(intLoser AS varchar) AS strDisplay, intYear, strRound, strClass FROM IWATGtmpview_BaseballGames_ALL "
                strSQL = strSQL & "WHERE (strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "') AND intYear >= 1947"
                strSQL = strSQL & " ORDER BY intYear DESC, intGameNo"
            Case "BaseballFall"
                strSQL = "SELECT strRound + ' : ' + strWinner + ' over ' + strLoser + ' ' + CAST(intWinner AS varchar) + '-' + CAST(intLoser AS varchar) AS strDisplay, intYear, strRound, strClass FROM tblBaseballFallTournament "
                strSQL = strSQL & "WHERE (strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "') AND intYear >= 1955"
                strSQL = strSQL & " ORDER BY intYear DESC, intGameNo"
            Case "Football"
                strSQL = "SELECT strRound + ' : ' + strWinner + ' over ' + strLoser + ' ' + CAST(intWinner AS varchar) + '-' + CAST(intLoser AS varchar) AS strDisplay, CAST(intYear as varchar) + ' (' + strRound + ') ' + strWinner + ' over ' + strLoser + ' ' + CAST(intWinner AS varchar) + '-' + CAST(intLoser AS varchar) AS strDisplayYear, intYear, strRound, strClassDisplay AS strClass FROM tblPlayoffGames "
                If intYear > 0 Then
                    strSQL = strSQL & "WHERE Not (intPointsTop = 0 AND intPointsBottom = 0) AND (strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "') AND intYear = " & intYear
                Else
                    strSQL = strSQL & "WHERE Not (intPointsTop = 0 AND intPointsBottom = 0) AND (strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "') AND intYear >= 1944"
                End If
                strSQL = strSQL & " ORDER BY intYear DESC, intRound, intGameNo"
            Case "SPSoftball"
                strSQL = "SELECT strRound + ' : ' + strWinner + ' over ' + strLoser + ' ' + CAST(intWinner AS varchar) + '-' + CAST(intLoser AS varchar) AS strDisplay, intYear, strRound, strClass FROM tblSoftballSPTournament "
                If intYear > 0 Then
                    strSQL = strSQL & "WHERE (strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "') AND intYear = " & intYear
                Else
                    strSQL = strSQL & "WHERE (strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "') AND intYear >= 1983"
                End If
                strSQL = strSQL & " ORDER BY intYear DESC, intGameNo"
            Case "FPSoftball"
                strSQL = "SELECT strRound + ' : ' + strWinner + ' over ' + strLoser + ' ' + CAST(intWinner AS varchar) + '-' + CAST(intLoser AS varchar) AS strDisplay, intYear, strRound, strClass FROM tblSoftballFPTournament "
                strSQL = strSQL & "WHERE (strWinner = '" & strSchool & "' OR strLoser = '" & strSchool & "') AND intYear >= 1950"
                strSQL = strSQL & " ORDER BY intYear DESC, intGameNo"
        End Select

        Return strSQL

    End Function

    Shared Function GetStateQualifiersSQL(strState As String, strSchool As String, ysnAcademic As Boolean, showClass As Boolean) As String
        Dim strSQL As String = ""
        Dim strSportGenderKey As String = ""
        Dim intSort As Integer = 1
        Dim strSQLTemp As String

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "Football", "Football", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "Baseball", "Baseball", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "BasketballBoys", "Basketball (Boys)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "BasketballGirls", "Basketball (Girls)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "Wrestling", "Wrestling", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "WrestlingDual", "Wrestling (Dual)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "BaseballFall", "Baseball (Fall)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "Cheerleading", "Cheerleading", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "CrossCountryBoys", "Cross Country (Boys)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "CrossCountryGirls", "Cross Country (Girls)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "GolfBoys", "Golf (Boys)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "GolfGirls", "Golf (Girls)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "SoccerBoys", "Soccer (Boys)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "FPSoftball", "Softball (Fast Pitch)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "SPSoftball", "Softball (Slow Pitch)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "SwimmingBoys", "Swimming (Boys)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "SwimmingGirls", "Swimming (Girls)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "TennisBoys", "Tennis (Boys)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "TennisGirls", "Tennis (Girls)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "TrackBoys", "Track (Boys)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "TrackGirls", "Track (Girls)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "VolleyballBoys", "Volleyball (Boys)", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQLTemp = GetSportQualifierUnionSQL(strState, strSchool, "Volleyball", "Volleyball", intSort, showClass)
        strSQL = FinishString(strSQLTemp, strSQL, intSort)

        strSQL = strSQL & " ORDER BY intSort"
        Return strSQL
    End Function

    Shared Function FinishString(strSQLTemp As String, strSQL As String, ByRef intSort As Integer) As String
        If strSQLTemp <> "" Then
            If strSQL = "" Then
                strSQL = strSQLTemp
            Else
                strSQL = strSQL & " UNION " & strSQLTemp
            End If
            intSort = intSort + 2
        End If
        Return strSQL
    End Function

    Shared Function GetSportQualifierUnionSQL(strState As String, strSchool As String, strSportGenderKey As String, strSportDisplay As String, ByRef intSort As Integer, showClass As Boolean)
        Dim strSQL As String = ""
        Dim strYears As String = ""

        strYears = GetStateQualifierYears(strState, strSchool, strSportGenderKey, showClass)
        If strYears = "" Then
            'strYears = "NONE"
            strSQL = ""
        Else
            strSQL = strSQL & "SELECT DISTINCT '" & strSportDisplay & "' AS strDisplay, intSort = " & intSort & ", '" & strSportGenderKey & "' AS strSportGenderKey FROM dbo.tblStateChampions WHERE Id = 200"
            strSQL = strSQL & " UNION "
            strSQL = strSQL & "SELECT DISTINCT '" & strYears & "' AS strDisplay, intSort = " & intSort + 1 & ", '' AS strSportGenderKey FROM dbo.tblStateChampions WHERE Id = 200"
        End If
        Return strSQL
    End Function

    Shared Function GetLOCHeader(strState As String, strSport As String) As String

        Dim strResult As String = ""
        Select Case strState
            Case "OK"
                strResult = "images/OK/LOC.OK.Logo.png"
            Case "TX"
                Select Case strSport
                    Case "Football"
                        strResult = "images/TX/LOC.TX.Football.Logo.png"
                    Case Else
                        strResult = "images/TX/LOC.TX.Logo.png"
                End Select
            Case "FL", "MI", "IL", "TX"
                Select Case strSport
                    Case "Baseball"
                        strResult = "images/" & strState & "/LOC." & strState & ".Baseball.png"
                    Case "Basketball", "BasketballBoys", "BasketballGirls"
                        strResult = "images/" & strState & "/LOC." & strState & ".Basketball.png"
                    Case "Bowling"
                        strResult = "images/" & strState & "/LOC." & strState & ".Bowling.png"
                    Case "Cheerleading"
                        strResult = "images/" & strState & "/LOC." & strState & ".Cheerleading.png"
                    Case "CrossCountry", "CrossCountryBoys", "CrossCountryGirls"
                        strResult = "images/" & strState & "/LOC." & strState & ".CrossCountry.png"
                    Case "Football"
                        strResult = "images/" & strState & "/LOC." & strState & ".Football.png"
                    Case "Golf", "GolfBoys", "GolfGirls"
                        strResult = "images/" & strState & "/LOC." & strState & ".Golf.png"
                    Case "Lacrosse", "LacrosseBoys", "LacrosseGirls"
                        strResult = "images/" & strState & "/LOC." & strState & ".Lacrosse.png"
                    Case "Skiing"
                        strResult = "images/" & strState & "/LOC." & strState & ".Skiing.png"
                    Case "Softball", "FPSoftball", "SPSoftball"
                        strResult = "images/" & strState & "/LOC." & strState & ".Softball.png"
                    Case "Swimming", "SwimmingBoys", "SwimmingGirls"
                        strResult = "images/" & strState & "/LOC." & strState & ".Swimming.png"
                    Case "Soccer", "SoccerBoys", "SoccerGirls"
                        strResult = "images/" & strState & "/LOC." & strState & ".Soccer.png"
                    Case "Tennis", "TennisBoys", "TennisGirls"
                        strResult = "images/" & strState & "/LOC." & strState & ".Tennis.png"
                    Case "Track", "TrackBoys", "TrackGirls"
                        strResult = "images/" & strState & "/LOC." & strState & ".Track.png"
                    Case "Volleyball", "VolleyballBoys"
                        strResult = "images/" & strState & "/LOC." & strState & ".Volleyball.png"
                    Case "Wrestling", "WrestlingDual"
                        strResult = "images/" & strState & "/LOC." & strState & ".Wrestling.png"
                    Case Else
                        strResult = "images/" & strState & "/LOC." & strState & ".png"
                End Select

            Case "LOC"
                strResult = "images/ListOfChampions_Logo.png"
            Case Else
                strResult = "images/OK/LOC.OK.Logo.png"
        End Select
        Return strResult

    End Function

    Shared Function GetLogoHeader(strSport As String, strState As String, Optional strURL As String = "IWASATTHEGAME", Optional strFullURL As String = "") As String
        Dim strResult As String = ""

		If strURL = "WWW.LISTOFCHAMPIONS.COM" Then
			strResult = GetLOCHeader(strState, strSport)
		ElseIf strState = "FL" Then
			strResult = GetLOCHeader(strState, strSport)
		ElseIf strState = "MI" Then
			strResult = GetLOCHeader(strState, strSport)
		ElseIf strState = "IL" Then
			strResult = GetLOCHeader(strState, strSport)
		ElseIf strState = "TX" Then
			strResult = GetLOCHeader(strState, strSport)
		ElseIf strState = "LOC" Then
			strResult = GetLOCHeader(strState, strSport)
		ElseIf strFullURL.Contains("OFBCA.") Then
			strResult = "images/IWATG/IWATG.OFBCA.comWEB.png"
		ElseIf strFullURL.Contains("StateFinals") Then
            strResult = "images/ListOfChampions_Logo.png"
        ElseIf strFullURL.Contains("StateQualifiers") Then
            strResult = "images/ListOfChampions_Logo.png"
        ElseIf strFullURL.Contains("StateChampions.aspx") Then
            strResult = "images/ListOfChampions_Logo.png"
        ElseIf strFullURL.Contains("StateIndividuals") Then
            strResult = "images/ListOfChampions_Logo.png"
        ElseIf strFullURL.Contains("StateNonAthletic") Then
            strResult = "images/ListOfChampions_Logo.png"
        ElseIf strFullURL.Contains("BKOD.aspx") Or strFullURL.Contains("RPIBasketball.aspx") Or strFullURL.Contains("RPIBK.aspx") Then
            strResult = "images/IWATG/IWATG.BasketballStats.comWEB.png"
        Else
            Select Case strSport
                Case "AllDecade"
                    strResult = "images/OK/AllDecade_LOC.png"
                Case "Schools"
                    'strResult = "images/IWATG/IWATG.Football.comWEB.png"
                    'strResult = "images/IWATG/IWATG.Logo.SpringSports.png"
                    strResult = "images/IWATG/IWATG.Logo.WinterSports.png"
                    'strResult = "images/IWATG/IWATG.Basketball.comWEBNoSponsor.png"
                    'strResult = "images/IWATG/IWATG_SchoolPage_Christmas.png"
                    'strResult = "images/IWATG/IWATG_SchoolPage_NewYears.png"
                    'strResult = "images/IWATG/IWATGCOM_4thJULY.png"
                Case "ListOfChampions"
                    strResult = "images/ListOfChampions_Logo.png"
                Case "Academic"
                    strResult = "images/IWATG/IWATG.Academic.comWEB.png"
                Case "Baseball", "BaseballFall"
                    If strFullURL.ToUpper.Contains("OD.ASPX") Then
                        strResult = "images/IWATG/IWATG.BaseballStats.comWEB.png"
                    ElseIf strFullURL.ToUpper.Contains("RPIBASEBALL") Or strFullURL.ToUpper.Contains("SOS") Then
                        strResult = "images/IWATG/IWATG_LogoRPIBA.png"
                    ElseIf strFullURL.ToUpper.Contains("STATEGAMES") Then
                        strResult = "images/LOC_IWATGLogo900BA.png"
                    Else
                        strResult = "images/IWATG/IWATG.Baseball.comWEB.png"
                    End If
                Case "BasketballBoys", "BasketballGirls", "Basketball"
                    If strFullURL.ToUpper.Contains("STATEGAMES") Then
                        strResult = "images/LOC_IWATGLogo900BK.png"
                    Else
                        strResult = "images/IWATG/IWATG.Basketball.comWEB.png"
                    End If
                Case "SoccerBoys", "SoccerGirls", "Soccer"
                    strResult = "images/IWATG/IWATG.Soccer.comWEB.png"
                Case "FPSoftball", "SPSoftball", "Softball"
                    If strFullURL.ToUpper.Contains("OD.ASPX") Then
                        strResult = "images/IWATG/IWATG.SoftballStats.comWEB.png"
                    Else
                        strResult = "images/IWATG/IWATG.Softball.comWEB.png"
                    End If
                Case "Football"
                    If strFullURL.ToUpper.Contains("STATEGAMES") Then
                        strResult = "images/LOC_IWATGLogo900FB.png"
                    Else
                        'strResult = "images/IWATG/IWATG.Football.comWEB.png"
                        strResult = "images/IWATG/IWATG.Football.comWEB_FCA.png"
                        'strResult = "images/IWATG/IWATGHeader_Thanksgiving.png"
                    End If
                Case "Swimming", "SwimmingBoys", "SwimmingGirls"
                    strResult = "images/IWATG/IWATG.Swimming.comWEB.png"
                Case "Golf", "GolfBoys", "GolfGirls"
                    strResult = "images/IWATG/IWATG.Golf.comWEB.png"
                Case "Tennis", "TennisBoys", "TennisGirls"
                    strResult = "images/IWATG/IWATG.Tennis.comWEB.png"
                Case "Track", "TrackBoys", "TrackGirls", "CrossCountry", "CrossCountryBoys", "CrossCountryGirls"
                    strResult = "images/IWATG/IWATG.Track.comWEB.png"
                Case "Volleyball"
                    strResult = "images/IWATG/IWATG.Volleyball.comWEB.png"
                Case "Wrestling", "WrestlingDual"
                    strResult = "images/IWATG/IWATG.Wrestling.comWEB.png"
                Case "Cheer", "Cheerleading"
                    strResult = "images/IWATG/IWATG.Cheerleading.comWEB.png"
                Case "ListOfChampions"
                    strResult = "images/ListOfChampions_Logo.png"
                Case Else
                    'strResult = "images/IWATG/IWATG.Basketball.comWEB.png"
                    'strResult = "images/banners/SpringBannerWeb.png"
                    strResult = "images/logo.png"
            End Select
        End If

        Return strResult
    End Function

    Shared Function GetSchoolContentHTML(ByVal strSchool As String, strState As String) As String
        Dim strSchoolContent As String = ""
        Dim strNoneKey As String = "<asp:TableRow><asp:TableCell>&nbsp;&nbsp;None</asp:TableCell></asp:TableRow>"
        Dim strSQL As String
        Dim ds As DataSet
        Dim x As Integer

        Dim strHOMEURL As String = "StateChampionshipsBySchool.aspx"

        Dim strForeColor As String = "white"
        Dim strBackColor As String = "black"

        Dim strBaseballPre As String = "<asp:TableRow CssClass='rowYears'><asp:TableCell>Baseball</asp:TableCell></asp:TableRow>"
        Dim strBasketballBoysPre As String = "<asp:TableRow><asp:TableCell>Boys Basketball</asp:TableCell></asp:TableRow>"
        Dim strBasketballGirlsPre As String = "<asp:TableRow><asp:TableCell>Girls Basketball</asp:TableCell></asp:TableRow>"
        Dim strFootballPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Football</asp:TableCell></asp:TableRow>"
        Dim strFPSoftballPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Fast Pitch Softball</asp:TableCell></asp:TableRow>"
        Dim strSPSoftballPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Slow Pitch Softball</asp:TableCell></asp:TableRow>"
        Dim strVolleyballPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Volleyball</asp:TableCell></asp:TableRow>"
        Dim strVolleyballBoysPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Boys Volleyball</asp:TableCell></asp:TableRow>"
        Dim strCheerleadingPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Cheerleading</asp:TableCell></asp:TableRow>"
        Dim strJazzBandPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Jazz Band</asp:TableCell></asp:TableRow>"
        Dim strSpeechPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Speech/Debate</asp:TableCell></asp:TableRow>"
        Dim strOneActPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>One Act</asp:TableCell></asp:TableRow>"
        Dim strBaseball As String = ""
        Dim strBasketballBoys As String = ""
        Dim strBasketballGirls As String = ""
        Dim strFootball As String = ""
        Dim strFPSoftball As String = ""
        Dim strSPSoftball As String = ""
        Dim strVolleyball As String = ""
        Dim strVolleyballBoys As String = ""
        Dim strCheerleading As String = ""
        Dim strJazzBand As String = ""
        Dim strSpeech As String = ""
        Dim strOneAct As String = ""
        Dim intCountBaseball As Integer = 0
        Dim intCountBasketballBoys As Integer = 0
        Dim intCountBasketballGirls As Integer = 0
        Dim intCountFootball As Integer = 0
        Dim intCountFPSoftball As Integer = 0
        Dim intCountSPSoftball As Integer = 0
        Dim intCountVolleyball As Integer = 0
        Dim intCountVolleyballBoys As Integer = 0
        Dim intCountCheerleading As Integer = 0
        Dim intCountJazzBand As Integer = 0
        Dim intCountSpeech As Integer = 0
        Dim intCountOneAct As Integer = 0

        Dim strBaseballFallPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Fall Baseball</asp:TableCell></asp:TableRow>"
        Dim strBaseballFall As String = ""
        Dim intCountBaseballFall As Integer = 0

        Dim strCrossCountryBoysPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Boys Cross Country</asp:TableCell></asp:TableRow>"
        Dim strCrossCountryBoys As String = ""
        Dim intCountCrossCountryBoys As Integer = 0

        Dim strCrossCountryGirlsPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Girls Cross Country</asp:TableCell></asp:TableRow>"
        Dim strCrossCountryGirls As String = ""
        Dim intCountCrossCountryGirls As Integer = 0

        Dim strGolfBoysPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Boys Golf</asp:TableCell></asp:TableRow>"
        Dim strGolfBoys As String = ""
        Dim intCountGolfBoys As Integer = 0

        Dim strGolfGirlsPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Girls Golf</asp:TableCell></asp:TableRow>"
        Dim strGolfGirls As String = ""
        Dim intCountGolfGirls As Integer = 0

        Dim strSoccerBoysPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Boys Soccer</asp:TableCell></asp:TableRow>"
        Dim strSoccerBoys As String = ""
        Dim intCountSoccerBoys As Integer = 0

        Dim strSoccerGirlsPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Girls Soccer</asp:TableCell></asp:TableRow>"
        Dim strSoccerGirls As String = ""
        Dim intCountSoccerGirls As Integer = 0

        Dim strSwimmingBoysPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Boys Swimming</asp:TableCell></asp:TableRow>"
        Dim strSwimmingBoys As String = ""
        Dim intCountSwimmingBoys As Integer = 0

        Dim strSwimmingGirlsPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Girls Swimming</asp:TableCell></asp:TableRow>"
        Dim strSwimmingGirls As String = ""
        Dim intCountSwimmingGirls As Integer = 0

        Dim strTennisBoysPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Boys Tennis</asp:TableCell></asp:TableRow>"
        Dim strTennisBoys As String = ""
        Dim intCountTennisBoys As Integer = 0

        Dim strTennisGirlsPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Girls Tennis</asp:TableCell></asp:TableRow>"
        Dim strTennisGirls As String = ""
        Dim intCountTennisGirls As Integer = 0

        Dim strTrackBoysPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Boys Track</asp:TableCell></asp:TableRow>"
        Dim strTrackBoys As String = ""
        Dim intCountTrackBoys As Integer = 0

        Dim strTrackGirlsPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Girls Track</asp:TableCell></asp:TableRow>"
        Dim strTrackGirls As String = ""
        Dim intCountTrackGirls As Integer = 0

        Dim strWrestlingPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Wrestling</asp:TableCell></asp:TableRow>"
        Dim strWrestling As String = ""
        Dim intCountWrestling As Integer = 0

        Dim strWrestlingDualPre As String = "<asp:TableRow CssClass='rowHeader'><asp:TableCell>Wrestling Dual</asp:TableCell></asp:TableRow>"
        Dim strWrestlingDual As String = ""
        Dim intCountWrestlingDual As Integer = 0


        Dim intMod As Integer = 100

        strSQL = "SELECT Id, strSportGenderKey, intYear, strSchool, idSchool, strClass, strResults FROM tblStateChampions "
        strSQL = strSQL & "WHERE (strSchool = '" & strSchool & "') AND strState = '" & strState & "' ORDER BY strSportGenderKey, intYear"

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
                            strBaseball = strBaseball & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountBaseball Mod intMod = 0 Then strBaseball = strBaseball & "<br>"
                        Case "BaseballFall"
                            intCountBaseballFall = intCountBaseballFall + 1
                            strBaseballFall = strBaseballFall & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountBaseballFall Mod intMod = 0 Then strBaseballFall = strBaseballFall & "<br>"
                        Case "BasketballBoys"
                            intCountBasketballBoys = intCountBasketballBoys + 1
                            strBasketballBoys = strBasketballBoys & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                        '''If intCountBasketballBoys Mod intMod = 0 Then strBasketballBoys = strBasketballBoys & "<br>"
                        Case "BasketballGirls"
                            intCountBasketballGirls = intCountBasketballGirls + 1
                            strBasketballGirls = strBasketballGirls & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountBasketballGirls Mod intMod = 0 Then strBasketballGirls = strBasketballGirls & "<br>"
                        Case "Cheerleading"
                            intCountCheerleading = intCountCheerleading + 1
                            strCheerleading = strCheerleading & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountCheerleading Mod intMod = 0 Then strCheerleading = strCheerleading & "<br>"
                        Case "CrossCountryBoys"
                            intCountCrossCountryBoys = intCountCrossCountryBoys + 1
                            strCrossCountryBoys = strCrossCountryBoys & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountCrossCountryBoys Mod intMod = 0 Then strCrossCountryBoys = strCrossCountryBoys & "<br>"
                        Case "CrossCountryGirls"
                            intCountCrossCountryGirls = intCountCrossCountryGirls + 1
                            strCrossCountryGirls = strCrossCountryGirls & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountCrossCountryGirls Mod intMod = 0 Then strCrossCountryGirls = strCrossCountryGirls & "<br>"
                        Case "Football"
                            intCountFootball = intCountFootball + 1
                            strFootball = strFootball & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountFootball Mod intMod = 0 Then strFootball = strFootball & "<br>"
                        Case "FPSoftball"
                            intCountFPSoftball = intCountFPSoftball + 1
                            strFPSoftball = strFPSoftball & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountFPSoftball Mod intMod = 0 Then strFPSoftball = strFPSoftball & "<br>"
                        Case "GolfBoys"
                            intCountGolfBoys = intCountGolfBoys + 1
                            strGolfBoys = strGolfBoys & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountGolfBoys Mod intMod = 0 Then strGolfBoys = strGolfBoys & "<br>"
                        Case "GolfGirls"
                            intCountGolfGirls = intCountGolfGirls + 1
                            strGolfGirls = strGolfGirls & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountGolfGirls Mod intMod = 0 Then strGolfGirls = strGolfGirls & "<br>"
                        Case "SPSoftball"
                            intCountSPSoftball = intCountSPSoftball + 1
                            strSPSoftball = strSPSoftball & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountSPSoftball Mod intMod = 0 Then strSPSoftball = strSPSoftball & "<br>"
                        Case "SoccerBoys"
                            intCountSoccerBoys = intCountSoccerBoys + 1
                            strSoccerBoys = strSoccerBoys & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountSoccerBoys Mod intMod = 0 Then strSoccerBoys = strSoccerBoys & "<br>"
                        Case "SoccerGirls"
                            intCountSoccerGirls = intCountSoccerGirls + 1
                            strSoccerGirls = strSoccerGirls & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountSoccerGirls Mod intMod = 0 Then strSoccerGirls = strSoccerGirls & "<br>"
                        Case "SwimmingBoys"
                            intCountSwimmingBoys = intCountSwimmingBoys + 1
                            strSwimmingBoys = strSwimmingBoys & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountSwimmingBoys Mod intMod = 0 Then strSwimmingBoys = strSwimmingBoys & "<br>"
                        Case "SwimmingGirls"
                            intCountSwimmingGirls = intCountSwimmingGirls + 1
                            strSwimmingGirls = strSwimmingGirls & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountSwimmingGirls Mod intMod = 0 Then strSwimmingGirls = strSwimmingGirls & "<br>"
                        Case "TennisBoys"
                            intCountTennisBoys = intCountTennisBoys + 1
                            strTennisBoys = strTennisBoys & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountTennisBoys Mod intMod = 0 Then strTennisBoys = strTennisBoys & "<br>"
                        Case "TennisGirls"
                            intCountTennisGirls = intCountTennisGirls + 1
                            strTennisGirls = strTennisGirls & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountTennisGirls Mod intMod = 0 Then strTennisGirls = strTennisGirls & "<br>"
                        Case "TrackBoys"
                            intCountTrackBoys = intCountTrackBoys + 1
                            strTrackBoys = strTrackBoys & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountTrackBoys Mod intMod = 0 Then strTrackBoys = strTrackBoys & "<br>"
                        Case "TrackGirls"
                            intCountTrackGirls = intCountTrackGirls + 1
                            strTrackGirls = strTrackGirls & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountTrackGirls Mod intMod = 0 Then strTrackGirls = strTrackGirls & "<br>"
                        Case "Volleyball"
                            intCountVolleyball = intCountVolleyball + 1
                            strVolleyball = strVolleyball & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountVolleyball Mod intMod = 0 Then strVolleyball = strVolleyball & "<br>"
                        Case "VolleyballBoys"
                            intCountVolleyballBoys = intCountVolleyballBoys + 1
                            strVolleyballBoys = strVolleyballBoys & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountVolleyballBoys Mod intMod = 0 Then strVolleyballBoys = strVolleyballBoys & "<br>"
                        Case "Wrestling"
                            intCountWrestling = intCountWrestling + 1
                            strWrestling = strWrestling & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountWrestling Mod intMod = 0 Then strWrestling = strWrestling & "<br>"
                        Case "WrestlingDual"
                            intCountWrestlingDual = intCountWrestlingDual + 1
                            strWrestlingDual = strWrestlingDual & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountWrestlingDual Mod intMod = 0 Then strWrestlingDual = strWrestlingDual & "<br>"
                        Case "JazzBand"
                            intCountJazzBand = intCountJazzBand + 1
                            strJazzBand = strJazzBand & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountJazzBand Mod intMod = 0 Then strJazzBand = strJazzBand & "<br>"
                        Case "OneAct"
                            intCountOneAct = intCountOneAct + 1
                            strOneAct = strOneAct & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountOneAct Mod intMod = 0 Then strOneAct = strOneAct & "<br>"
                        Case "SpeechDebate"
                            intCountSpeech = intCountSpeech + 1
                            strSpeech = strSpeech & "<a href='" & strHOMEURL & "?id=" & .Item("id") & "'>" & .Item("intYear") & "</a>&nbsp;"
                            If intCountSpeech Mod intMod = 0 Then strSpeech = strSpeech & "<br>"
                        Case Else
                    End Select

                End With
            Next
        End If

        ' Finish up...
        If strBaseball = "" Then
            'strBaseball = strBaseballPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strBaseball = strBaseballPre & "<asp:TableRow><asp:TableCell>" & strBaseball & "</asp:TableCell></asp:TableRow>"
        End If

        If strBaseballFall = "" Then
            'strBaseballFall = strBaseballFallPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strBaseballFall = strBaseballFallPre & "<asp:TableRow><asp:TableCell>" & strBaseballFall & "</asp:TableCell></asp:TableRow>"
        End If

        If strBasketballBoys = "" Then
            'strBasketballBoys = strBasketballBoysPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strBasketballBoys = strBasketballBoysPre & "<asp:TableRow><asp:TableCell>" & strBasketballBoys & "</asp:TableCell></asp:TableRow>"
        End If

        If strBasketballGirls = "" Then
            'strBasketballGirls = strBasketballGirlsPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strBasketballGirls = strBasketballGirlsPre & "<asp:TableRow><asp:TableCell>" & strBasketballGirls & "</asp:TableCell></asp:TableRow>"
        End If

        If strCheerleading = "" Then
            'strCheerleading = strCheerleadingPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strCheerleading = strCheerleadingPre & "<asp:TableRow><asp:TableCell>" & strCheerleading & "</asp:TableCell></asp:TableRow>"
        End If

        If strCrossCountryBoys = "" Then
            'strCrossCountryBoys = strCrossCountryBoysPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strCrossCountryBoys = strCrossCountryBoysPre & "<asp:TableRow><asp:TableCell>" & strCrossCountryBoys & "</asp:TableCell></asp:TableRow>"
        End If

        If strCrossCountryGirls = "" Then
            'strCrossCountryGirls = strCrossCountryGirlsPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strCrossCountryGirls = strCrossCountryGirlsPre & "<asp:TableRow><asp:TableCell>" & strCrossCountryGirls & "</asp:TableCell></asp:TableRow>"
        End If

        If strFootball = "" Then
            'strFootball = strFootballPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strFootball = strFootballPre & "<asp:TableRow><asp:TableCell>" & strFootball & "</asp:TableCell></asp:TableRow>"
        End If

        If strGolfBoys = "" Then
            'strGolfBoys = strGolfBoysPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strGolfBoys = strGolfBoysPre & "<asp:TableRow><asp:TableCell>" & strGolfBoys & "</asp:TableCell></asp:TableRow>"
        End If

        If strGolfGirls = "" Then
            'strGolfGirls = strGolfGirlsPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strGolfGirls = strGolfGirlsPre & "<asp:TableRow><asp:TableCell>" & strGolfGirls & "</asp:TableCell></asp:TableRow>"
        End If

        If strSoccerBoys = "" Then
            'strSoccerBoys = strSoccerBoysPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strSoccerBoys = strSoccerBoysPre & "<asp:TableRow><asp:TableCell>" & strSoccerBoys & "</asp:TableCell></asp:TableRow>"
        End If

        If strSoccerGirls = "" Then
            'strSoccerGirls = strSoccerGirlsPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strSoccerGirls = strSoccerGirlsPre & "<asp:TableRow><asp:TableCell>" & strSoccerGirls & "</asp:TableCell></asp:TableRow>"
        End If

        If strSwimmingBoys = "" Then
        Else
            strSwimmingBoys = strSwimmingBoysPre & "<asp:TableRow><asp:TableCell>" & strSwimmingBoys & "</asp:TableCell></asp:TableRow>"
        End If

        If strSwimmingGirls = "" Then
        Else
            strSwimmingGirls = strSwimmingGirlsPre & "<asp:TableRow><asp:TableCell>" & strSwimmingGirls & "</asp:TableCell></asp:TableRow>"
        End If

        If strSPSoftball = "" Then
            'strSPSoftball = strSPSoftballPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strSPSoftball = strSPSoftballPre & "<asp:TableRow><asp:TableCell>" & strSPSoftball & "</asp:TableCell></asp:TableRow>"
        End If

        If strFPSoftball = "" Then
            'strFPSoftball = strFPSoftballPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strFPSoftball = strFPSoftballPre & "<asp:TableRow><asp:TableCell>" & strFPSoftball & "</asp:TableCell></asp:TableRow>"
        End If

        If strTennisBoys = "" Then
            'strTennisBoys = strTennisBoysPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strTennisBoys = strTennisBoysPre & "<asp:TableRow><asp:TableCell>" & strTennisBoys & "</asp:TableCell></asp:TableRow>"
        End If

        If strTennisGirls = "" Then
            'strTennisGirls = strTennisGirlsPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strTennisGirls = strTennisGirlsPre & "<asp:TableRow><asp:TableCell>" & strTennisGirls & "</asp:TableCell></asp:TableRow>"
        End If

        If strTrackBoys = "" Then
            'strTrackBoys = strTrackBoysPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strTrackBoys = strTrackBoysPre & "<asp:TableRow><asp:TableCell>" & strTrackBoys & "</asp:TableCell></asp:TableRow>"
        End If

        If strTrackGirls = "" Then
            'strTrackGirls = strTrackGirlsPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strTrackGirls = strTrackGirlsPre & "<asp:TableRow><asp:TableCell>" & strTrackGirls & "</asp:TableCell></asp:TableRow>"
        End If

        If strVolleyball = "" Then
            'strVolleyball = strVolleyballPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strVolleyball = strVolleyballPre & "<asp:TableRow><asp:TableCell>" & strVolleyball & "</asp:TableCell></asp:TableRow>"
        End If

        ' 4/9/2014 added VolleyballBoys...
        If strVolleyballBoys = "" Then
            'strVolleyballBoys = strVolleyballBoysPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strVolleyballBoys = strVolleyballBoysPre & "<asp:TableRow><asp:TableCell>" & strVolleyballBoys & "</asp:TableCell></asp:TableRow>"
        End If

        If strWrestling = "" Then
            'strWrestling = strWrestlingPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strWrestling = strWrestlingPre & "<asp:TableRow><asp:TableCell>" & strWrestling & "</asp:TableCell></asp:TableRow>"
        End If

        If strWrestlingDual = "" Then
            'strWrestlingDual = strWrestlingDualPre & "<asp:TableRow><asp:TableCell><span style='font-weight:normal;'>None</span></asp:TableCell></asp:TableRow>"
        Else
            strWrestlingDual = strWrestlingDualPre & "<asp:TableRow><asp:TableCell>" & strWrestlingDual & "</asp:TableCell></asp:TableRow>"
        End If

        ' added 6/9/2016...
        If strJazzBand = "" Then
        Else
            strJazzBand = strJazzBandPre & "<asp:TableRow><asp:TableCell>" & strJazzBand & "</asp:TableCell></asp:TableRow>"
        End If

        ' added 6/9/2016...
        If strSpeech = "" Then
        Else
            strSpeech = strSpeechPre & "<asp:TableRow><asp:TableCell>" & strSpeech & "</asp:TableCell></asp:TableRow>"
        End If

        If strOneAct = "" Then
        Else
            strOneAct = strOneActPre & "<asp:TableRow><asp:TableCell>" & strOneAct & "</asp:TableCell></asp:TableRow>"
        End If

        strSchoolContent = "<asp:Table runat='server' ID='tblSchoolChampions' width='90%'>"
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
        strSchoolContent = strSchoolContent & strJazzBand
        strSchoolContent = strSchoolContent & strOneAct
        strSchoolContent = strSchoolContent & strSpeech
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
        strSchoolContent = strSchoolContent & strVolleyballBoys
        strSchoolContent = strSchoolContent & strWrestling
        strSchoolContent = strSchoolContent & strWrestlingDual
        strSchoolContent = strSchoolContent & "</asp:Table>"
        Return strSchoolContent

    End Function


End Class
