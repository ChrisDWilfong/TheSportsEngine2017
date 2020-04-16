Imports Telerik.Web.UI

Public Class BKGCareerScoringM
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("globalUser") = "" Then
        Else
            SqlDataSource1.SelectCommand = "SELECT TOP 30 CAST(intPoints AS varchar(10)) + ' - ' + strPlayer + ' (' + strSchool + ' ' + CAST(intGradYear AS varchar(10)) + ') ' + CASE WHEN strNotes IS NULL THEN '' ELSE '<br>' + strNotes END AS strDisplay, * FROM tblBasketballAllTimeScoring WHERE strGender = 'Girls' AND strType = 'CAREER' AND strState = @state ORDER BY intPoints DESC"
        End If

        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "HIGH SCHOOL ALL-TIME Career Scoring")
        lblOneColumnDetail.Text = "GIRLS 5-on-5 BASKETBALL"
        lblOneColumnHeader0.Text = lblOneColumnHeader0.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("BASKETBALLGIRLS", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        If (TypeOf e.Item Is GridDataItem AndAlso e.Item.OwnerTableView.DataSourceID = "SqlDataSource1") Then
            Dim lbl As Label = CType(e.Item.FindControl("numberLabel"), Label)
            lbl.Text = (e.Item.ItemIndex + 1).ToString
        End If
    End Sub
End Class