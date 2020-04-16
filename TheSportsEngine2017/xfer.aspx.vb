Public Class xfer
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strPath As String = "http://www.iwasatthegame.com/data"
        Dim strURL As String = ""
        Dim strSource As String = ""
        Dim id As Long = 0

        id = Request.QueryString("id")
        strURL = Request.QueryString("url")

        If InStr(strURL, ".htm") > 0 Then
            Response.Redirect(strURL)
        Else
            Try
                strSource = Request.QueryString("src")
            Catch
                strSource = ""
            End Try
            Dim lngURL As Long = 0
            Try
                lngURL = CLng(strURL)
            Catch ex As Exception
                lngURL = 0
            End Try
            If lngURL > 0 Then
                ' Get the URL...
                Dim strSQL As String
                strSQL = "SELECT strURL FROM tblStateChampionsArticles WHERE Id = " & lngURL
                strURL = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                If Left(strURL, 1) = "/" Then
                    strURL = strPath & strURL
                End If
                Try
                    ' Log...
                    'If strSource = "" Then
                    '    strSQL = "INSERT INTO tblStateChampionsArticlesLog (articleID) VALUES (" & lngURL & ")"
                    'Else
                    '    strSQL = "INSERT INTO tblStateChampionsArticlesLog (articleID, strCaller) VALUES (" & lngURL & ", '" & strSource & "')"
                    'End If
                    'SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
                    '' Now Transfer...
                    Response.Redirect(strURL)
                Catch
                    ' Do nothing...
                End Try
            Else
                ' Try to open the URL...
                Response.Redirect(strURL)
            End If
        End If
    End Sub

End Class