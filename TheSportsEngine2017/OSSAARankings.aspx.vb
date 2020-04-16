Imports Telerik.Web.UI

Public Class OSSAARankings
    Inherits RadAjaxPage
    Dim intValue As Long

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblOneColumnDetail0.Text = SqlHelper.ExecuteScalar(SqlHelper.SQLConnectionOSSAARankings, CommandType.Text, "SELECT COUNT(*) FROM ___tmpVolleyballStateTourneyRankings") & " Rankings"
        lblOneColumnDetail.Text = lblOneColumnDetail0.Text
    End Sub


End Class