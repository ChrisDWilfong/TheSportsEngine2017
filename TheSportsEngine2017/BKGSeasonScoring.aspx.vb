Imports Telerik.Web.UI

Public Class BKGSeasonScoring
    Inherits RadAjaxPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("globalState") = "OK"
        Session("globalYear") = 2017
        lblOneColumnHeader.Text = clsStateChampions.GetPageHeader(Session("globalState"), "<strong>HIGH SCHOOL " & Session("globalYear") & " SEASON Scoring</strong>")
        lblOneColumnHeader0.Text = lblOneColumnHeader.Text
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