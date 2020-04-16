Public Class Post
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub cmdPostScores_Click(sender As Object, e As EventArgs) Handles cmdPostScores.Click
        Dim strSQL As String
        If Request.QueryString("id") = "143" Then
            strSQL = "UPDATE tblSchedules SET TotalScoreShow = TotalScore, oTotalScoreShow = oTotalScore WHERE intYear = 19 AND strType Like 'TOSSAA%'"
            SqlHelper.ExecuteNonQuery(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, strSQL)
            lblMessage.Text = "Processed."
        Else
            lblMessage.Text = "Denied"
        End If
    End Sub
End Class