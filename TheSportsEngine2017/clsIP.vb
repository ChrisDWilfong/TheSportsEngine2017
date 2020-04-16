Public Class clsIP

    Shared Function CheckIPAddress(strIP As String, strPage As String, strState As String) As String
        On Error Resume Next
        Dim strReturn As String = "OK"
        Dim strReturnBlocked As String = "BLOCKED"
        Dim ysnNewBlocks As Boolean = True
        Return strReturn

        Dim intTotalHits As Integer = 60
        Dim intBlockCount As Integer = 20
        Dim intBlockMinutes As Integer = 5
        Dim intTotalBlocks As Integer = 5
        Dim strTotalHitsCheck As String = "SELECT COUNT(Id) AS intCount FROM tblLogNew WHERE strIP = '" & strIP & "'"
        Dim strSQLCheck As String = "SELECT COUNT(Id) AS intCount FROM tblLogNew WHERE strEvent = '" & strPage & "' AND strIP = '" & strIP & "' AND DATEDIFF(minute, dtmStamp, GetDate()) <= " & intBlockMinutes
        Dim strSQLBlocked As String = "SELECT TOP 1 Id FROM tblIPBlock WHERE strIP = '" & strIP & "' AND strPage = '" & strPage & "' AND intActive = 1"
        Dim strSQLBlockedCount As String = "SELECT COUNT(Id) FROM tblIPBlock WHERE strIP = '" & strIP & "' AND intActive = 1"
        Dim strSQLNoBlock As String = "SELECT TOP 1 Id FROM tblIPBlockNo WHERE strIP = '" & strIP & "' AND intActive = 1"

        ' Block Russia!!!
        If Left(strIP, 2) = "5." Then
            strReturn = strReturnBlocked
            Return strReturn
        ElseIf strIP.StartsWith("220.243") Then     ' Block China!
            strReturn = strReturnBlocked
            Return strReturn
        ElseIf strIP = "69.49.102.221" Or strIP = "185.128.81.50" Then     ' SQL Injection... added 10/17/2018...
            strReturn = strReturnBlocked
            Return strReturn
        End If

        If strState <> "OK" Then
            strReturn = "OK"
            Return strReturn
        End If

        ' WORK - HOME - CELL...
        If SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQLNoBlock) > 0 Then
            strReturn = "OK"
        Else
            ' IS THE USER IN THE BLOCKED LIST FOR THAT PAGE ALREADY?
            If SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQLBlocked) > 0 Then
                SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, "INSERT INTO tblIPBlockTry (strIP, strPage) VALUES ('" & strIP & "', '" & strPage & "')")
                strReturn = strReturnBlocked
            Else
                ' HAS THE USER HIT THIS PAGE 15 TIMES IN THE PAST 5 MINUTES?
                If SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQLCheck) > intBlockCount Then
                    If SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, strTotalHitsCheck) >= intTotalHits Then
                        If ysnNewBlocks Then
                            ' Block them..
                            SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, "INSERT INTO tblIPBlock (strIP, strPage) VALUES ('" & strIP & "', '" & strPage & "')")
                            SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, "INSERT INTO tblIPBlockTry (strIP, strPage) VALUES ('" & strIP & "', '" & "SHOULDBLOCK" & strPage & "')")
                            strReturn = strReturnBlocked
                        Else
                            strReturn = "OK"
                        End If
                    Else
                        strReturn = "OK"
                    End If
                    ' HAS THE USER BEEN BLOCK ON 3 PAGES?
                ElseIf SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQLBlockedCount) >= intTotalBlocks Then
                    If SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, strTotalHitsCheck) >= intTotalHits Then
                        SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, "INSERT INTO tblIPBlockTry (strIP, strPage) VALUES ('" & strIP & "', '" & strPage & "')")
                        If ysnNewBlocks Then
                            strReturn = strReturnBlocked
                        Else
                            strReturn = "OK"
                        End If
                    Else
                        strReturn = "OK"
                    End If
                Else
                    strReturn = "OK"
                End If
            End If
        End If

        If strIP.StartsWith("220.181.108.") Then            ' China...
            strReturn = "BLOCKED"
        ElseIf strIP.StartsWith("166.137.136.") Then        ' China...
            strReturn = "BLOCKED"
        End If

        'If strReturn = "BLOCKED" Then
        '    If strIP = "76.183.200.239" Then

        '    Else
        '        strReturn = "NOTBLOCKED"  ' Let's not block anyone right now... 8/1/2018...
        '    End If
        'End If

        Return strReturn
    End Function

End Class
