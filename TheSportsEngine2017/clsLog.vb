Public Class clsLog
    Shared Sub LogMobileEvent(strSchool As String, strGUID As String, strPage As String, strHostName As String, strIP As String, strType As String, strOtherInfo As String)
        Dim strSQL As String = ""

        Try
            strSQL = "INSERT INTO tblLogM (strSchool, strGUID, strPage, strUserAgent, strType, strOtherInfo, strIP) VALUES ("
            strSQL = strSQL & "'" & strSchool & "', '" & strGUID & "', '" & strPage & "', '" & strHostName & "', '" & strType & "', '" & strOtherInfo & "', '" & strIP & "')"
            SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        Catch
        End Try

    End Sub

    Shared Sub LogEvent(strType As String, strPage As String, strArgument1 As String, strArgument2 As String, strIP As String, strState As String, strUser As String, strUserAgent As String)
        Dim strSQL As String = ""
        Exit Sub
        Try
            strSQL = "INSERT INTO tblLogNew (strType, strEvent, strArgument1, strArgument2, strIP, strState, strUserAgent, strUser) VALUES ("
            strSQL = strSQL & "'" & strType & "', '" & strPage & "', '" & strArgument1 & "', '" & strArgument2 & "', '" & strIP & "', '" & strState & "', '" & strUserAgent & "', '" & strUser & "')"
            SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        Catch
        End Try

    End Sub


    Shared Sub LogEventNew(strType As String, strPage As String, strArgument1 As String, strArgument2 As String, strIP As String, strState As String, strUser As String, strUserAgent As String)
        Dim strSQL As String = ""

        Try
            strSQL = "INSERT INTO tblLogNew (strType, strEvent, strArgument1, strArgument2, strIP, strState, strUserAgent, strUser) VALUES ("
            strSQL = strSQL & "'" & strType & "', '" & strPage & "', '" & strArgument1 & "', '" & strArgument2 & "', '" & strIP & "', '" & strState & "', '" & strUserAgent & "', '" & strUser & "')"
            SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
        Catch
        End Try

    End Sub

End Class
