Public Class clsFunctions

    Shared Function VerifyString(strIn As String) As String
        Dim strOut As String = strIn

        If strOut Is Nothing Then
            strOut = ""
        Else

            strOut = strOut.Replace("'", "")
            strOut = strOut.Replace("DELETE", "")
            strOut = strOut.Replace("delete", "")
            strOut = strOut.Replace("UPDATE", "")
            strOut = strOut.Replace("update", "")
            strOut = strOut.Replace("SELECT", "")
            strOut = strOut.Replace("REPLACE", "")
            strOut = strOut.Replace("replace", "")
            strOut = strOut.Replace("INSERT", "")
            strOut = strOut.Replace("insert", "")
            strOut = strOut.Replace(".js", "")
            strOut = strOut.Replace(" UNION ", "")
            strOut = strOut.Replace(" CAST ", "")
            strOut = strOut.Replace(" cAsT ", "")
        End If
        Return strOut

    End Function

    Shared Function GetFacebook(id As Long) As String
        Dim strFacebook As String
        strFacebook = "<div class=" & Chr(34) & "fb-comments" & Chr(34) & " data-href="
        strFacebook = strFacebook & Chr(34) & "http://www.iwasatthegame.com/Default.aspx?id=" & id
        strFacebook = strFacebook & "&amp;year=1&amp;st=OK" & Chr(34) & " data-width=" & Chr(34) & "500" & Chr(34) & " data-num-posts=" & Chr(34) & "12" & Chr(34) & "></div>"
        '''strFacebook = "<div class='fb-comments' data-href='http://www.iwasatthegame.com' data-width='500' data-num-posts='12'></div>"
        Return strFacebook
    End Function
End Class
