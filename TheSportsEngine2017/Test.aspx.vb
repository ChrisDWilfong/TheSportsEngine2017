Imports Telerik.Web.UI
Public Class Test
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strURL As String = sender.Request.Url.ToString
        'lblMessage.Text = strURL.ToUpper
    End Sub

    'Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    '    Dim wc As New System.Net.WebClient()
    '    Dim data As Stream = wc.OpenRead(url)
    '    Dim str As String
    '    Using sr As New StreamReader(data)
    '        str = sr.ReadToEnd()
    '        data.Close()
    '    End Using
    'End Sub

    'Private Sub cmdConvert_Click(sender As Object, e As EventArgs) Handles cmdConvert.Click
    '    Dim ds As DataSet
    '    Dim strSQL As String = "SELECT * FROM tblSchoolInfo WHERE strMascot Is Null ORDER BY strSchoolName"
    '    Dim x As Integer = 0
    '    Dim strMascot As String = ""

    '    ds = SqlHelper.ExecuteDataset(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)

    '    For x = 0 To ds.Tables(0).Rows.Count - 1
    '        Try
    '            strSQL = "SELECT SchoolMascot FROM tblSchool WHERE SchoolName = '" & ds.Tables(0).Rows(x).Item("strSchoolName") & "'"
    '            strMascot = ""
    '            strMascot = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL)
    '            If strMascot = "" Then
    '            Else
    '                strSQL = "UPDATE tblSchoolInfo SET strMascot = '" & strMascot & "' WHERE strSchoolName = '" & ds.Tables(0).Rows(x).Item("strSchoolName") & "'"
    '                SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionIWATG, CommandType.Text, strSQL)
    '            End If
    '        Catch
    '        End Try
    '    Next
    'End Sub
End Class