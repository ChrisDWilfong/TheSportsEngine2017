Imports Telerik.Web.UI

Public Class BKBCoachingRecords
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        lblOneColumnHeader.Text = "<strong>ACTIVE OKLAHOMA HIGH SCHOOL ALL-TIME BOYS COACHING WINS</strong>"
        lblOneColumnDetail.Text = "TOP 100 BOYS BASKETBALL<br>(still compiling this list as the coaches give us their info)"
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
        lblOneColumnDetail0.Text = lblOneColumnDetail.Text
        Try
            clsLog.LogEvent("BKBOYSCOACHINGactive", Me.Page.AppRelativeVirtualPath.ToString, "", "", Request.UserHostAddress, Session("globalState"), Session("globalUser"), Request.UserAgent)
        Catch
        End Try
    End Sub

    Private Sub RadGrid1_ItemDataBound(sender As Object, e As GridItemEventArgs) Handles RadGrid1.ItemDataBound
        If (TypeOf e.Item Is GridDataItem AndAlso e.Item.OwnerTableView.DataSourceID = "SqlDataSource1") Then
            Dim lbl As Label = CType(e.Item.FindControl("numberLabel"), Label)
            lbl.Text = (e.Item.ItemIndex + 1).ToString & ") "
        End If
    End Sub
End Class